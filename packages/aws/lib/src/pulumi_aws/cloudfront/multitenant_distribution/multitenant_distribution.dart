import 'package:pulumi/pulumi.dart';
import '../multitenant_distribution_active_trusted_key_group/multitenant_distribution_active_trusted_key_group.dart';
import '../multitenant_distribution_cache_behavior/multitenant_distribution_cache_behavior.dart';
import '../multitenant_distribution_custom_error_response/multitenant_distribution_custom_error_response.dart';
import '../multitenant_distribution_default_cache_behavior/multitenant_distribution_default_cache_behavior.dart';
import '../multitenant_distribution_origin/multitenant_distribution_origin.dart';
import '../multitenant_distribution_origin_group/multitenant_distribution_origin_group.dart';
import '../multitenant_distribution_restrictions/multitenant_distribution_restrictions.dart';
import '../multitenant_distribution_tenant_config/multitenant_distribution_tenant_config.dart';
import '../multitenant_distribution_timeouts/multitenant_distribution_timeouts.dart';
import '../multitenant_distribution_viewer_certificate/multitenant_distribution_viewer_certificate.dart';
import 'multitenant_distribution_args.dart';

/// Creates an Amazon CloudFront multi-tenant distribution.
///
/// Multi-tenant distributions are a specialized type of CloudFront distribution designed for multi-tenant applications. They have specific limitations and requirements compared to standard CloudFront distributions.
///
/// For information about CloudFront multi-tenant distributions, see the [Amazon CloudFront Developer Guide](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/).
///
/// > **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the <span pulumi-lang-nodejs="`retainOnDelete`" pulumi-lang-dotnet="`RetainOnDelete`" pulumi-lang-go="`retainOnDelete`" pulumi-lang-python="`retain_on_delete`" pulumi-lang-yaml="`retainOnDelete`" pulumi-lang-java="`retainOnDelete`">`retain_on_delete`</span> flag.
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
/// - <span pulumi-lang-nodejs="`activeTrustedSigners`" pulumi-lang-dotnet="`ActiveTrustedSigners`" pulumi-lang-go="`activeTrustedSigners`" pulumi-lang-python="`active_trusted_signers`" pulumi-lang-yaml="`activeTrustedSigners`" pulumi-lang-java="`activeTrustedSigners`">`active_trusted_signers`</span> - Use <span pulumi-lang-nodejs="`activeTrustedKeyGroups`" pulumi-lang-dotnet="`ActiveTrustedKeyGroups`" pulumi-lang-go="`activeTrustedKeyGroups`" pulumi-lang-python="`active_trusted_key_groups`" pulumi-lang-yaml="`activeTrustedKeyGroups`" pulumi-lang-java="`activeTrustedKeyGroups`">`active_trusted_key_groups`</span> instead
/// - <span pulumi-lang-nodejs="`aliasIcpRecordals`" pulumi-lang-dotnet="`AliasIcpRecordals`" pulumi-lang-go="`aliasIcpRecordals`" pulumi-lang-python="`alias_icp_recordals`" pulumi-lang-yaml="`aliasIcpRecordals`" pulumi-lang-java="`aliasIcpRecordals`">`alias_icp_recordals`</span> - Managed by connection groups
/// - <span pulumi-lang-nodejs="`aliases`" pulumi-lang-dotnet="`Aliases`" pulumi-lang-go="`aliases`" pulumi-lang-python="`aliases`" pulumi-lang-yaml="`aliases`" pulumi-lang-java="`aliases`">`aliases`</span> - Managed by connection groups
/// - <span pulumi-lang-nodejs="`anycastIpListId`" pulumi-lang-dotnet="`AnycastIpListId`" pulumi-lang-go="`anycastIpListId`" pulumi-lang-python="`anycast_ip_list_id`" pulumi-lang-yaml="`anycastIpListId`" pulumi-lang-java="`anycastIpListId`">`anycast_ip_list_id`</span> - Use connection groups instead
/// - <span pulumi-lang-nodejs="`continuousDeploymentPolicyId`" pulumi-lang-dotnet="`ContinuousDeploymentPolicyId`" pulumi-lang-go="`continuousDeploymentPolicyId`" pulumi-lang-python="`continuous_deployment_policy_id`" pulumi-lang-yaml="`continuousDeploymentPolicyId`" pulumi-lang-java="`continuousDeploymentPolicyId`">`continuous_deployment_policy_id`</span>
/// - <span pulumi-lang-nodejs="`forwardedValues`" pulumi-lang-dotnet="`ForwardedValues`" pulumi-lang-go="`forwardedValues`" pulumi-lang-python="`forwarded_values`" pulumi-lang-yaml="`forwardedValues`" pulumi-lang-java="`forwardedValues`">`forwarded_values`</span> in cache behaviors - Deprecated, use cache policies instead
/// - <span pulumi-lang-nodejs="`isIpv6Enabled`" pulumi-lang-dotnet="`IsIpv6Enabled`" pulumi-lang-go="`isIpv6Enabled`" pulumi-lang-python="`is_ipv6_enabled`" pulumi-lang-yaml="`isIpv6Enabled`" pulumi-lang-java="`isIpv6Enabled`">`is_ipv6_enabled`</span> - Managed by connection groups
/// - <span pulumi-lang-nodejs="`priceClass`" pulumi-lang-dotnet="`PriceClass`" pulumi-lang-go="`priceClass`" pulumi-lang-python="`price_class`" pulumi-lang-yaml="`priceClass`" pulumi-lang-java="`priceClass`">`price_class`</span> - Managed by connection groups
/// - <span pulumi-lang-nodejs="`smoothStreaming`" pulumi-lang-dotnet="`SmoothStreaming`" pulumi-lang-go="`smoothStreaming`" pulumi-lang-python="`smooth_streaming`" pulumi-lang-yaml="`smoothStreaming`" pulumi-lang-java="`smoothStreaming`">`smooth_streaming`</span> in cache behaviors
/// - <span pulumi-lang-nodejs="`staging`" pulumi-lang-dotnet="`Staging`" pulumi-lang-go="`staging`" pulumi-lang-python="`staging`" pulumi-lang-yaml="`staging`" pulumi-lang-java="`staging`">`staging`</span> mode
/// - <span pulumi-lang-nodejs="`trustedSigners`" pulumi-lang-dotnet="`TrustedSigners`" pulumi-lang-go="`trustedSigners`" pulumi-lang-python="`trusted_signers`" pulumi-lang-yaml="`trustedSigners`" pulumi-lang-java="`trustedSigners`">`trusted_signers`</span> in cache behaviors - Use <span pulumi-lang-nodejs="`trustedKeyGroups`" pulumi-lang-dotnet="`TrustedKeyGroups`" pulumi-lang-go="`trustedKeyGroups`" pulumi-lang-python="`trusted_key_groups`" pulumi-lang-yaml="`trustedKeyGroups`" pulumi-lang-java="`trustedKeyGroups`">`trusted_key_groups`</span> instead
/// - Cache behavior TTL settings (<span pulumi-lang-nodejs="`defaultTtl`" pulumi-lang-dotnet="`DefaultTtl`" pulumi-lang-go="`defaultTtl`" pulumi-lang-python="`default_ttl`" pulumi-lang-yaml="`defaultTtl`" pulumi-lang-java="`defaultTtl`">`default_ttl`</span>, <span pulumi-lang-nodejs="`maxTtl`" pulumi-lang-dotnet="`MaxTtl`" pulumi-lang-go="`maxTtl`" pulumi-lang-python="`max_ttl`" pulumi-lang-yaml="`maxTtl`" pulumi-lang-java="`maxTtl`">`max_ttl`</span>, <span pulumi-lang-nodejs="`minTtl`" pulumi-lang-dotnet="`MinTtl`" pulumi-lang-go="`minTtl`" pulumi-lang-python="`min_ttl`" pulumi-lang-yaml="`minTtl`" pulumi-lang-java="`minTtl`">`min_ttl`</span>) - Use cache policies instead
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.MultitenantDistribution("example", {
/// comment: "Multi-tenant distribution for my application",
/// enabled: true,
/// origins: [{
/// domainName: "example.com",
/// id: "example-origin",
/// customOriginConfigs: [{
/// httpPort: 80,
/// httpsPort: 443,
/// originProtocolPolicy: "https-only",
/// originSslProtocols: ["TLSv1.2"],
/// }],
/// }],
/// defaultCacheBehavior: {
/// targetOriginId: "example-origin",
/// viewerProtocolPolicy: "redirect-to-https",
/// cachePolicyId: exampleAwsCloudfrontCachePolicy.id,
/// allowedMethods: {
/// items: [
/// "DELETE",
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// "PATCH",
/// "POST",
/// "PUT",
/// ],
/// cachedMethods: [
/// "GET",
/// "HEAD",
/// ],
/// },
/// },
/// restrictions: {
/// geoRestriction: {
/// restrictionType: "none",
/// },
/// },
/// viewerCertificate: {
/// acmCertificateArn: exampleAwsAcmCertificate.arn,
/// sslSupportMethod: "sni-only",
/// },
/// tenantConfig: {
/// parameterDefinitions: [{
/// name: "origin_domain",
/// definitions: [{
/// stringSchemas: [{
/// required: true,
/// comment: "Origin domain parameter for tenants",
/// }],
/// }],
/// }],
/// },
/// tags: {
/// Environment: "production",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.MultitenantDistribution("example",
/// comment="Multi-tenant distribution for my application",
/// enabled=True,
/// origins=[{
/// "domain_name": "example.com",
/// "id": "example-origin",
/// "custom_origin_configs": [{
/// "http_port": 80,
/// "https_port": 443,
/// "origin_protocol_policy": "https-only",
/// "origin_ssl_protocols": ["TLSv1.2"],
/// }],
/// }],
/// default_cache_behavior={
/// "target_origin_id": "example-origin",
/// "viewer_protocol_policy": "redirect-to-https",
/// "cache_policy_id": example_aws_cloudfront_cache_policy["id"],
/// "allowed_methods": {
/// "items": [
/// "DELETE",
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// "PATCH",
/// "POST",
/// "PUT",
/// ],
/// "cached_methods": [
/// "GET",
/// "HEAD",
/// ],
/// },
/// },
/// restrictions={
/// "geo_restriction": {
/// "restriction_type": "none",
/// },
/// },
/// viewer_certificate={
/// "acm_certificate_arn": example_aws_acm_certificate["arn"],
/// "ssl_support_method": "sni-only",
/// },
/// tenant_config={
/// "parameter_definitions": [{
/// "name": "origin_domain",
/// "definitions": [{
/// "string_schemas": [{
/// "required": True,
/// "comment": "Origin domain parameter for tenants",
/// }],
/// }],
/// }],
/// },
/// tags={
/// "Environment": "production",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.MultitenantDistribution("example", new()
/// {
/// Comment = "Multi-tenant distribution for my application",
/// Enabled = true,
/// Origins = new[]
/// {
/// new Aws.CloudFront.Inputs.MultitenantDistributionOriginArgs
/// {
/// DomainName = "example.com",
/// Id = "example-origin",
/// CustomOriginConfigs = new[]
/// {
/// new Aws.CloudFront.Inputs.MultitenantDistributionOriginCustomOriginConfigArgs
/// {
/// HttpPort = 80,
/// HttpsPort = 443,
/// OriginProtocolPolicy = "https-only",
/// OriginSslProtocols = new[]
/// {
/// "TLSv1.2",
/// },
/// },
/// },
/// },
/// },
/// DefaultCacheBehavior = new Aws.CloudFront.Inputs.MultitenantDistributionDefaultCacheBehaviorArgs
/// {
/// TargetOriginId = "example-origin",
/// ViewerProtocolPolicy = "redirect-to-https",
/// CachePolicyId = exampleAwsCloudfrontCachePolicy.Id,
/// AllowedMethods = new Aws.CloudFront.Inputs.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs
/// {
/// Items = new[]
/// {
/// "DELETE",
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// "PATCH",
/// "POST",
/// "PUT",
/// },
/// CachedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// },
/// },
/// },
/// Restrictions = new Aws.CloudFront.Inputs.MultitenantDistributionRestrictionsArgs
/// {
/// GeoRestriction = new Aws.CloudFront.Inputs.MultitenantDistributionRestrictionsGeoRestrictionArgs
/// {
/// RestrictionType = "none",
/// },
/// },
/// ViewerCertificate = new Aws.CloudFront.Inputs.MultitenantDistributionViewerCertificateArgs
/// {
/// AcmCertificateArn = exampleAwsAcmCertificate.Arn,
/// SslSupportMethod = "sni-only",
/// },
/// TenantConfig = new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigArgs
/// {
/// ParameterDefinitions = new[]
/// {
/// new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionArgs
/// {
/// Name = "origin_domain",
/// Definitions = new[]
/// {
/// new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs
/// {
/// StringSchemas = new[]
/// {
/// new Aws.CloudFront.Inputs.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs
/// {
/// Required = true,
/// Comment = "Origin domain parameter for tenants",
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := cloudfront.NewMultitenantDistribution(ctx, "example", &cloudfront.MultitenantDistributionArgs{
/// Comment: pulumi.String("Multi-tenant distribution for my application"),
/// Enabled: pulumi.Bool(true),
/// Origins: cloudfront.MultitenantDistributionOriginArray{
/// &cloudfront.MultitenantDistributionOriginArgs{
/// DomainName: pulumi.String("example.com"),
/// Id:         pulumi.String("example-origin"),
/// CustomOriginConfigs: cloudfront.MultitenantDistributionOriginCustomOriginConfigArray{
/// &cloudfront.MultitenantDistributionOriginCustomOriginConfigArgs{
/// HttpPort:             pulumi.Int(80),
/// HttpsPort:            pulumi.Int(443),
/// OriginProtocolPolicy: pulumi.String("https-only"),
/// OriginSslProtocols: pulumi.StringArray{
/// pulumi.String("TLSv1.2"),
/// },
/// },
/// },
/// },
/// },
/// DefaultCacheBehavior: &cloudfront.MultitenantDistributionDefaultCacheBehaviorArgs{
/// TargetOriginId:       pulumi.String("example-origin"),
/// ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// CachePolicyId:        pulumi.Any(exampleAwsCloudfrontCachePolicy.Id),
/// AllowedMethods: &cloudfront.MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs{
/// Items: pulumi.StringArray{
/// pulumi.String("DELETE"),
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// pulumi.String("OPTIONS"),
/// pulumi.String("PATCH"),
/// pulumi.String("POST"),
/// pulumi.String("PUT"),
/// },
/// CachedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// },
/// },
/// },
/// Restrictions: &cloudfront.MultitenantDistributionRestrictionsArgs{
/// GeoRestriction: &cloudfront.MultitenantDistributionRestrictionsGeoRestrictionArgs{
/// RestrictionType: pulumi.String("none"),
/// },
/// },
/// ViewerCertificate: &cloudfront.MultitenantDistributionViewerCertificateArgs{
/// AcmCertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// SslSupportMethod:  pulumi.String("sni-only"),
/// },
/// TenantConfig: &cloudfront.MultitenantDistributionTenantConfigArgs{
/// ParameterDefinitions: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionArray{
/// &cloudfront.MultitenantDistributionTenantConfigParameterDefinitionArgs{
/// Name: pulumi.String("origin_domain"),
/// Definitions: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArray{
/// &cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs{
/// StringSchemas: cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArray{
/// &cloudfront.MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs{
/// Required: pulumi.Bool(true),
/// Comment:  pulumi.String("Origin domain parameter for tenants"),
/// },
/// },
/// },
/// },
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new MultitenantDistribution("example", MultitenantDistributionArgs.builder()
/// .comment("Multi-tenant distribution for my application")
/// .enabled(true)
/// .origins(MultitenantDistributionOriginArgs.builder()
/// .domainName("example.com")
/// .id("example-origin")
/// .customOriginConfigs(MultitenantDistributionOriginCustomOriginConfigArgs.builder()
/// .httpPort(80)
/// .httpsPort(443)
/// .originProtocolPolicy("https-only")
/// .originSslProtocols("TLSv1.2")
/// .build())
/// .build())
/// .defaultCacheBehavior(MultitenantDistributionDefaultCacheBehaviorArgs.builder()
/// .targetOriginId("example-origin")
/// .viewerProtocolPolicy("redirect-to-https")
/// .cachePolicyId(exampleAwsCloudfrontCachePolicy.id())
/// .allowedMethods(MultitenantDistributionDefaultCacheBehaviorAllowedMethodsArgs.builder()
/// .items(
/// "DELETE",
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// "PATCH",
/// "POST",
/// "PUT")
/// .cachedMethods(
/// "GET",
/// "HEAD")
/// .build())
/// .build())
/// .restrictions(MultitenantDistributionRestrictionsArgs.builder()
/// .geoRestriction(MultitenantDistributionRestrictionsGeoRestrictionArgs.builder()
/// .restrictionType("none")
/// .build())
/// .build())
/// .viewerCertificate(MultitenantDistributionViewerCertificateArgs.builder()
/// .acmCertificateArn(exampleAwsAcmCertificate.arn())
/// .sslSupportMethod("sni-only")
/// .build())
/// .tenantConfig(MultitenantDistributionTenantConfigArgs.builder()
/// .parameterDefinitions(MultitenantDistributionTenantConfigParameterDefinitionArgs.builder()
/// .name("origin_domain")
/// .definitions(MultitenantDistributionTenantConfigParameterDefinitionDefinitionArgs.builder()
/// .stringSchemas(MultitenantDistributionTenantConfigParameterDefinitionDefinitionStringSchemaArgs.builder()
/// .required(true)
/// .comment("Origin domain parameter for tenants")
/// .build())
/// .build())
/// .build())
/// .build())
/// .tags(Map.of("Environment", "production"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:MultitenantDistribution
/// properties:
/// comment: Multi-tenant distribution for my application
/// enabled: true
/// origins:
/// - domainName: example.com
/// id: example-origin
/// customOriginConfigs:
/// - httpPort: 80
/// httpsPort: 443
/// originProtocolPolicy: https-only
/// originSslProtocols:
/// - TLSv1.2
/// defaultCacheBehavior:
/// targetOriginId: example-origin
/// viewerProtocolPolicy: redirect-to-https
/// cachePolicyId: ${exampleAwsCloudfrontCachePolicy.id}
/// allowedMethods:
/// items:
/// - DELETE
/// - GET
/// - HEAD
/// - OPTIONS
/// - PATCH
/// - POST
/// - PUT
/// cachedMethods:
/// - GET
/// - HEAD
/// restrictions:
/// geoRestriction:
/// restrictionType: none
/// viewerCertificate:
/// acmCertificateArn: ${exampleAwsAcmCertificate.arn}
/// sslSupportMethod: sni-only
/// tenantConfig:
/// parameterDefinitions:
/// - name: origin_domain
/// definitions:
/// - stringSchemas:
/// - required: true
/// comment: Origin domain parameter for tenants
/// tags:
/// Environment: production
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Multi-tenant Distributions using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/multitenantDistribution:MultitenantDistribution distribution E74FTE3AEXAMPLE
/// ```
class MultitenantDistribution extends CustomResource {
  /// List of key groups that CloudFront can use to validate signed URLs or signed cookies. See Active Trusted Key Groups below.
  late final Output<List<MultitenantDistributionActiveTrustedKeyGroup>?>
      activeTrustedKeyGroups;

  /// ARN for the distribution.
  late final Output<String> arn;

  /// Ordered list of cache behaviors resource for this distribution. See Cache Behavior below.
  late final Output<List<MultitenantDistributionCacheBehavior>?> cacheBehaviors;

  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final Output<String> callerReference;

  /// Any comments you want to include about the distribution.
  late final Output<String> comment;

  /// Connection mode for the distribution. Always set to `tenant-only` for multi-tenant distributions.
  late final Output<String> connectionMode;

  /// One or more custom error response elements. See Custom Error Response below.
  late final Output<List<MultitenantDistributionCustomErrorResponse>?>
      customErrorResponses;

  /// Default cache behavior for this distribution. See Default Cache Behavior below.
  late final Output<MultitenantDistributionDefaultCacheBehavior>
      defaultCacheBehavior;

  /// Object that you want CloudFront to return when an end user requests the root URL.
  late final Output<String?> defaultRootObject;

  /// Domain name corresponding to the distribution.
  late final Output<String> domainName;

  /// Whether the distribution is enabled to accept end user requests for content.
  late final Output<bool> enabled;

  /// Current version of the distribution's information.
  late final Output<String> etag;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>, <span pulumi-lang-nodejs="`http2and3`" pulumi-lang-dotnet="`Http2and3`" pulumi-lang-go="`http2and3`" pulumi-lang-python="`http2and3`" pulumi-lang-yaml="`http2and3`" pulumi-lang-java="`http2and3`">`http2and3`</span>, and <span pulumi-lang-nodejs="`http3`" pulumi-lang-dotnet="`Http3`" pulumi-lang-go="`http3`" pulumi-lang-python="`http3`" pulumi-lang-yaml="`http3`" pulumi-lang-java="`http3`">`http3`</span>. Default: <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>.
  late final Output<String> httpVersion;

  /// Number of invalidation batches currently in progress.
  late final Output<int> inProgressInvalidationBatches;

  /// Date and time the distribution was last modified.
  late final Output<String> lastModifiedTime;

  /// One or more<span pulumi-lang-nodejs=" originGroup " pulumi-lang-dotnet=" OriginGroup " pulumi-lang-go=" originGroup " pulumi-lang-python=" origin_group " pulumi-lang-yaml=" originGroup " pulumi-lang-java=" originGroup "> origin_group </span>for this distribution (multiples allowed). See Origin Group below.
  late final Output<List<MultitenantDistributionOriginGroup>?> originGroups;

  /// One or more origins for this distribution (multiples allowed). See Origin below.
  late final Output<List<MultitenantDistributionOrigin>?> origins;

  /// Restriction configuration for this distribution. See Restrictions below.
  late final Output<MultitenantDistributionRestrictions?> restrictions;

  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final Output<String> status;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Tenant configuration that contains parameter definitions for multi-tenant distributions. See Tenant Config below.
  late final Output<MultitenantDistributionTenantConfig> tenantConfig;
  late final Output<MultitenantDistributionTimeouts?> timeouts;

  /// SSL configuration for this distribution. See Viewer Certificate below.
  late final Output<MultitenantDistributionViewerCertificate> viewerCertificate;

  /// Unique identifier that specifies the AWS WAF v2 web ACL to associate with this distribution.
  late final Output<String?> webAclId;

  MultitenantDistribution(
    String name, {
    MultitenantDistributionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/multitenantDistribution:MultitenantDistribution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeTrustedKeyGroups = Output.createUnknown<
        List<MultitenantDistributionActiveTrustedKeyGroup>?>();
    this.arn = Output.createUnknown<String>();
    this.cacheBehaviors =
        Output.createUnknown<List<MultitenantDistributionCacheBehavior>?>();
    this.callerReference = Output.createUnknown<String>();
    this.comment = Output.createUnknown<String>();
    this.connectionMode = Output.createUnknown<String>();
    this.customErrorResponses = Output.createUnknown<
        List<MultitenantDistributionCustomErrorResponse>?>();
    this.defaultCacheBehavior =
        Output.createUnknown<MultitenantDistributionDefaultCacheBehavior>();
    this.defaultRootObject = Output.createUnknown<String?>();
    this.domainName = Output.createUnknown<String>();
    this.enabled = Output.createUnknown<bool>();
    this.etag = Output.createUnknown<String>();
    this.httpVersion = Output.createUnknown<String>();
    this.inProgressInvalidationBatches = Output.createUnknown<int>();
    this.lastModifiedTime = Output.createUnknown<String>();
    this.originGroups =
        Output.createUnknown<List<MultitenantDistributionOriginGroup>?>();
    this.origins = Output.createUnknown<List<MultitenantDistributionOrigin>?>();
    this.restrictions =
        Output.createUnknown<MultitenantDistributionRestrictions?>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.tenantConfig =
        Output.createUnknown<MultitenantDistributionTenantConfig>();
    this.timeouts = Output.createUnknown<MultitenantDistributionTimeouts?>();
    this.viewerCertificate =
        Output.createUnknown<MultitenantDistributionViewerCertificate>();
    this.webAclId = Output.createUnknown<String?>();
  }
}
