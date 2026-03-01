import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_active_trusted_key_group.dart';
import 'multitenant_distribution_args.dart';
import 'multitenant_distribution_cache_behavior.dart';
import 'multitenant_distribution_custom_error_response.dart';
import 'multitenant_distribution_default_cache_behavior.dart';
import 'multitenant_distribution_origin.dart';
import 'multitenant_distribution_origin_group.dart';
import 'multitenant_distribution_restrictions.dart';
import 'multitenant_distribution_tenant_config.dart';
import 'multitenant_distribution_timeouts.dart';
import 'multitenant_distribution_viewer_certificate.dart';

/// Creates an Amazon CloudFront multi-tenant distribution.
///
/// Multi-tenant distributions are a specialized type of CloudFront distribution designed for multi-tenant applications. They have specific limitations and requirements compared to standard CloudFront distributions.
///
/// For information about CloudFront multi-tenant distributions, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/).
///
/// > **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the `retain_on_delete` flag.
///
/// ## Multi-tenant Distribution Limitations
///
/// Multi-tenant distributions have the following limitations compared to standard CloudFront distributions:
///
/// - **Connection Mode**: Automatically set to `tenant-only` and cannot be modified
/// - **Cache Policies**: Must use cache policies instead of legacy TTL settings
/// - **Trusted Key Groups**: Must use trusted key groups instead of trusted signers
/// - **WAF Integration**: Only supports WAF v2 web ACLs
/// - **Certificate Management**: Must use ACM certificates (IAM certificates not supported)
///
/// ### Unsupported Attributes
///
/// The following attributes that are available in standard CloudFront distributions are **not supported** for multi-tenant distributions:
///
/// - `active_trusted_signers` - Use `active_trusted_key_groups` instead
/// - `alias_icp_recordals` - Managed by connection groups
/// - `aliases` - Managed by connection groups
/// - `anycast_ip_list_id` - Use connection groups instead
/// - `continuous_deployment_policy_id`
/// - `forwarded_values` in cache behaviors - Deprecated, use cache policies instead
/// - `is_ipv6_enabled` - Managed by connection groups
/// - `price_class` - Managed by connection groups
/// - `smooth_streaming` in cache behaviors
/// - `staging` mode
/// - `trusted_signers` in cache behaviors - Use `trusted_key_groups` instead
/// - Cache behavior TTL settings (`default_ttl`, `max_ttl`, `min_ttl`) - Use cache policies instead
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.MultitenantDistribution("example", {
///     comment: "Multi-tenant distribution for my application",
///     enabled: true,
///     origins: [{
///         domainName: "example.com",
///         id: "example-origin",
///         customOriginConfigs: [{
///             httpPort: 80,
///             httpsPort: 443,
///             originProtocolPolicy: "https-only",
///             originSslProtocols: ["TLSv1.2"],
///         }],
///     }],
///     defaultCacheBehavior: {
///         targetOriginId: "example-origin",
///         viewerProtocolPolicy: "redirect-to-https",
///         cachePolicyId: exampleAwsCloudfrontCachePolicy.id,
///         allowedMethods: {
///             items: [
///                 "DELETE",
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             cachedMethods: [
///                 "GET",
///                 "HEAD",
///             ],
///         },
///     },
///     restrictions: {
///         geoRestriction: {
///             restrictionType: "none",
///         },
///     },
///     viewerCertificate: {
///         acmCertificateArn: exampleAwsAcmCertificate.arn,
///         sslSupportMethod: "sni-only",
///     },
///     tenantConfig: {
///         parameterDefinitions: [{
///             name: "origin_domain",
///             definitions: [{
///                 stringSchemas: [{
///                     required: true,
///                     comment: "Origin domain parameter for tenants",
///                 }],
///             }],
///         }],
///     },
///     tags: {
///         Environment: "production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.MultitenantDistribution("example",
///     comment="Multi-tenant distribution for my application",
///     enabled=True,
///     origins=[{
///         "domain_name": "example.com",
///         "id": "example-origin",
///         "custom_origin_configs": [{
///             "http_port": 80,
///             "https_port": 443,
///             "origin_protocol_policy": "https-only",
///             "origin_ssl_protocols": ["TLSv1.2"],
///         }],
///     }],
///     default_cache_behavior={
///         "target_origin_id": "example-origin",
///         "viewer_protocol_policy": "redirect-to-https",
///         "cache_policy_id": example_aws_cloudfront_cache_policy["id"],
///         "allowed_methods": {
///             "items": [
///                 "DELETE",
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             ],
///             "cached_methods": [
///                 "GET",
///                 "HEAD",
///             ],
///         },
///     },
///     restrictions={
///         "geo_restriction": {
///             "restriction_type": "none",
///         },
///     },
///     viewer_certificate={
///         "acm_certificate_arn": example_aws_acm_certificate["arn"],
///         "ssl_support_method": "sni-only",
///     },
///     tenant_config={
///         "parameter_definitions": [{
///             "name": "origin_domain",
///             "definitions": [{
///                 "string_schemas": [{
///                     "required": True,
///                     "comment": "Origin domain parameter for tenants",
///                 }],
///             }],
///         }],
///     },
///     tags={
///         "Environment": "production",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.MultitenantDistribution("example", new()
///     {
///         Comment = "Multi-tenant distribution for my application",
///         Enabled = true,
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.MultitenantDistributionOriginArgs
///             {
///                 DomainName = "example.com",
///                 Id = "example-origin",
///                 CustomOriginConfigs = new[]
///                 {
///                     new Aws.CloudFront.Inputs.MultitenantDistributionOriginCustomOriginConfigArgs
///                     {
///                         HttpPort = 80,
///                         HttpsPort = 443,
///                         OriginProtocolPolicy = "https-only",
///                         OriginSslProtocols = new[]
///                         {
///                             "TLSv1.2",
///                         },
///                     },
///                 },
///             },
///         },
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.MultitenantDistributionDefaultCacheBehaviorArgs
///         {
///             TargetOriginId = "example-origin",
///             ViewerProtocolPolicy = "redirect-to-https",
///             CachePolicyId = exampleAwsCloudfrontCachePolicy.Id,
///             AllowedMethods = new Aws.CloudFront.Inputs.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs
///             {
///                 Items = new[]
///                 {
///                     "DELETE",
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                     "PATCH",
///                     "POST",
///                     "PUT",
///                 },
///                 CachedMethods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                 },
///             },
///         },
///         Restrictions = new Aws.CloudFront.Inputs.MultitenantDistributionRestrictionsArgs
///         {
///             GeoRestriction = new Aws.CloudFront.Inputs.MultitenantDistributionRestrictionsGeoRestrictionArgs
///             {
///                 RestrictionType = "none",
///             },
///         },
///         ViewerCertificate = new Aws.CloudFront.Inputs.MultitenantDistributionViewerCertificateArgs
///         {
///             AcmCertificateArn = exampleAwsAcmCertificate.Arn,
///             SslSupportMethod = "sni-only",
///         },
///         TenantConfig = new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigArgs
///         {
///             ParameterDefinitions = new[]
///             {
///                 new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionArgs
///                 {
///                     Name = "origin_domain",
///                     Definitions = new[]
///                     {
///                         new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs
///                         {
///                             StringSchemas = new[]
///                             {
///                                 new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs
///                                 {
///                                     Required = true,
///                                     Comment = "Origin domain parameter for tenants",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudfront.NewMultitenantDistribution(ctx, "example", &cloudfront.MultitenantDistributionArgs{
/// 			Comment: pulumi.String("Multi-tenant distribution for my application"),
/// 			Enabled: pulumi.Bool(true),
/// 			Origins: cloudfront.MultitenantDistributionOriginArray{
/// 				&cloudfront.MultitenantDistributionOriginArgs{
/// 					DomainName: pulumi.String("example.com"),
/// 					Id:         pulumi.String("example-origin"),
/// 					CustomOriginConfigs: cloudfront.MultitenantDistributionOriginCustomOriginConfigArray{
/// 						&cloudfront.MultitenantDistributionOriginCustomOriginConfigArgs{
/// 							HttpPort:             pulumi.Int(80),
/// 							HttpsPort:            pulumi.Int(443),
/// 							OriginProtocolPolicy: pulumi.String("https-only"),
/// 							OriginSslProtocols: pulumi.StringArray{
/// 								pulumi.String("TLSv1.2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			DefaultCacheBehavior: &cloudfront.MultitenantDistributionDefaultCacheBehaviorArgs{
/// 				TargetOriginId:       pulumi.String("example-origin"),
/// 				ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// 				CachePolicyId:        pulumi.Any(exampleAwsCloudfrontCachePolicy.Id),
/// 				AllowedMethods: &cloudfront.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs{
/// 					Items: pulumi.StringArray{
/// 						pulumi.String("DELETE"),
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("OPTIONS"),
/// 						pulumi.String("PATCH"),
/// 						pulumi.String("POST"),
/// 						pulumi.String("PUT"),
/// 					},
/// 					CachedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 					},
/// 				},
/// 			},
/// 			Restrictions: &cloudfront.MultitenantDistributionRestrictionsArgs{
/// 				GeoRestriction: &cloudfront.MultitenantDistributionRestrictionsGeoRestrictionArgs{
/// 					RestrictionType: pulumi.String("none"),
/// 				},
/// 			},
/// 			ViewerCertificate: &cloudfront.MultitenantDistributionViewerCertificateArgs{
/// 				AcmCertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// 				SslSupportMethod:  pulumi.String("sni-only"),
/// 			},
/// 			TenantConfig: &cloudfront.MultitenantDistributionTenantConfigArgs{
/// 				ParameterDefinitions: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionArray{
/// 					&cloudfront.MultitenantDistributionTenantConfigParameterDefinitionArgs{
/// 						Name: pulumi.String("origin_domain"),
/// 						Definitions: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArray{
/// 							&cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs{
/// 								StringSchemas: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArray{
/// 									&cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs{
/// 										Required: pulumi.Bool(true),
/// 										Comment:  pulumi.String("Origin domain parameter for tenants"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudfront.MultitenantDistribution;
/// import com.pulumi.aws.cloudfront.MultitenantDistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionViewerCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionTenantConfigArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new MultitenantDistribution("example", MultitenantDistributionArgs.builder()
///             .comment("Multi-tenant distribution for my application")
///             .enabled(true)
///             .origins(MultitenantDistributionOriginArgs.builder()
///                 .domainName("example.com")
///                 .id("example-origin")
///                 .customOriginConfigs(MultitenantDistributionOriginCustomOriginConfigArgs.builder()
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .originProtocolPolicy("https-only")
///                     .originSslProtocols("TLSv1.2")
///                     .build())
///                 .build())
///             .defaultCacheBehavior(MultitenantDistributionDefaultCacheBehaviorArgs.builder()
///                 .targetOriginId("example-origin")
///                 .viewerProtocolPolicy("redirect-to-https")
///                 .cachePolicyId(exampleAwsCloudfrontCachePolicy.id())
///                 .allowedMethods(MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs.builder()
///                     .items(
///                         "DELETE",
///                         "GET",
///                         "HEAD",
///                         "OPTIONS",
///                         "PATCH",
///                         "POST",
///                         "PUT")
///                     .cachedMethods(
///                         "GET",
///                         "HEAD")
///                     .build())
///                 .build())
///             .restrictions(MultitenantDistributionRestrictionsArgs.builder()
///                 .geoRestriction(MultitenantDistributionRestrictionsGeoRestrictionArgs.builder()
///                     .restrictionType("none")
///                     .build())
///                 .build())
///             .viewerCertificate(MultitenantDistributionViewerCertificateArgs.builder()
///                 .acmCertificateArn(exampleAwsAcmCertificate.arn())
///                 .sslSupportMethod("sni-only")
///                 .build())
///             .tenantConfig(MultitenantDistributionTenantConfigArgs.builder()
///                 .parameterDefinitions(MultitenantDistributionTenantConfigParameterDefinitionArgs.builder()
///                     .name("origin_domain")
///                     .definitions(MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs.builder()
///                         .stringSchemas(MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs.builder()
///                             .required(true)
///                             .comment("Origin domain parameter for tenants")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:MultitenantDistribution
///     properties:
///       comment: Multi-tenant distribution for my application
///       enabled: true
///       origins:
///         - domainName: example.com
///           id: example-origin
///           customOriginConfigs:
///             - httpPort: 80
///               httpsPort: 443
///               originProtocolPolicy: https-only
///               originSslProtocols:
///                 - TLSv1.2
///       defaultCacheBehavior:
///         targetOriginId: example-origin
///         viewerProtocolPolicy: redirect-to-https
///         cachePolicyId: ${exampleAwsCloudfrontCachePolicy.id}
///         allowedMethods:
///           items:
///             - DELETE
///             - GET
///             - HEAD
///             - OPTIONS
///             - PATCH
///             - POST
///             - PUT
///           cachedMethods:
///             - GET
///             - HEAD
///       restrictions:
///         geoRestriction:
///           restrictionType: none
///       viewerCertificate:
///         acmCertificateArn: ${exampleAwsAcmCertificate.arn}
///         sslSupportMethod: sni-only
///       tenantConfig:
///         parameterDefinitions:
///           - name: origin_domain
///             definitions:
///               - stringSchemas:
///                   - required: true
///                     comment: Origin domain parameter for tenants
///       tags:
///         Environment: production
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Multi-tenant Distributions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/multitenantDistribution:MultitenantDistribution distribution E74FTE3AEXAMPLE
/// ```
class MultitenantDistribution extends pulumi.CustomResource {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  late final pulumi.Output<List<MultitenantDistributionActiveTrustedKeyGroup>?> activeTrustedKeyGroups;
  /// ARN for the distribution.
  late final pulumi.Output<String> arn;
  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  late final pulumi.Output<List<MultitenantDistributionCacheBehavior>?> cacheBehaviors;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final pulumi.Output<String> callerReference;
  /// Any comments you want to include about the distribution.
  late final pulumi.Output<String> comment;
  /// Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  late final pulumi.Output<String> connectionMode;
  /// One or more custom error response elements. See Custom Error Response below.
  late final pulumi.Output<List<MultitenantDistributionCustomErrorResponse>?> customErrorResponses;
  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  late final pulumi.Output<MultitenantDistributionDefaultCacheBehavior> defaultCacheBehavior;
  /// Object that you want CloudFront to return when an end user requests the root URL.
  late final pulumi.Output<String?> defaultRootObject;
  /// Domain name corresponding to the distribution.
  late final pulumi.Output<String> domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  late final pulumi.Output<bool> enabled;
  /// Current version of the distribution's information.
  late final pulumi.Output<String> etag;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3`, and `http3`. Default: `http2`.
  late final pulumi.Output<String> httpVersion;
  /// Number of invalidation batches currently in progress.
  late final pulumi.Output<int> inProgressInvalidationBatches;
  /// Date and time the distribution was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// One or more origin_group for this distribution (multiples allowed). See Origin Group below.
  late final pulumi.Output<List<MultitenantDistributionOriginGroup>?> originGroups;
  /// One or more origins for this distribution (multiples allowed). See Origin below.
  late final pulumi.Output<List<MultitenantDistributionOrigin>?> origins;
  /// Restriction configuration for this distribution. See Restrictions below.
  late final pulumi.Output<MultitenantDistributionRestrictions?> restrictions;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  late final pulumi.Output<MultitenantDistributionTenantConfig> tenantConfig;
  late final pulumi.Output<MultitenantDistributionTimeouts?> timeouts;
  /// SSL configuration for this distribution. See Viewer Certificate below.
  late final pulumi.Output<MultitenantDistributionViewerCertificate> viewerCertificate;
  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  late final pulumi.Output<String?> webAclId;

  /// Creates a new [MultitenantDistribution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MultitenantDistribution]. {@macro pulumi_cloudfront_multitenant_distribution_multitenant_distribution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MultitenantDistribution(
    String name, {
    MultitenantDistributionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/multitenantDistribution:MultitenantDistribution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activeTrustedKeyGroups = registerOutput<List<MultitenantDistributionActiveTrustedKeyGroup>?>('activeTrustedKeyGroups');
    this.arn = registerOutput<String>('arn');
    this.cacheBehaviors = registerOutput<List<MultitenantDistributionCacheBehavior>?>('cacheBehaviors');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String>('comment');
    this.connectionMode = registerOutput<String>('connectionMode');
    this.customErrorResponses = registerOutput<List<MultitenantDistributionCustomErrorResponse>?>('customErrorResponses');
    this.defaultCacheBehavior = registerOutput<MultitenantDistributionDefaultCacheBehavior>('defaultCacheBehavior');
    this.defaultRootObject = registerOutput<String?>('defaultRootObject');
    this.domainName = registerOutput<String>('domainName');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.httpVersion = registerOutput<String>('httpVersion');
    this.inProgressInvalidationBatches = registerOutput<int>('inProgressInvalidationBatches');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.originGroups = registerOutput<List<MultitenantDistributionOriginGroup>?>('originGroups');
    this.origins = registerOutput<List<MultitenantDistributionOrigin>?>('origins');
    this.restrictions = registerOutput<MultitenantDistributionRestrictions?>('restrictions');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tenantConfig = registerOutput<MultitenantDistributionTenantConfig>('tenantConfig');
    this.timeouts = registerOutput<MultitenantDistributionTimeouts?>('timeouts');
    this.viewerCertificate = registerOutput<MultitenantDistributionViewerCertificate>('viewerCertificate');
    this.webAclId = registerOutput<String?>('webAclId');
  }
}
