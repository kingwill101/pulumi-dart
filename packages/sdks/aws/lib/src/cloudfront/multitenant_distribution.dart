import 'package:pulumi/pulumi.dart' as pulumi;
import 'multitenant_distribution_active_trusted_key_group.dart';
import 'multitenant_distribution_args.dart';
import 'multitenant_distribution_cache_behavior.dart';
import 'multitenant_distribution_custom_error_response.dart';
import 'multitenant_distribution_default_cache_behavior.dart';
import 'multitenant_distribution_origin.dart';
import 'multitenant_distribution_origin_group.dart';
import 'multitenant_distribution_restrictions.dart';
import 'multitenant_distribution_state.dart';
import 'multitenant_distribution_tenant_config.dart';
import 'multitenant_distribution_timeouts.dart';
import 'multitenant_distribution_viewer_certificate.dart';

/// Creates an Amazon CloudFront multi-tenant distribution.
///
/// Multi-tenant distributions are a specialized type of CloudFront distribution designed for multi-tenant applications. They have specific limitations and requirements compared to standard CloudFront distributions.
///
/// For information about CloudFront multi-tenant distributions, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/).
///
/// ## Example Usage
///
/// ### Multi-tenant Distribution Limitations
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
/// - `activeTrustedSigners` - Use `activeTrustedKeyGroups` instead
/// - `aliasIcpRecordals` - Managed by connection groups
/// - `aliases` - Managed by connection groups
/// - `anycastIpListId` - Use connection groups instead
/// - `continuousDeploymentPolicyId`
/// - `forwardedValues` in cache behaviors - Deprecated, use cache policies instead
/// - `isIpv6Enabled` - Managed by connection groups
/// - `priceClass` - Managed by connection groups
/// - `smoothStreaming` in cache behaviors
/// - `staging` mode
/// - `trustedSigners` in cache behaviors - Use `trustedKeyGroups` instead
/// - Cache behavior TTL settings (`defaultTtl`, `maxTtl`, `minTtl`) - Use cache policies instead
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.MultitenantDistribution("example", {
///     defaultCacheBehavior: {
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
///         targetOriginId: "example-origin",
///         viewerProtocolPolicy: "redirect-to-https",
///         cachePolicyId: exampleAwsCloudfrontCachePolicy.id,
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
///             definitions: [{
///                 stringSchemas: [{
///                     required: true,
///                     comment: "Origin domain parameter for tenants",
///                 }],
///             }],
///             name: "origin_domain",
///         }],
///     },
///     origins: [{
///         customOriginConfigs: [{
///             httpPort: 80,
///             httpsPort: 443,
///             originProtocolPolicy: "https-only",
///             originSslProtocols: ["TLSv1.2"],
///         }],
///         domainName: "example.com",
///         id: "example-origin",
///     }],
///     comment: "Multi-tenant distribution for my application",
///     enabled: true,
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
///     default_cache_behavior={
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
///         "target_origin_id": "example-origin",
///         "viewer_protocol_policy": "redirect-to-https",
///         "cache_policy_id": example_aws_cloudfront_cache_policy["id"],
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
///             "definitions": [{
///                 "string_schemas": [{
///                     "required": True,
///                     "comment": "Origin domain parameter for tenants",
///                 }],
///             }],
///             "name": "origin_domain",
///         }],
///     },
///     origins=[{
///         "custom_origin_configs": [{
///             "http_port": 80,
///             "https_port": 443,
///             "origin_protocol_policy": "https-only",
///             "origin_ssl_protocols": ["TLSv1.2"],
///         }],
///         "domain_name": "example.com",
///         "id": "example-origin",
///     }],
///     comment="Multi-tenant distribution for my application",
///     enabled=True,
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
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.MultitenantDistributionDefaultCacheBehaviorArgs
///         {
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
///             TargetOriginId = "example-origin",
///             ViewerProtocolPolicy = "redirect-to-https",
///             CachePolicyId = exampleAwsCloudfrontCachePolicy.Id,
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
///                     Name = "origin_domain",
///                 },
///             },
///         },
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.MultitenantDistributionOriginArgs
///             {
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
///                 DomainName = "example.com",
///                 Id = "example-origin",
///             },
///         },
///         Comment = "Multi-tenant distribution for my application",
///         Enabled = true,
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
/// 			DefaultCacheBehavior: &cloudfront.MultitenantDistributionDefaultCacheBehaviorArgs{
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
/// 				TargetOriginId:       pulumi.String("example-origin"),
/// 				ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// 				CachePolicyId:        pulumi.Any(exampleAwsCloudfrontCachePolicy.Id),
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
/// 						Name: pulumi.String("origin_domain"),
/// 					},
/// 				},
/// 			},
/// 			Origins: cloudfront.MultitenantDistributionOriginArray{
/// 				&cloudfront.MultitenantDistributionOriginArgs{
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
/// 					DomainName: pulumi.String("example.com"),
/// 					Id:         pulumi.String("example-origin"),
/// 				},
/// 			},
/// 			Comment: pulumi.String("Multi-tenant distribution for my application"),
/// 			Enabled: pulumi.Bool(true),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudfront_multitenantdistribution" "example" {
///   default_cache_behavior = {
///     allowed_methods = {
///       items          = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
///       cached_methods = ["GET", "HEAD"]
///     }
///     target_origin_id       = "example-origin"
///     viewer_protocol_policy = "redirect-to-https"
///     cache_policy_id        = exampleAwsCloudfrontCachePolicy.id
///   }
///   restrictions = {
///     geo_restriction = {
///       restriction_type = "none"
///     }
///   }
///   viewer_certificate = {
///     acm_certificate_arn = exampleAwsAcmCertificate.arn
///     ssl_support_method  = "sni-only"
///   }
///   tenant_config = {
///     parameter_definitions = [{
///       "definitions" = [{
///         "stringSchemas" = [{
///           "required" = true
///           "comment"  = "Origin domain parameter for tenants"
///         }]
///       }]
///       "name" = "origin_domain"
///     }]
///   }
///   origins {
///     custom_origin_configs {
///       http_port              = 80
///       https_port             = 443
///       origin_protocol_policy = "https-only"
///       origin_ssl_protocols   = ["TLSv1.2"]
///     }
///     domain_name = "example.com"
///     id          = "example-origin"
///   }
///   comment = "Multi-tenant distribution for my application"
///   enabled = true
///   tags = {
///     "Environment" = "production"
///   }
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
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionViewerCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionTenantConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionTenantConfigParameterDefinitionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.MultitenantDistributionOriginCustomOriginConfigArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .defaultCacheBehavior(MultitenantDistributionDefaultCacheBehaviorArgs.builder()
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
///                 .targetOriginId("example-origin")
///                 .viewerProtocolPolicy("redirect-to-https")
///                 .cachePolicyId(exampleAwsCloudfrontCachePolicy.id())
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
///                     .definitions(MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs.builder()
///                         .stringSchemas(MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs.builder()
///                             .required(true)
///                             .comment("Origin domain parameter for tenants")
///                             .build())
///                         .build())
///                     .name("origin_domain")
///                     .build())
///                 .build())
///             .origins(MultitenantDistributionOriginArgs.builder()
///                 .customOriginConfigs(MultitenantDistributionOriginCustomOriginConfigArgs.builder()
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .originProtocolPolicy("https-only")
///                     .originSslProtocols("TLSv1.2")
///                     .build())
///                 .domainName("example.com")
///                 .id("example-origin")
///                 .build())
///             .comment("Multi-tenant distribution for my application")
///             .enabled(true)
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
///       defaultCacheBehavior:
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
///         targetOriginId: example-origin
///         viewerProtocolPolicy: redirect-to-https
///         cachePolicyId: ${exampleAwsCloudfrontCachePolicy.id}
///       restrictions:
///         geoRestriction:
///           restrictionType: none
///       viewerCertificate:
///         acmCertificateArn: ${exampleAwsAcmCertificate.arn}
///         sslSupportMethod: sni-only
///       tenantConfig:
///         parameterDefinitions:
///           - definitions:
///               - stringSchemas:
///                   - required: true
///                     comment: Origin domain parameter for tenants
///             name: origin_domain
///       origins:
///         - customOriginConfigs:
///             - httpPort: 80
///               httpsPort: 443
///               originProtocolPolicy: https-only
///               originSslProtocols:
///                 - TLSv1.2
///           domainName: example.com
///           id: example-origin
///       comment: Multi-tenant distribution for my application
///       enabled: true
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
  /// One or more originGroup for this distribution (multiples allowed). See Origin Group below.
  late final pulumi.Output<List<MultitenantDistributionOriginGroup>?> originGroups;
  /// One or more origins for this distribution (multiples allowed). See Origin below.
  late final pulumi.Output<List<MultitenantDistributionOrigin>?> origins;
  /// Restriction configuration for this distribution. See Restrictions below.
  late final pulumi.Output<MultitenantDistributionRestrictions?> restrictions;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    activeTrustedKeyGroups = registerOutput<List<MultitenantDistributionActiveTrustedKeyGroup>?>('activeTrustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(guardedValue, (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    cacheBehaviors = registerOutput<List<MultitenantDistributionCacheBehavior>?>('cacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(guardedValue, (value) => MultitenantDistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String>('comment');
    connectionMode = registerOutput<String>('connectionMode');
    customErrorResponses = registerOutput<List<MultitenantDistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(guardedValue, (value) => MultitenantDistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<MultitenantDistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    httpVersion = registerOutput<String>('httpVersion');
    inProgressInvalidationBatches = registerOutput<int>('inProgressInvalidationBatches');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    originGroups = registerOutput<List<MultitenantDistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(guardedValue, (value) => MultitenantDistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<MultitenantDistributionOrigin>?>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOrigin>(guardedValue, (value) => MultitenantDistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    restrictions = registerOutput<MultitenantDistributionRestrictions?>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantConfig = registerOutput<MultitenantDistributionTenantConfig>('tenantConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<MultitenantDistributionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerCertificate = registerOutput<MultitenantDistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclId = registerOutput<String?>('webAclId');
  }

  /// Gets an existing [MultitenantDistribution] resource's state with the given [name] and [id].
  static MultitenantDistribution get(
    String name,
    pulumi.Input<String> id, {
    MultitenantDistributionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MultitenantDistribution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MultitenantDistribution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/multitenantDistribution:MultitenantDistribution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    activeTrustedKeyGroups = registerOutput<List<MultitenantDistributionActiveTrustedKeyGroup>?>('activeTrustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(guardedValue, (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    cacheBehaviors = registerOutput<List<MultitenantDistributionCacheBehavior>?>('cacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(guardedValue, (value) => MultitenantDistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String>('comment');
    connectionMode = registerOutput<String>('connectionMode');
    customErrorResponses = registerOutput<List<MultitenantDistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(guardedValue, (value) => MultitenantDistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<MultitenantDistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    httpVersion = registerOutput<String>('httpVersion');
    inProgressInvalidationBatches = registerOutput<int>('inProgressInvalidationBatches');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    originGroups = registerOutput<List<MultitenantDistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(guardedValue, (value) => MultitenantDistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<MultitenantDistributionOrigin>?>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOrigin>(guardedValue, (value) => MultitenantDistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    restrictions = registerOutput<MultitenantDistributionRestrictions?>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantConfig = registerOutput<MultitenantDistributionTenantConfig>('tenantConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<MultitenantDistributionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerCertificate = registerOutput<MultitenantDistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclId = registerOutput<String?>('webAclId');
  }

  /// Creates a typed reference to an existing [MultitenantDistribution] resource.
  MultitenantDistribution.reference(String urn)
    : super(
        'aws:cloudfront/multitenantDistribution:MultitenantDistribution',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    activeTrustedKeyGroups = registerOutput<List<MultitenantDistributionActiveTrustedKeyGroup>?>('activeTrustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionActiveTrustedKeyGroup>(guardedValue, (value) => MultitenantDistributionActiveTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    arn = registerOutput<String>('arn');
    cacheBehaviors = registerOutput<List<MultitenantDistributionCacheBehavior>?>('cacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCacheBehavior>(guardedValue, (value) => MultitenantDistributionCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String>('comment');
    connectionMode = registerOutput<String>('connectionMode');
    customErrorResponses = registerOutput<List<MultitenantDistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionCustomErrorResponse>(guardedValue, (value) => MultitenantDistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<MultitenantDistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    httpVersion = registerOutput<String>('httpVersion');
    inProgressInvalidationBatches = registerOutput<int>('inProgressInvalidationBatches');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    originGroups = registerOutput<List<MultitenantDistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOriginGroup>(guardedValue, (value) => MultitenantDistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<MultitenantDistributionOrigin>?>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MultitenantDistributionOrigin>(guardedValue, (value) => MultitenantDistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    restrictions = registerOutput<MultitenantDistributionRestrictions?>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tenantConfig = registerOutput<MultitenantDistributionTenantConfig>('tenantConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTenantConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<MultitenantDistributionTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerCertificate = registerOutput<MultitenantDistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MultitenantDistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webAclId = registerOutput<String?>('webAclId');
  }
}
