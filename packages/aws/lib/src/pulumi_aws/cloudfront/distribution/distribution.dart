import 'package:pulumi/pulumi.dart';
import '../distribution_connection_function_association/distribution_connection_function_association.dart';
import '../distribution_custom_error_response/distribution_custom_error_response.dart';
import '../distribution_default_cache_behavior/distribution_default_cache_behavior.dart';
import '../distribution_logging_config/distribution_logging_config.dart';
import '../distribution_ordered_cache_behavior/distribution_ordered_cache_behavior.dart';
import '../distribution_origin/distribution_origin.dart';
import '../distribution_origin_group/distribution_origin_group.dart';
import '../distribution_restrictions/distribution_restrictions.dart';
import '../distribution_trusted_key_group/distribution_trusted_key_group.dart';
import '../distribution_trusted_signer/distribution_trusted_signer.dart';
import '../distribution_viewer_certificate/distribution_viewer_certificate.dart';
import '../distribution_viewer_mtls_config/distribution_viewer_mtls_config.dart';
import 'distribution_args.dart';

/// Creates an Amazon CloudFront web distribution.
///
/// For information about CloudFront distributions, see the [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For specific information about creating CloudFront web distributions, see the [POST Distribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html) page in the Amazon CloudFront API Reference.
///
/// > **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the <span pulumi-lang-nodejs="`retainOnDelete`" pulumi-lang-dotnet="`RetainOnDelete`" pulumi-lang-go="`retainOnDelete`" pulumi-lang-python="`retain_on_delete`" pulumi-lang-yaml="`retainOnDelete`" pulumi-lang-java="`retainOnDelete`">`retain_on_delete`</span> flag.
///
/// ## Example Usage
///
/// ### S3 Origin
///
/// The example below creates a CloudFront distribution with an S3 origin.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.s3.Bucket("b", {
/// bucket: "mybucket",
/// tags: {
/// Name: "My bucket",
/// },
/// });
/// const s3OriginId = "myS3Origin";
/// const myDomain = "mydomain.com";
/// const myDomainGetCertificate = aws.acm.getCertificate({
/// region: "us-east-1",
/// domain: `*.${myDomain}`,
/// statuses: ["ISSUED"],
/// });
/// const _default = new aws.cloudfront.OriginAccessControl("default", {
/// name: "default-oac",
/// originAccessControlOriginType: "s3",
/// signingBehavior: "always",
/// signingProtocol: "sigv4",
/// });
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
/// origins: [{
/// domainName: b.bucketRegionalDomainName,
/// originAccessControlId: _default.id,
/// originId: s3OriginId,
/// }],
/// enabled: true,
/// isIpv6Enabled: true,
/// comment: "Some comment",
/// defaultRootObject: "index.html",
/// aliases: [
/// `mysite.${myDomain}`,
/// `yoursite.${myDomain}`,
/// ],
/// defaultCacheBehavior: {
/// allowedMethods: [
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
/// targetOriginId: s3OriginId,
/// forwardedValues: {
/// queryString: false,
/// cookies: {
/// forward: "none",
/// },
/// },
/// viewerProtocolPolicy: "allow-all",
/// minTtl: 0,
/// defaultTtl: 3600,
/// maxTtl: 86400,
/// },
/// orderedCacheBehaviors: [
/// {
/// pathPattern: "/content/immutable/*",
/// allowedMethods: [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// cachedMethods: [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// targetOriginId: s3OriginId,
/// forwardedValues: {
/// queryString: false,
/// headers: ["Origin"],
/// cookies: {
/// forward: "none",
/// },
/// },
/// minTtl: 0,
/// defaultTtl: 86400,
/// maxTtl: 31536000,
/// compress: true,
/// viewerProtocolPolicy: "redirect-to-https",
/// },
/// {
/// pathPattern: "/content/*",
/// allowedMethods: [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// cachedMethods: [
/// "GET",
/// "HEAD",
/// ],
/// targetOriginId: s3OriginId,
/// forwardedValues: {
/// queryString: false,
/// cookies: {
/// forward: "none",
/// },
/// },
/// minTtl: 0,
/// defaultTtl: 3600,
/// maxTtl: 86400,
/// compress: true,
/// viewerProtocolPolicy: "redirect-to-https",
/// },
/// ],
/// priceClass: "PriceClass_200",
/// restrictions: {
/// geoRestriction: {
/// restrictionType: "whitelist",
/// locations: [
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// ],
/// },
/// },
/// tags: {
/// Environment: "production",
/// },
/// viewerCertificate: {
/// acmCertificateArn: myDomainGetCertificate.then(myDomainGetCertificate => myDomainGetCertificate.arn),
/// sslSupportMethod: "sni-only",
/// },
/// });
/// // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// const originBucketPolicy = aws.iam.getPolicyDocumentOutput({
/// statements: [{
/// sid: "AllowCloudFrontServicePrincipalReadWrite",
/// effect: "Allow",
/// principals: [{
/// type: "Service",
/// identifiers: ["cloudfront.amazonaws.com"],
/// }],
/// actions: [
/// "s3:GetObject",
/// "s3:PutObject",
/// ],
/// resources: [pulumi.interpolate`${b.arn}/*`],
/// conditions: [{
/// test: "StringEquals",
/// variable: "AWS:SourceArn",
/// values: [s3Distribution.arn],
/// }],
/// }],
/// });
/// const bBucketPolicy = new aws.s3.BucketPolicy("b", {
/// bucket: b.bucket,
/// policy: originBucketPolicy.apply(originBucketPolicy => originBucketPolicy.json),
/// });
/// // Create Route53 records for the CloudFront distribution aliases
/// const myDomainGetZone = aws.route53.getZone({
/// name: myDomain,
/// });
/// const cloudfront: aws.route53.Record[] = [];
/// s3Distribution.aliases.apply(rangeBody => {
/// for (const range of rangeBody.map((v, k) => ({key: k, value: v}))) {
/// cloudfront.push(new aws.route53.Record(`cloudfront-${range.key}`, {
/// zoneId: myDomainGetZone.then(myDomainGetZone => myDomainGetZone.zoneId),
/// name: range.value,
/// type: aws.route53.RecordType.A,
/// aliases: [{
/// name: s3Distribution.domainName,
/// zoneId: s3Distribution.hostedZoneId,
/// evaluateTargetHealth: false,
/// }],
/// }));
/// }
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// b = aws.s3.Bucket("b",
/// bucket="mybucket",
/// tags={
/// "Name": "My bucket",
/// })
/// s3_origin_id = "myS3Origin"
/// my_domain = "mydomain.com"
/// my_domain_get_certificate = aws.acm.get_certificate(region="us-east-1",
/// domain=f"*.{my_domain}",
/// statuses=["ISSUED"])
/// default = aws.cloudfront.OriginAccessControl("default",
/// name="default-oac",
/// origin_access_control_origin_type="s3",
/// signing_behavior="always",
/// signing_protocol="sigv4")
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
/// origins=[{
/// "domain_name": b.bucket_regional_domain_name,
/// "origin_access_control_id": default.id,
/// "origin_id": s3_origin_id,
/// }],
/// enabled=True,
/// is_ipv6_enabled=True,
/// comment="Some comment",
/// default_root_object="index.html",
/// aliases=[
/// f"mysite.{my_domain}",
/// f"yoursite.{my_domain}",
/// ],
/// default_cache_behavior={
/// "allowed_methods": [
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
/// "target_origin_id": s3_origin_id,
/// "forwarded_values": {
/// "query_string": False,
/// "cookies": {
/// "forward": "none",
/// },
/// },
/// "viewer_protocol_policy": "allow-all",
/// "min_ttl": 0,
/// "default_ttl": 3600,
/// "max_ttl": 86400,
/// },
/// ordered_cache_behaviors=[
/// {
/// "path_pattern": "/content/immutable/*",
/// "allowed_methods": [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// "cached_methods": [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// "target_origin_id": s3_origin_id,
/// "forwarded_values": {
/// "query_string": False,
/// "headers": ["Origin"],
/// "cookies": {
/// "forward": "none",
/// },
/// },
/// "min_ttl": 0,
/// "default_ttl": 86400,
/// "max_ttl": 31536000,
/// "compress": True,
/// "viewer_protocol_policy": "redirect-to-https",
/// },
/// {
/// "path_pattern": "/content/*",
/// "allowed_methods": [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// "cached_methods": [
/// "GET",
/// "HEAD",
/// ],
/// "target_origin_id": s3_origin_id,
/// "forwarded_values": {
/// "query_string": False,
/// "cookies": {
/// "forward": "none",
/// },
/// },
/// "min_ttl": 0,
/// "default_ttl": 3600,
/// "max_ttl": 86400,
/// "compress": True,
/// "viewer_protocol_policy": "redirect-to-https",
/// },
/// ],
/// price_class="PriceClass_200",
/// restrictions={
/// "geo_restriction": {
/// "restriction_type": "whitelist",
/// "locations": [
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// ],
/// },
/// },
/// tags={
/// "Environment": "production",
/// },
/// viewer_certificate={
/// "acm_certificate_arn": my_domain_get_certificate.arn,
/// "ssl_support_method": "sni-only",
/// })
/// # See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// origin_bucket_policy = aws.iam.get_policy_document_output(statements=[{
/// "sid": "AllowCloudFrontServicePrincipalReadWrite",
/// "effect": "Allow",
/// "principals": [{
/// "type": "Service",
/// "identifiers": ["cloudfront.amazonaws.com"],
/// }],
/// "actions": [
/// "s3:GetObject",
/// "s3:PutObject",
/// ],
/// "resources": [b.arn.apply(lambda arn: f"{arn}/*")],
/// "conditions": [{
/// "test": "StringEquals",
/// "variable": "AWS:SourceArn",
/// "values": [s3_distribution.arn],
/// }],
/// }])
/// b_bucket_policy = aws.s3.BucketPolicy("b",
/// bucket=b.bucket,
/// policy=origin_bucket_policy.json)
/// # Create Route53 records for the CloudFront distribution aliases
/// my_domain_get_zone = aws.route53.get_zone(name=my_domain)
/// cloudfront = []
/// def create_cloudfront(range_body):
/// for range in [{"key": k, "value": v} for [k, v] in enumerate(range_body)]:
/// cloudfront.append(aws.route53.Record(f"cloudfront-{range['key']}",
/// zone_id=my_domain_get_zone.zone_id,
/// name=range["value"],
/// type=aws.route53.RecordType.A,
/// aliases=[{
/// "name": s3_distribution.domain_name,
/// "zone_id": s3_distribution.hosted_zone_id,
/// "evaluate_target_health": False,
/// }]))
///
/// s3_distribution.aliases.apply(create_cloudfront)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var b = new Aws.S3.Bucket("b", new()
/// {
/// BucketName = "mybucket",
/// Tags =
/// {
/// { "Name", "My bucket" },
/// },
/// });
///
/// var s3OriginId = "myS3Origin";
///
/// var myDomain = "mydomain.com";
///
/// var myDomainGetCertificate = Aws.Acm.GetCertificate.Invoke(new()
/// {
/// Region = "us-east-1",
/// Domain = $"*.{myDomain}",
/// Statuses = new[]
/// {
/// "ISSUED",
/// },
/// });
///
/// var @default = new Aws.CloudFront.OriginAccessControl("default", new()
/// {
/// Name = "default-oac",
/// OriginAccessControlOriginType = "s3",
/// SigningBehavior = "always",
/// SigningProtocol = "sigv4",
/// });
///
/// var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
/// {
/// Origins = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginArgs
/// {
/// DomainName = b.BucketRegionalDomainName,
/// OriginAccessControlId = @default.Id,
/// OriginId = s3OriginId,
/// },
/// },
/// Enabled = true,
/// IsIpv6Enabled = true,
/// Comment = "Some comment",
/// DefaultRootObject = "index.html",
/// Aliases = new[]
/// {
/// $"mysite.{myDomain}",
/// $"yoursite.{myDomain}",
/// },
/// DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// AllowedMethods = new[]
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
/// TargetOriginId = s3OriginId,
/// ForwardedValues = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorForwardedValuesArgs
/// {
/// QueryString = false,
/// Cookies = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs
/// {
/// Forward = "none",
/// },
/// },
/// ViewerProtocolPolicy = "allow-all",
/// MinTtl = 0,
/// DefaultTtl = 3600,
/// MaxTtl = 86400,
/// },
/// OrderedCacheBehaviors = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorArgs
/// {
/// PathPattern = "/content/immutable/*",
/// AllowedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// },
/// CachedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// },
/// TargetOriginId = s3OriginId,
/// ForwardedValues = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs
/// {
/// QueryString = false,
/// Headers = new[]
/// {
/// "Origin",
/// },
/// Cookies = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs
/// {
/// Forward = "none",
/// },
/// },
/// MinTtl = 0,
/// DefaultTtl = 86400,
/// MaxTtl = 31536000,
/// Compress = true,
/// ViewerProtocolPolicy = "redirect-to-https",
/// },
/// new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorArgs
/// {
/// PathPattern = "/content/*",
/// AllowedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// },
/// CachedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// },
/// TargetOriginId = s3OriginId,
/// ForwardedValues = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs
/// {
/// QueryString = false,
/// Cookies = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs
/// {
/// Forward = "none",
/// },
/// },
/// MinTtl = 0,
/// DefaultTtl = 3600,
/// MaxTtl = 86400,
/// Compress = true,
/// ViewerProtocolPolicy = "redirect-to-https",
/// },
/// },
/// PriceClass = "PriceClass_200",
/// Restrictions = new Aws.CloudFront.Inputs.DistributionRestrictionsArgs
/// {
/// GeoRestriction = new Aws.CloudFront.Inputs.DistributionRestrictionsGeoRestrictionArgs
/// {
/// RestrictionType = "whitelist",
/// Locations = new[]
/// {
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// },
/// },
/// },
/// Tags =
/// {
/// { "Environment", "production" },
/// },
/// ViewerCertificate = new Aws.CloudFront.Inputs.DistributionViewerCertificateArgs
/// {
/// AcmCertificateArn = myDomainGetCertificate.Apply(getCertificateResult => getCertificateResult.Arn),
/// SslSupportMethod = "sni-only",
/// },
/// });
///
/// // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// var originBucketPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
/// {
/// Statements = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
/// {
/// Sid = "AllowCloudFrontServicePrincipalReadWrite",
/// Effect = "Allow",
/// Principals = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
/// {
/// Type = "Service",
/// Identifiers = new[]
/// {
/// "cloudfront.amazonaws.com",
/// },
/// },
/// },
/// Actions = new[]
/// {
/// "s3:GetObject",
/// "s3:PutObject",
/// },
/// Resources = new[]
/// {
/// $"{b.Arn}/*",
/// },
/// Conditions = new[]
/// {
/// new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
/// {
/// Test = "StringEquals",
/// Variable = "AWS:SourceArn",
/// Values = new[]
/// {
/// s3Distribution.Arn,
/// },
/// },
/// },
/// },
/// },
/// });
///
/// var bBucketPolicy = new Aws.S3.BucketPolicy("b", new()
/// {
/// Bucket = b.BucketName,
/// Policy = originBucketPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
/// });
///
/// // Create Route53 records for the CloudFront distribution aliases
/// var myDomainGetZone = Aws.Route53.GetZone.Invoke(new()
/// {
/// Name = myDomain,
/// });
///
/// var cloudfront = new List<Aws.Route53.Record>();
/// foreach (var range in )
/// {
/// cloudfront.Add(new Aws.Route53.Record($"cloudfront-{range.Key}", new()
/// {
/// ZoneId = myDomainGetZone.Apply(getZoneResult => getZoneResult.ZoneId),
/// Name = range.Value,
/// Type = Aws.Route53.RecordType.A,
/// Aliases = new[]
/// {
/// new Aws.Route53.Inputs.RecordAliasArgs
/// {
/// Name = s3Distribution.DomainName,
/// ZoneId = s3Distribution.HostedZoneId,
/// EvaluateTargetHealth = false,
/// },
/// },
/// }));
/// }
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// b, err := s3.NewBucket(ctx, "b", &s3.BucketArgs{
/// Bucket: pulumi.String("mybucket"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("My bucket"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// s3OriginId := "myS3Origin"
/// myDomain := "mydomain.com"
/// myDomainGetCertificate, err := acm.LookupCertificate(ctx, &acm.LookupCertificateArgs{
/// Region: pulumi.StringRef("us-east-1"),
/// Domain: pulumi.StringRef(fmt.Sprintf("*.%v", myDomain)),
/// Statuses: []string{
/// "ISSUED",
/// },
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _default, err := cloudfront.NewOriginAccessControl(ctx, "default", &cloudfront.OriginAccessControlArgs{
/// Name:                          pulumi.String("default-oac"),
/// OriginAccessControlOriginType: pulumi.String("s3"),
/// SigningBehavior:               pulumi.String("always"),
/// SigningProtocol:               pulumi.String("sigv4"),
/// })
/// if err != nil {
/// return err
/// }
/// s3Distribution, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// Origins: cloudfront.DistributionOriginArray{
/// &cloudfront.DistributionOriginArgs{
/// DomainName:            b.BucketRegionalDomainName,
/// OriginAccessControlId: _default.ID(),
/// OriginId:              pulumi.String(s3OriginId),
/// },
/// },
/// Enabled:           pulumi.Bool(true),
/// IsIpv6Enabled:     pulumi.Bool(true),
/// Comment:           pulumi.String("Some comment"),
/// DefaultRootObject: pulumi.String("index.html"),
/// Aliases: pulumi.StringArray{
/// pulumi.Sprintf("mysite.%v", myDomain),
/// pulumi.Sprintf("yoursite.%v", myDomain),
/// },
/// DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// AllowedMethods: pulumi.StringArray{
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
/// TargetOriginId: pulumi.String(s3OriginId),
/// ForwardedValues: &cloudfront.DistributionDefaultCacheBehaviorForwardedValuesArgs{
/// QueryString: pulumi.Bool(false),
/// Cookies: &cloudfront.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs{
/// Forward: pulumi.String("none"),
/// },
/// },
/// ViewerProtocolPolicy: pulumi.String("allow-all"),
/// MinTtl:               pulumi.Int(0),
/// DefaultTtl:           pulumi.Int(3600),
/// MaxTtl:               pulumi.Int(86400),
/// },
/// OrderedCacheBehaviors: cloudfront.DistributionOrderedCacheBehaviorArray{
/// &cloudfront.DistributionOrderedCacheBehaviorArgs{
/// PathPattern: pulumi.String("/content/immutable/*"),
/// AllowedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// pulumi.String("OPTIONS"),
/// },
/// CachedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// pulumi.String("OPTIONS"),
/// },
/// TargetOriginId: pulumi.String(s3OriginId),
/// ForwardedValues: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
/// QueryString: pulumi.Bool(false),
/// Headers: pulumi.StringArray{
/// pulumi.String("Origin"),
/// },
/// Cookies: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
/// Forward: pulumi.String("none"),
/// },
/// },
/// MinTtl:               pulumi.Int(0),
/// DefaultTtl:           pulumi.Int(86400),
/// MaxTtl:               pulumi.Int(31536000),
/// Compress:             pulumi.Bool(true),
/// ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// },
/// &cloudfront.DistributionOrderedCacheBehaviorArgs{
/// PathPattern: pulumi.String("/content/*"),
/// AllowedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// pulumi.String("OPTIONS"),
/// },
/// CachedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// },
/// TargetOriginId: pulumi.String(s3OriginId),
/// ForwardedValues: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
/// QueryString: pulumi.Bool(false),
/// Cookies: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
/// Forward: pulumi.String("none"),
/// },
/// },
/// MinTtl:               pulumi.Int(0),
/// DefaultTtl:           pulumi.Int(3600),
/// MaxTtl:               pulumi.Int(86400),
/// Compress:             pulumi.Bool(true),
/// ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// },
/// },
/// PriceClass: pulumi.String("PriceClass_200"),
/// Restrictions: &cloudfront.DistributionRestrictionsArgs{
/// GeoRestriction: &cloudfront.DistributionRestrictionsGeoRestrictionArgs{
/// RestrictionType: pulumi.String("whitelist"),
/// Locations: pulumi.StringArray{
/// pulumi.String("US"),
/// pulumi.String("CA"),
/// pulumi.String("GB"),
/// pulumi.String("DE"),
/// },
/// },
/// },
/// Tags: pulumi.StringMap{
/// "Environment": pulumi.String("production"),
/// },
/// ViewerCertificate: &cloudfront.DistributionViewerCertificateArgs{
/// AcmCertificateArn: pulumi.String(myDomainGetCertificate.Arn),
/// SslSupportMethod:  pulumi.String("sni-only"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// originBucketPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// Statements: iam.GetPolicyDocumentStatementArray{
/// &iam.GetPolicyDocumentStatementArgs{
/// Sid:    pulumi.String("AllowCloudFrontServicePrincipalReadWrite"),
/// Effect: pulumi.String("Allow"),
/// Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// &iam.GetPolicyDocumentStatementPrincipalArgs{
/// Type: pulumi.String("Service"),
/// Identifiers: pulumi.StringArray{
/// pulumi.String("cloudfront.amazonaws.com"),
/// },
/// },
/// },
/// Actions: pulumi.StringArray{
/// pulumi.String("s3:GetObject"),
/// pulumi.String("s3:PutObject"),
/// },
/// Resources: pulumi.StringArray{
/// b.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/*", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// &iam.GetPolicyDocumentStatementConditionArgs{
/// Test:     pulumi.String("StringEquals"),
/// Variable: pulumi.String("AWS:SourceArn"),
/// Values: pulumi.StringArray{
/// s3Distribution.Arn,
/// },
/// },
/// },
/// },
/// },
/// }, nil)
/// _, err = s3.NewBucketPolicy(ctx, "b", &s3.BucketPolicyArgs{
/// Bucket: b.Bucket,
/// Policy: pulumi.String(originBucketPolicy.ApplyT(func(originBucketPolicy iam.GetPolicyDocumentResult) (*string, error) {
/// return &originBucketPolicy.Json, nil
/// }).(pulumi.StringPtrOutput)),
/// })
/// if err != nil {
/// return err
/// }
/// // Create Route53 records for the CloudFront distribution aliases
/// myDomainGetZone, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// Name: pulumi.StringRef(myDomain),
/// }, nil)
/// if err != nil {
/// return err
/// }
/// var cloudfront []*route53.Record
/// for key0, val0 := range s3Distribution.Aliases {
/// __res, err := route53.NewRecord(ctx, fmt.Sprintf("cloudfront-%v", key0), &route53.RecordArgs{
/// ZoneId: pulumi.String(myDomainGetZone.ZoneId),
/// Name:   pulumi.String(val0),
/// Type:   pulumi.String(route53.RecordTypeA),
/// Aliases: route53.RecordAliasArray{
/// &route53.RecordAliasArgs{
/// Name:                 s3Distribution.DomainName,
/// ZoneId:               s3Distribution.HostedZoneId,
/// EvaluateTargetHealth: pulumi.Bool(false),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// cloudfront = append(cloudfront, __res)
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.acm.AcmFunctions;
/// import com.pulumi.aws.acm.inputs.GetCertificateArgs;
/// import com.pulumi.aws.cloudfront.OriginAccessControl;
/// import com.pulumi.aws.cloudfront.OriginAccessControlArgs;
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorForwardedValuesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerCertificateArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
/// var b = new Bucket("b", BucketArgs.builder()
/// .bucket("mybucket")
/// .tags(Map.of("Name", "My bucket"))
/// .build());
///
/// final var s3OriginId = "myS3Origin";
///
/// final var myDomain = "mydomain.com";
///
/// final var myDomainGetCertificate = AcmFunctions.getCertificate(GetCertificateArgs.builder()
/// .region("us-east-1")
/// .domain(String.format("*.%s", myDomain))
/// .statuses("ISSUED")
/// .build());
///
/// var default_ = new OriginAccessControl("default", OriginAccessControlArgs.builder()
/// .name("default-oac")
/// .originAccessControlOriginType("s3")
/// .signingBehavior("always")
/// .signingProtocol("sigv4")
/// .build());
///
/// var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
/// .origins(DistributionOriginArgs.builder()
/// .domainName(b.bucketRegionalDomainName())
/// .originAccessControlId(default_.id())
/// .originId(s3OriginId)
/// .build())
/// .enabled(true)
/// .isIpv6Enabled(true)
/// .comment("Some comment")
/// .defaultRootObject("index.html")
/// .aliases(
/// String.format("mysite.%s", myDomain),
/// String.format("yoursite.%s", myDomain))
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .allowedMethods(
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
/// .targetOriginId(s3OriginId)
/// .forwardedValues(DistributionDefaultCacheBehaviorForwardedValuesArgs.builder()
/// .queryString(false)
/// .cookies(DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs.builder()
/// .forward("none")
/// .build())
/// .build())
/// .viewerProtocolPolicy("allow-all")
/// .minTtl(0)
/// .defaultTtl(3600)
/// .maxTtl(86400)
/// .build())
/// .orderedCacheBehaviors(
/// DistributionOrderedCacheBehaviorArgs.builder()
/// .pathPattern("/content/immutable/*")
/// .allowedMethods(
/// "GET",
/// "HEAD",
/// "OPTIONS")
/// .cachedMethods(
/// "GET",
/// "HEAD",
/// "OPTIONS")
/// .targetOriginId(s3OriginId)
/// .forwardedValues(DistributionOrderedCacheBehaviorForwardedValuesArgs.builder()
/// .queryString(false)
/// .headers("Origin")
/// .cookies(DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs.builder()
/// .forward("none")
/// .build())
/// .build())
/// .minTtl(0)
/// .defaultTtl(86400)
/// .maxTtl(31536000)
/// .compress(true)
/// .viewerProtocolPolicy("redirect-to-https")
/// .build(),
/// DistributionOrderedCacheBehaviorArgs.builder()
/// .pathPattern("/content/*")
/// .allowedMethods(
/// "GET",
/// "HEAD",
/// "OPTIONS")
/// .cachedMethods(
/// "GET",
/// "HEAD")
/// .targetOriginId(s3OriginId)
/// .forwardedValues(DistributionOrderedCacheBehaviorForwardedValuesArgs.builder()
/// .queryString(false)
/// .cookies(DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs.builder()
/// .forward("none")
/// .build())
/// .build())
/// .minTtl(0)
/// .defaultTtl(3600)
/// .maxTtl(86400)
/// .compress(true)
/// .viewerProtocolPolicy("redirect-to-https")
/// .build())
/// .priceClass("PriceClass_200")
/// .restrictions(DistributionRestrictionsArgs.builder()
/// .geoRestriction(DistributionRestrictionsGeoRestrictionArgs.builder()
/// .restrictionType("whitelist")
/// .locations(
/// "US",
/// "CA",
/// "GB",
/// "DE")
/// .build())
/// .build())
/// .tags(Map.of("Environment", "production"))
/// .viewerCertificate(DistributionViewerCertificateArgs.builder()
/// .acmCertificateArn(myDomainGetCertificate.arn())
/// .sslSupportMethod("sni-only")
/// .build())
/// .build());
///
/// // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// final var originBucketPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
/// .statements(GetPolicyDocumentStatementArgs.builder()
/// .sid("AllowCloudFrontServicePrincipalReadWrite")
/// .effect("Allow")
/// .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
/// .type("Service")
/// .identifiers("cloudfront.amazonaws.com")
/// .build())
/// .actions(
/// "s3:GetObject",
/// "s3:PutObject")
/// .resources(b.arn().applyValue(_arn -> String.format("%s/*", _arn)))
/// .conditions(GetPolicyDocumentStatementConditionArgs.builder()
/// .test("StringEquals")
/// .variable("AWS:SourceArn")
/// .values(s3Distribution.arn())
/// .build())
/// .build())
/// .build());
///
/// var bBucketPolicy = new BucketPolicy("bBucketPolicy", BucketPolicyArgs.builder()
/// .bucket(b.bucket())
/// .policy(originBucketPolicy.applyValue(_originBucketPolicy -> _originBucketPolicy.json()))
/// .build());
///
/// // Create Route53 records for the CloudFront distribution aliases
/// final var myDomainGetZone = Route53Functions.getZone(GetZoneArgs.builder()
/// .name(myDomain)
/// .build());
///
/// for (var range : KeyedValue.of(s3Distribution.aliases())) {
/// new Record("cloudfront-" + range.key(), RecordArgs.builder()
/// .zoneId(myDomainGetZone.zoneId())
/// .name(range.value())
/// .type("A")
/// .aliases(RecordAliasArgs.builder()
/// .name(s3Distribution.domainName())
/// .zoneId(s3Distribution.hostedZoneId())
/// .evaluateTargetHealth(false)
/// .build())
/// .build());
/// }
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// b:
/// type: aws:s3:Bucket
/// properties:
/// bucket: mybucket
/// tags:
/// Name: My bucket
/// bBucketPolicy:
/// type: aws:s3:BucketPolicy
/// name: b
/// properties:
/// bucket: ${b.bucket}
/// policy: ${originBucketPolicy.json}
/// default:
/// type: aws:cloudfront:OriginAccessControl
/// properties:
/// name: default-oac
/// originAccessControlOriginType: s3
/// signingBehavior: always
/// signingProtocol: sigv4
/// s3Distribution:
/// type: aws:cloudfront:Distribution
/// name: s3_distribution
/// properties:
/// origins:
/// - domainName: ${b.bucketRegionalDomainName}
/// originAccessControlId: ${default.id}
/// originId: ${s3OriginId}
/// enabled: true
/// isIpv6Enabled: true
/// comment: Some comment
/// defaultRootObject: index.html
/// aliases:
/// - mysite.${myDomain}
/// - yoursite.${myDomain}
/// defaultCacheBehavior:
/// allowedMethods:
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
/// targetOriginId: ${s3OriginId}
/// forwardedValues:
/// queryString: false
/// cookies:
/// forward: none
/// viewerProtocolPolicy: allow-all
/// minTtl: 0
/// defaultTtl: 3600
/// maxTtl: 86400
/// orderedCacheBehaviors:
/// - pathPattern: /content/immutable/*
/// allowedMethods:
/// - GET
/// - HEAD
/// - OPTIONS
/// cachedMethods:
/// - GET
/// - HEAD
/// - OPTIONS
/// targetOriginId: ${s3OriginId}
/// forwardedValues:
/// queryString: false
/// headers:
/// - Origin
/// cookies:
/// forward: none
/// minTtl: 0
/// defaultTtl: 86400
/// maxTtl: 3.1536e+07
/// compress: true
/// viewerProtocolPolicy: redirect-to-https
/// - pathPattern: /content/*
/// allowedMethods:
/// - GET
/// - HEAD
/// - OPTIONS
/// cachedMethods:
/// - GET
/// - HEAD
/// targetOriginId: ${s3OriginId}
/// forwardedValues:
/// queryString: false
/// cookies:
/// forward: none
/// minTtl: 0
/// defaultTtl: 3600
/// maxTtl: 86400
/// compress: true
/// viewerProtocolPolicy: redirect-to-https
/// priceClass: PriceClass_200
/// restrictions:
/// geoRestriction:
/// restrictionType: whitelist
/// locations:
/// - US
/// - CA
/// - GB
/// - DE
/// tags:
/// Environment: production
/// viewerCertificate:
/// acmCertificateArn: ${myDomainGetCertificate.arn}
/// sslSupportMethod: sni-only
/// cloudfront:
/// type: aws:route53:Record
/// properties:
/// zoneId: ${myDomainGetZone.zoneId}
/// name: ${range.value}
/// type: A
/// aliases:
/// - name: ${s3Distribution.domainName}
/// zoneId: ${s3Distribution.hostedZoneId}
/// evaluateTargetHealth: false
/// options: {}
/// variables:
/// # See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// originBucketPolicy:
/// fn::invoke:
/// function: aws:iam:getPolicyDocument
/// arguments:
/// statements:
/// - sid: AllowCloudFrontServicePrincipalReadWrite
/// effect: Allow
/// principals:
/// - type: Service
/// identifiers:
/// - cloudfront.amazonaws.com
/// actions:
/// - s3:GetObject
/// - s3:PutObject
/// resources:
/// - ${b.arn}/*
/// conditions:
/// - test: StringEquals
/// variable: AWS:SourceArn
/// values:
/// - ${s3Distribution.arn}
/// s3OriginId: myS3Origin
/// myDomain: mydomain.com
/// myDomainGetCertificate:
/// fn::invoke:
/// function: aws:acm:getCertificate
/// arguments:
/// region: us-east-1
/// domain: '*.${myDomain}'
/// statuses:
/// - ISSUED
/// # Create Route53 records for the CloudFront distribution aliases
/// myDomainGetZone:
/// fn::invoke:
/// function: aws:route53:getZone
/// arguments:
/// name: ${myDomain}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Failover Routing
///
/// The example below creates a CloudFront distribution with an origin group for failover routing.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
/// originGroups: [{
/// originId: "groupS3",
/// failoverCriteria: {
/// statusCodes: [
/// 403,
/// 404,
/// 500,
/// 502,
/// ],
/// },
/// members: [
/// {
/// originId: "primaryS3",
/// },
/// {
/// originId: "failoverS3",
/// },
/// ],
/// }],
/// origins: [
/// {
/// domainName: primary.bucketRegionalDomainName,
/// originId: "primaryS3",
/// s3OriginConfig: {
/// originAccessIdentity: _default.cloudfrontAccessIdentityPath,
/// },
/// },
/// {
/// domainName: failover.bucketRegionalDomainName,
/// originId: "failoverS3",
/// s3OriginConfig: {
/// originAccessIdentity: _default.cloudfrontAccessIdentityPath,
/// },
/// },
/// ],
/// defaultCacheBehavior: {
/// targetOriginId: "groupS3",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
/// origin_groups=[{
/// "origin_id": "groupS3",
/// "failover_criteria": {
/// "status_codes": [
/// 403,
/// 404,
/// 500,
/// 502,
/// ],
/// },
/// "members": [
/// {
/// "origin_id": "primaryS3",
/// },
/// {
/// "origin_id": "failoverS3",
/// },
/// ],
/// }],
/// origins=[
/// {
/// "domain_name": primary["bucketRegionalDomainName"],
/// "origin_id": "primaryS3",
/// "s3_origin_config": {
/// "origin_access_identity": default["cloudfrontAccessIdentityPath"],
/// },
/// },
/// {
/// "domain_name": failover["bucketRegionalDomainName"],
/// "origin_id": "failoverS3",
/// "s3_origin_config": {
/// "origin_access_identity": default["cloudfrontAccessIdentityPath"],
/// },
/// },
/// ],
/// default_cache_behavior={
/// "target_origin_id": "groupS3",
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
/// var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
/// {
/// OriginGroups = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginGroupArgs
/// {
/// OriginId = "groupS3",
/// FailoverCriteria = new Aws.CloudFront.Inputs.DistributionOriginGroupFailoverCriteriaArgs
/// {
/// StatusCodes = new[]
/// {
/// 403,
/// 404,
/// 500,
/// 502,
/// },
/// },
/// Members = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginGroupMemberArgs
/// {
/// OriginId = "primaryS3",
/// },
/// new Aws.CloudFront.Inputs.DistributionOriginGroupMemberArgs
/// {
/// OriginId = "failoverS3",
/// },
/// },
/// },
/// },
/// Origins = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginArgs
/// {
/// DomainName = primary.BucketRegionalDomainName,
/// OriginId = "primaryS3",
/// S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
/// {
/// OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
/// },
/// },
/// new Aws.CloudFront.Inputs.DistributionOriginArgs
/// {
/// DomainName = failover.BucketRegionalDomainName,
/// OriginId = "failoverS3",
/// S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
/// {
/// OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
/// },
/// },
/// },
/// DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// TargetOriginId = "groupS3",
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
/// _, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// OriginGroups: cloudfront.DistributionOriginGroupArray{
/// &cloudfront.DistributionOriginGroupArgs{
/// OriginId: pulumi.String("groupS3"),
/// FailoverCriteria: &cloudfront.DistributionOriginGroupFailoverCriteriaArgs{
/// StatusCodes: pulumi.IntArray{
/// pulumi.Int(403),
/// pulumi.Int(404),
/// pulumi.Int(500),
/// pulumi.Int(502),
/// },
/// },
/// Members: cloudfront.DistributionOriginGroupMemberArray{
/// &cloudfront.DistributionOriginGroupMemberArgs{
/// OriginId: pulumi.String("primaryS3"),
/// },
/// &cloudfront.DistributionOriginGroupMemberArgs{
/// OriginId: pulumi.String("failoverS3"),
/// },
/// },
/// },
/// },
/// Origins: cloudfront.DistributionOriginArray{
/// &cloudfront.DistributionOriginArgs{
/// DomainName: pulumi.Any(primary.BucketRegionalDomainName),
/// OriginId:   pulumi.String("primaryS3"),
/// S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// },
/// },
/// &cloudfront.DistributionOriginArgs{
/// DomainName: pulumi.Any(failover.BucketRegionalDomainName),
/// OriginId:   pulumi.String("failoverS3"),
/// S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// },
/// },
/// },
/// DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// TargetOriginId: pulumi.String("groupS3"),
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
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginGroupArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginGroupFailoverCriteriaArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginS3OriginConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
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
/// var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
/// .originGroups(DistributionOriginGroupArgs.builder()
/// .originId("groupS3")
/// .failoverCriteria(DistributionOriginGroupFailoverCriteriaArgs.builder()
/// .statusCodes(
/// 403,
/// 404,
/// 500,
/// 502)
/// .build())
/// .members(
/// DistributionOriginGroupMemberArgs.builder()
/// .originId("primaryS3")
/// .build(),
/// DistributionOriginGroupMemberArgs.builder()
/// .originId("failoverS3")
/// .build())
/// .build())
/// .origins(
/// DistributionOriginArgs.builder()
/// .domainName(primary.bucketRegionalDomainName())
/// .originId("primaryS3")
/// .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
/// .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
/// .build())
/// .build(),
/// DistributionOriginArgs.builder()
/// .domainName(failover.bucketRegionalDomainName())
/// .originId("failoverS3")
/// .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
/// .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
/// .build())
/// .build())
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .targetOriginId("groupS3")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3Distribution:
/// type: aws:cloudfront:Distribution
/// name: s3_distribution
/// properties:
/// originGroups:
/// - originId: groupS3
/// failoverCriteria:
/// statusCodes:
/// - 403
/// - 404
/// - 500
/// - 502
/// members:
/// - originId: primaryS3
/// - originId: failoverS3
/// origins:
/// - domainName: ${primary.bucketRegionalDomainName}
/// originId: primaryS3
/// s3OriginConfig:
/// originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
/// - domainName: ${failover.bucketRegionalDomainName}
/// originId: failoverS3
/// s3OriginConfig:
/// originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
/// defaultCacheBehavior:
/// targetOriginId: groupS3
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Managed Caching Policy
///
/// The example below creates a CloudFront distribution with an [AWS managed caching policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3OriginId = "myS3Origin";
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
/// origins: [{
/// domainName: primary.bucketRegionalDomainName,
/// originId: "myS3Origin",
/// s3OriginConfig: {
/// originAccessIdentity: _default.cloudfrontAccessIdentityPath,
/// },
/// }],
/// enabled: true,
/// isIpv6Enabled: true,
/// comment: "Some comment",
/// defaultRootObject: "index.html",
/// defaultCacheBehavior: {
/// cachePolicyId: "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
/// allowedMethods: [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// cachedMethods: [
/// "GET",
/// "HEAD",
/// ],
/// targetOriginId: s3OriginId,
/// viewerProtocolPolicy: "allow-all",
/// },
/// restrictions: {
/// geoRestriction: {
/// restrictionType: "whitelist",
/// locations: [
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// ],
/// },
/// },
/// viewerCertificate: {
/// cloudfrontDefaultCertificate: true,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_origin_id = "myS3Origin"
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
/// origins=[{
/// "domain_name": primary["bucketRegionalDomainName"],
/// "origin_id": "myS3Origin",
/// "s3_origin_config": {
/// "origin_access_identity": default["cloudfrontAccessIdentityPath"],
/// },
/// }],
/// enabled=True,
/// is_ipv6_enabled=True,
/// comment="Some comment",
/// default_root_object="index.html",
/// default_cache_behavior={
/// "cache_policy_id": "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
/// "allowed_methods": [
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// ],
/// "cached_methods": [
/// "GET",
/// "HEAD",
/// ],
/// "target_origin_id": s3_origin_id,
/// "viewer_protocol_policy": "allow-all",
/// },
/// restrictions={
/// "geo_restriction": {
/// "restriction_type": "whitelist",
/// "locations": [
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// ],
/// },
/// },
/// viewer_certificate={
/// "cloudfront_default_certificate": True,
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
/// var s3OriginId = "myS3Origin";
///
/// var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
/// {
/// Origins = new[]
/// {
/// new Aws.CloudFront.Inputs.DistributionOriginArgs
/// {
/// DomainName = primary.BucketRegionalDomainName,
/// OriginId = "myS3Origin",
/// S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
/// {
/// OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
/// },
/// },
/// },
/// Enabled = true,
/// IsIpv6Enabled = true,
/// Comment = "Some comment",
/// DefaultRootObject = "index.html",
/// DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
/// {
/// CachePolicyId = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
/// AllowedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// "OPTIONS",
/// },
/// CachedMethods = new[]
/// {
/// "GET",
/// "HEAD",
/// },
/// TargetOriginId = s3OriginId,
/// ViewerProtocolPolicy = "allow-all",
/// },
/// Restrictions = new Aws.CloudFront.Inputs.DistributionRestrictionsArgs
/// {
/// GeoRestriction = new Aws.CloudFront.Inputs.DistributionRestrictionsGeoRestrictionArgs
/// {
/// RestrictionType = "whitelist",
/// Locations = new[]
/// {
/// "US",
/// "CA",
/// "GB",
/// "DE",
/// },
/// },
/// },
/// ViewerCertificate = new Aws.CloudFront.Inputs.DistributionViewerCertificateArgs
/// {
/// CloudfrontDefaultCertificate = true,
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
/// s3OriginId := "myS3Origin"
/// _, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// Origins: cloudfront.DistributionOriginArray{
/// &cloudfront.DistributionOriginArgs{
/// DomainName: pulumi.Any(primary.BucketRegionalDomainName),
/// OriginId:   pulumi.String("myS3Origin"),
/// S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// },
/// },
/// },
/// Enabled:           pulumi.Bool(true),
/// IsIpv6Enabled:     pulumi.Bool(true),
/// Comment:           pulumi.String("Some comment"),
/// DefaultRootObject: pulumi.String("index.html"),
/// DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// CachePolicyId: pulumi.String("4135ea2d-6df8-44a3-9df3-4b5a84be39ad"),
/// AllowedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// pulumi.String("OPTIONS"),
/// },
/// CachedMethods: pulumi.StringArray{
/// pulumi.String("GET"),
/// pulumi.String("HEAD"),
/// },
/// TargetOriginId:       pulumi.String(s3OriginId),
/// ViewerProtocolPolicy: pulumi.String("allow-all"),
/// },
/// Restrictions: &cloudfront.DistributionRestrictionsArgs{
/// GeoRestriction: &cloudfront.DistributionRestrictionsGeoRestrictionArgs{
/// RestrictionType: pulumi.String("whitelist"),
/// Locations: pulumi.StringArray{
/// pulumi.String("US"),
/// pulumi.String("CA"),
/// pulumi.String("GB"),
/// pulumi.String("DE"),
/// },
/// },
/// },
/// ViewerCertificate: &cloudfront.DistributionViewerCertificateArgs{
/// CloudfrontDefaultCertificate: pulumi.Bool(true),
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
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginS3OriginConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerCertificateArgs;
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
/// final var s3OriginId = "myS3Origin";
///
/// var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
/// .origins(DistributionOriginArgs.builder()
/// .domainName(primary.bucketRegionalDomainName())
/// .originId("myS3Origin")
/// .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
/// .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
/// .build())
/// .build())
/// .enabled(true)
/// .isIpv6Enabled(true)
/// .comment("Some comment")
/// .defaultRootObject("index.html")
/// .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
/// .cachePolicyId("4135ea2d-6df8-44a3-9df3-4b5a84be39ad")
/// .allowedMethods(
/// "GET",
/// "HEAD",
/// "OPTIONS")
/// .cachedMethods(
/// "GET",
/// "HEAD")
/// .targetOriginId(s3OriginId)
/// .viewerProtocolPolicy("allow-all")
/// .build())
/// .restrictions(DistributionRestrictionsArgs.builder()
/// .geoRestriction(DistributionRestrictionsGeoRestrictionArgs.builder()
/// .restrictionType("whitelist")
/// .locations(
/// "US",
/// "CA",
/// "GB",
/// "DE")
/// .build())
/// .build())
/// .viewerCertificate(DistributionViewerCertificateArgs.builder()
/// .cloudfrontDefaultCertificate(true)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// s3Distribution:
/// type: aws:cloudfront:Distribution
/// name: s3_distribution
/// properties:
/// origins:
/// - domainName: ${primary.bucketRegionalDomainName}
/// originId: myS3Origin
/// s3OriginConfig:
/// originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
/// enabled: true
/// isIpv6Enabled: true
/// comment: Some comment
/// defaultRootObject: index.html
/// defaultCacheBehavior:
/// cachePolicyId: 4135ea2d-6df8-44a3-9df3-4b5a84be39ad
/// allowedMethods:
/// - GET
/// - HEAD
/// - OPTIONS
/// cachedMethods:
/// - GET
/// - HEAD
/// targetOriginId: ${s3OriginId}
/// viewerProtocolPolicy: allow-all
/// restrictions:
/// geoRestriction:
/// restrictionType: whitelist
/// locations:
/// - US
/// - CA
/// - GB
/// - DE
/// viewerCertificate:
/// cloudfrontDefaultCertificate: true
/// variables:
/// s3OriginId: myS3Origin
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With V2 logging to S3
///
/// The example below creates a CloudFront distribution with [standard logging V2 to S3](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {});
/// const exampleLogDeliverySource = new aws.cloudwatch.LogDeliverySource("example", {
/// region: "us-east-1",
/// name: "example",
/// logType: "ACCESS_LOGS",
/// resourceArn: example.arn,
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
/// bucket: "testbucket",
/// forceDestroy: true,
/// });
/// const exampleLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("example", {
/// region: "us-east-1",
/// name: "s3-destination",
/// outputFormat: "parquet",
/// deliveryDestinationConfiguration: {
/// destinationResourceArn: pulumi.interpolate`${exampleBucket.arn}/prefix`,
/// },
/// });
/// const exampleLogDelivery = new aws.cloudwatch.LogDelivery("example", {
/// region: "us-east-1",
/// deliverySourceName: exampleLogDeliverySource.name,
/// deliveryDestinationArn: exampleLogDeliveryDestination.arn,
/// s3DeliveryConfigurations: [{
/// suffixPath: "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
/// }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example")
/// example_log_delivery_source = aws.cloudwatch.LogDeliverySource("example",
/// region="us-east-1",
/// name="example",
/// log_type="ACCESS_LOGS",
/// resource_arn=example.arn)
/// example_bucket = aws.s3.Bucket("example",
/// bucket="testbucket",
/// force_destroy=True)
/// example_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("example",
/// region="us-east-1",
/// name="s3-destination",
/// output_format="parquet",
/// delivery_destination_configuration={
/// "destination_resource_arn": example_bucket.arn.apply(lambda arn: f"{arn}/prefix"),
/// })
/// example_log_delivery = aws.cloudwatch.LogDelivery("example",
/// region="us-east-1",
/// delivery_source_name=example_log_delivery_source.name,
/// delivery_destination_arn=example_log_delivery_destination.arn,
/// s3_delivery_configurations=[{
/// "suffix_path": "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.Distribution("example");
///
/// var exampleLogDeliverySource = new Aws.CloudWatch.LogDeliverySource("example", new()
/// {
/// Region = "us-east-1",
/// Name = "example",
/// LogType = "ACCESS_LOGS",
/// ResourceArn = example.Arn,
/// });
///
/// var exampleBucket = new Aws.S3.Bucket("example", new()
/// {
/// BucketName = "testbucket",
/// ForceDestroy = true,
/// });
///
/// var exampleLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("example", new()
/// {
/// Region = "us-east-1",
/// Name = "s3-destination",
/// OutputFormat = "parquet",
/// DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
/// {
/// DestinationResourceArn = exampleBucket.Arn.Apply(arn => $"{arn}/prefix"),
/// },
/// });
///
/// var exampleLogDelivery = new Aws.CloudWatch.LogDelivery("example", new()
/// {
/// Region = "us-east-1",
/// DeliverySourceName = exampleLogDeliverySource.Name,
/// DeliveryDestinationArn = exampleLogDeliveryDestination.Arn,
/// S3DeliveryConfigurations = new[]
/// {
/// new Aws.CloudWatch.Inputs.LogDeliveryS3DeliveryConfigurationArgs
/// {
/// SuffixPath = "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "fmt"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudfront.NewDistribution(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// exampleLogDeliverySource, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// Region:      pulumi.String("us-east-1"),
/// Name:        pulumi.String("example"),
/// LogType:     pulumi.String("ACCESS_LOGS"),
/// ResourceArn: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// Bucket:       pulumi.String("testbucket"),
/// ForceDestroy: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// Region:       pulumi.String("us-east-1"),
/// Name:         pulumi.String("s3-destination"),
/// OutputFormat: pulumi.String("parquet"),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// return fmt.Sprintf("%v/prefix", arn), nil
/// }).(pulumi.StringOutput),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// Region:                 pulumi.String("us-east-1"),
/// DeliverySourceName:     exampleLogDeliverySource.Name,
/// DeliveryDestinationArn: exampleLogDeliveryDestination.Arn,
/// S3DeliveryConfigurations: cloudwatch.LogDeliveryS3DeliveryConfigurationArray{
/// &cloudwatch.LogDeliveryS3DeliveryConfigurationArgs{
/// SuffixPath: pulumi.String("/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}"),
/// },
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
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudwatch.LogDeliverySource;
/// import com.pulumi.aws.cloudwatch.LogDeliverySourceArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.LogDelivery;
/// import com.pulumi.aws.cloudwatch.LogDeliveryArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryS3DeliveryConfigurationArgs;
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
/// var example = new Distribution("example");
///
/// var exampleLogDeliverySource = new LogDeliverySource("exampleLogDeliverySource", LogDeliverySourceArgs.builder()
/// .region("us-east-1")
/// .name("example")
/// .logType("ACCESS_LOGS")
/// .resourceArn(example.arn())
/// .build());
///
/// var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
/// .bucket("testbucket")
/// .forceDestroy(true)
/// .build());
///
/// var exampleLogDeliveryDestination = new LogDeliveryDestination("exampleLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
/// .region("us-east-1")
/// .name("s3-destination")
/// .outputFormat("parquet")
/// .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
/// .destinationResourceArn(exampleBucket.arn().applyValue(_arn -> String.format("%s/prefix", _arn)))
/// .build())
/// .build());
///
/// var exampleLogDelivery = new LogDelivery("exampleLogDelivery", LogDeliveryArgs.builder()
/// .region("us-east-1")
/// .deliverySourceName(exampleLogDeliverySource.name())
/// .deliveryDestinationArn(exampleLogDeliveryDestination.arn())
/// .s3DeliveryConfigurations(LogDeliveryS3DeliveryConfigurationArgs.builder()
/// .suffixPath("/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:Distribution
/// exampleLogDeliverySource:
/// type: aws:cloudwatch:LogDeliverySource
/// name: example
/// properties:
/// region: us-east-1
/// name: example
/// logType: ACCESS_LOGS
/// resourceArn: ${example.arn}
/// exampleBucket:
/// type: aws:s3:Bucket
/// name: example
/// properties:
/// bucket: testbucket
/// forceDestroy: true
/// exampleLogDeliveryDestination:
/// type: aws:cloudwatch:LogDeliveryDestination
/// name: example
/// properties:
/// region: us-east-1
/// name: s3-destination
/// outputFormat: parquet
/// deliveryDestinationConfiguration:
/// destinationResourceArn: ${exampleBucket.arn}/prefix
/// exampleLogDelivery:
/// type: aws:cloudwatch:LogDelivery
/// name: example
/// properties:
/// region: us-east-1
/// deliverySourceName: ${exampleLogDeliverySource.name}
/// deliveryDestinationArn: ${exampleLogDeliveryDestination.arn}
/// s3DeliveryConfigurations:
/// - suffixPath: /123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With V2 logging to Data Firehose
///
/// The example below creates a CloudFront distribution with [standard logging V2 to Data Firehose](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {});
/// const cloudfrontLogs = new aws.kinesis.FirehoseDeliveryStream("cloudfront_logs", {
/// region: "us-east-1",
/// tags: {
/// LogDeliveryEnabled: "true",
/// },
/// });
/// const exampleLogDeliverySource = new aws.cloudwatch.LogDeliverySource("example", {
/// region: "us-east-1",
/// name: "cloudfront-logs-source",
/// logType: "ACCESS_LOGS",
/// resourceArn: example.arn,
/// });
/// const exampleLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("example", {
/// region: "us-east-1",
/// name: "firehose-destination",
/// outputFormat: "json",
/// deliveryDestinationConfiguration: {
/// destinationResourceArn: cloudfrontLogs.arn,
/// },
/// });
/// const exampleLogDelivery = new aws.cloudwatch.LogDelivery("example", {
/// region: "us-east-1",
/// deliverySourceName: exampleLogDeliverySource.name,
/// deliveryDestinationArn: exampleLogDeliveryDestination.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example")
/// cloudfront_logs = aws.kinesis.FirehoseDeliveryStream("cloudfront_logs",
/// region="us-east-1",
/// tags={
/// "LogDeliveryEnabled": "true",
/// })
/// example_log_delivery_source = aws.cloudwatch.LogDeliverySource("example",
/// region="us-east-1",
/// name="cloudfront-logs-source",
/// log_type="ACCESS_LOGS",
/// resource_arn=example.arn)
/// example_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("example",
/// region="us-east-1",
/// name="firehose-destination",
/// output_format="json",
/// delivery_destination_configuration={
/// "destination_resource_arn": cloudfront_logs.arn,
/// })
/// example_log_delivery = aws.cloudwatch.LogDelivery("example",
/// region="us-east-1",
/// delivery_source_name=example_log_delivery_source.name,
/// delivery_destination_arn=example_log_delivery_destination.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.CloudFront.Distribution("example");
///
/// var cloudfrontLogs = new Aws.Kinesis.FirehoseDeliveryStream("cloudfront_logs", new()
/// {
/// Region = "us-east-1",
/// Tags =
/// {
/// { "LogDeliveryEnabled", "true" },
/// },
/// });
///
/// var exampleLogDeliverySource = new Aws.CloudWatch.LogDeliverySource("example", new()
/// {
/// Region = "us-east-1",
/// Name = "cloudfront-logs-source",
/// LogType = "ACCESS_LOGS",
/// ResourceArn = example.Arn,
/// });
///
/// var exampleLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("example", new()
/// {
/// Region = "us-east-1",
/// Name = "firehose-destination",
/// OutputFormat = "json",
/// DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
/// {
/// DestinationResourceArn = cloudfrontLogs.Arn,
/// },
/// });
///
/// var exampleLogDelivery = new Aws.CloudWatch.LogDelivery("example", new()
/// {
/// Region = "us-east-1",
/// DeliverySourceName = exampleLogDeliverySource.Name,
/// DeliveryDestinationArn = exampleLogDeliveryDestination.Arn,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := cloudfront.NewDistribution(ctx, "example", nil)
/// if err != nil {
/// return err
/// }
/// cloudfrontLogs, err := kinesis.NewFirehoseDeliveryStream(ctx, "cloudfront_logs", &kinesis.FirehoseDeliveryStreamArgs{
/// Region: pulumi.String("us-east-1"),
/// Tags: pulumi.StringMap{
/// "LogDeliveryEnabled": pulumi.String("true"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogDeliverySource, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// Region:      pulumi.String("us-east-1"),
/// Name:        pulumi.String("cloudfront-logs-source"),
/// LogType:     pulumi.String("ACCESS_LOGS"),
/// ResourceArn: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// exampleLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// Region:       pulumi.String("us-east-1"),
/// Name:         pulumi.String("firehose-destination"),
/// OutputFormat: pulumi.String("json"),
/// DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// DestinationResourceArn: cloudfrontLogs.Arn,
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// Region:                 pulumi.String("us-east-1"),
/// DeliverySourceName:     exampleLogDeliverySource.Name,
/// DeliveryDestinationArn: exampleLogDeliveryDestination.Arn,
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
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStream;
/// import com.pulumi.aws.kinesis.FirehoseDeliveryStreamArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliverySource;
/// import com.pulumi.aws.cloudwatch.LogDeliverySourceArgs;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestination;
/// import com.pulumi.aws.cloudwatch.LogDeliveryDestinationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.LogDelivery;
/// import com.pulumi.aws.cloudwatch.LogDeliveryArgs;
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
/// var example = new Distribution("example");
///
/// var cloudfrontLogs = new FirehoseDeliveryStream("cloudfrontLogs", FirehoseDeliveryStreamArgs.builder()
/// .region("us-east-1")
/// .tags(Map.of("LogDeliveryEnabled", "true"))
/// .build());
///
/// var exampleLogDeliverySource = new LogDeliverySource("exampleLogDeliverySource", LogDeliverySourceArgs.builder()
/// .region("us-east-1")
/// .name("cloudfront-logs-source")
/// .logType("ACCESS_LOGS")
/// .resourceArn(example.arn())
/// .build());
///
/// var exampleLogDeliveryDestination = new LogDeliveryDestination("exampleLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
/// .region("us-east-1")
/// .name("firehose-destination")
/// .outputFormat("json")
/// .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
/// .destinationResourceArn(cloudfrontLogs.arn())
/// .build())
/// .build());
///
/// var exampleLogDelivery = new LogDelivery("exampleLogDelivery", LogDeliveryArgs.builder()
/// .region("us-east-1")
/// .deliverySourceName(exampleLogDeliverySource.name())
/// .deliveryDestinationArn(exampleLogDeliveryDestination.arn())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:Distribution
/// cloudfrontLogs:
/// type: aws:kinesis:FirehoseDeliveryStream
/// name: cloudfront_logs
/// properties:
/// region: us-east-1
/// tags:
/// LogDeliveryEnabled: 'true'
/// exampleLogDeliverySource:
/// type: aws:cloudwatch:LogDeliverySource
/// name: example
/// properties:
/// region: us-east-1
/// name: cloudfront-logs-source
/// logType: ACCESS_LOGS
/// resourceArn: ${example.arn}
/// exampleLogDeliveryDestination:
/// type: aws:cloudwatch:LogDeliveryDestination
/// name: example
/// properties:
/// region: us-east-1
/// name: firehose-destination
/// outputFormat: json
/// deliveryDestinationConfiguration:
/// destinationResourceArn: ${cloudfrontLogs.arn}
/// exampleLogDelivery:
/// type: aws:cloudwatch:LogDelivery
/// name: example
/// properties:
/// region: us-east-1
/// deliverySourceName: ${exampleLogDeliverySource.name}
/// deliveryDestinationArn: ${exampleLogDeliveryDestination.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### With Connection Function and Viewer mTLS
///
/// The example below creates a CloudFront distribution with a connection function association and viewer mTLS configuration.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionFunction("example", {name: "example-connection-function"});
/// const exampleTrustStore = new aws.cloudfront.TrustStore("example", {name: "example-trust-store"});
/// const exampleDistribution = new aws.cloudfront.Distribution("example", {
/// connectionFunctionAssociation: {
/// id: example.id,
/// },
/// viewerMtlsConfig: {
/// mode: "verify",
/// trustStoreConfig: {
/// trustStoreId: exampleTrustStore.id,
/// advertiseTrustStoreCaNames: true,
/// ignoreCertificateExpiry: false,
/// },
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example", name="example-connection-function")
/// example_trust_store = aws.cloudfront.TrustStore("example", name="example-trust-store")
/// example_distribution = aws.cloudfront.Distribution("example",
/// connection_function_association={
/// "id": example.id,
/// },
/// viewer_mtls_config={
/// "mode": "verify",
/// "trust_store_config": {
/// "trust_store_id": example_trust_store.id,
/// "advertise_trust_store_ca_names": True,
/// "ignore_certificate_expiry": False,
/// },
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
/// var example = new Aws.CloudFront.ConnectionFunction("example", new()
/// {
/// Name = "example-connection-function",
/// });
///
/// var exampleTrustStore = new Aws.CloudFront.TrustStore("example", new()
/// {
/// Name = "example-trust-store",
/// });
///
/// var exampleDistribution = new Aws.CloudFront.Distribution("example", new()
/// {
/// ConnectionFunctionAssociation = new Aws.CloudFront.Inputs.DistributionConnectionFunctionAssociationArgs
/// {
/// Id = example.Id,
/// },
/// ViewerMtlsConfig = new Aws.CloudFront.Inputs.DistributionViewerMtlsConfigArgs
/// {
/// Mode = "verify",
/// TrustStoreConfig = new Aws.CloudFront.Inputs.DistributionViewerMtlsConfigTrustStoreConfigArgs
/// {
/// TrustStoreId = exampleTrustStore.Id,
/// AdvertiseTrustStoreCaNames = true,
/// IgnoreCertificateExpiry = false,
/// },
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
/// example, err := cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// Name: pulumi.String("example-connection-function"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleTrustStore, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// Name: pulumi.String("example-trust-store"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = cloudfront.NewDistribution(ctx, "example", &cloudfront.DistributionArgs{
/// ConnectionFunctionAssociation: &cloudfront.DistributionConnectionFunctionAssociationArgs{
/// Id: example.ID(),
/// },
/// ViewerMtlsConfig: &cloudfront.DistributionViewerMtlsConfigArgs{
/// Mode: pulumi.String("verify"),
/// TrustStoreConfig: &cloudfront.DistributionViewerMtlsConfigTrustStoreConfigArgs{
/// TrustStoreId:               exampleTrustStore.ID(),
/// AdvertiseTrustStoreCaNames: pulumi.Bool(true),
/// IgnoreCertificateExpiry:    pulumi.Bool(false),
/// },
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
/// import com.pulumi.aws.cloudfront.ConnectionFunction;
/// import com.pulumi.aws.cloudfront.ConnectionFunctionArgs;
/// import com.pulumi.aws.cloudfront.TrustStore;
/// import com.pulumi.aws.cloudfront.TrustStoreArgs;
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionConnectionFunctionAssociationArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerMtlsConfigArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerMtlsConfigTrustStoreConfigArgs;
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
/// var example = new ConnectionFunction("example", ConnectionFunctionArgs.builder()
/// .name("example-connection-function")
/// .build());
///
/// var exampleTrustStore = new TrustStore("exampleTrustStore", TrustStoreArgs.builder()
/// .name("example-trust-store")
/// .build());
///
/// var exampleDistribution = new Distribution("exampleDistribution", DistributionArgs.builder()
/// .connectionFunctionAssociation(DistributionConnectionFunctionAssociationArgs.builder()
/// .id(example.id())
/// .build())
/// .viewerMtlsConfig(DistributionViewerMtlsConfigArgs.builder()
/// .mode("verify")
/// .trustStoreConfig(DistributionViewerMtlsConfigTrustStoreConfigArgs.builder()
/// .trustStoreId(exampleTrustStore.id())
/// .advertiseTrustStoreCaNames(true)
/// .ignoreCertificateExpiry(false)
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:cloudfront:ConnectionFunction
/// properties:
/// name: example-connection-function
/// exampleTrustStore:
/// type: aws:cloudfront:TrustStore
/// name: example
/// properties:
/// name: example-trust-store
/// exampleDistribution:
/// type: aws:cloudfront:Distribution
/// name: example
/// properties:
/// connectionFunctionAssociation:
/// id: ${example.id}
/// viewerMtlsConfig:
/// mode: verify
/// trustStoreConfig:
/// trustStoreId: ${exampleTrustStore.id}
/// advertiseTrustStoreCaNames: true
/// ignoreCertificateExpiry: false
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import CloudFront Distributions using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distribution:Distribution distribution E74FTE3EXAMPLE
/// ```
class Distribution extends CustomResource {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  late final Output<List<String>?> aliases;

  /// ID of the Anycast static IP list that is associated with the distribution.
  late final Output<String?> anycastIpListId;

  /// ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where <span pulumi-lang-nodejs="`123456789012`" pulumi-lang-dotnet="`123456789012`" pulumi-lang-go="`123456789012`" pulumi-lang-python="`123456789012`" pulumi-lang-yaml="`123456789012`" pulumi-lang-java="`123456789012`">`123456789012`</span> is your AWS account ID.
  late final Output<String> arn;

  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final Output<String> callerReference;

  /// Any comments you want to include about the distribution.
  late final Output<String?> comment;

  /// A connection function association configuration block (maximum one).
  late final Output<DistributionConnectionFunctionAssociation?>
      connectionFunctionAssociation;

  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the <span pulumi-lang-nodejs="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-dotnet="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-go="`cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-python="`cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-yaml="`aws.cloudfront.ContinuousDeploymentPolicy`" pulumi-lang-java="`aws.cloudfront.ContinuousDeploymentPolicy`">`aws.cloudfront.ContinuousDeploymentPolicy`</span> resource for additional details.
  late final Output<String> continuousDeploymentPolicyId;

  /// One or more custom error response elements (multiples allowed).
  late final Output<List<DistributionCustomErrorResponse>?>
      customErrorResponses;

  /// Default cache behavior for this distribution (maximum one). Requires either <span pulumi-lang-nodejs="`cachePolicyId`" pulumi-lang-dotnet="`CachePolicyId`" pulumi-lang-go="`cachePolicyId`" pulumi-lang-python="`cache_policy_id`" pulumi-lang-yaml="`cachePolicyId`" pulumi-lang-java="`cachePolicyId`">`cache_policy_id`</span> (preferred) or <span pulumi-lang-nodejs="`forwardedValues`" pulumi-lang-dotnet="`ForwardedValues`" pulumi-lang-go="`forwardedValues`" pulumi-lang-python="`forwarded_values`" pulumi-lang-yaml="`forwardedValues`" pulumi-lang-java="`forwardedValues`">`forwarded_values`</span> (deprecated) be set.
  late final Output<DistributionDefaultCacheBehavior> defaultCacheBehavior;

  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  late final Output<String?> defaultRootObject;

  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  late final Output<String> domainName;

  /// Whether the distribution is enabled to accept end user requests for content.
  late final Output<bool> enabled;

  /// Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  late final Output<String> etag;

  /// CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  late final Output<String> hostedZoneId;

  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>, <span pulumi-lang-nodejs="`http2and3`" pulumi-lang-dotnet="`Http2and3`" pulumi-lang-go="`http2and3`" pulumi-lang-python="`http2and3`" pulumi-lang-yaml="`http2and3`" pulumi-lang-java="`http2and3`">`http2and3`</span> and <span pulumi-lang-nodejs="`http3`" pulumi-lang-dotnet="`Http3`" pulumi-lang-go="`http3`" pulumi-lang-python="`http3`" pulumi-lang-yaml="`http3`" pulumi-lang-java="`http3`">`http3`</span>. The default is <span pulumi-lang-nodejs="`http2`" pulumi-lang-dotnet="`Http2`" pulumi-lang-go="`http2`" pulumi-lang-python="`http2`" pulumi-lang-yaml="`http2`" pulumi-lang-java="`http2`">`http2`</span>.
  late final Output<String?> httpVersion;

  /// Number of invalidation batches currently in progress.
  late final Output<int> inProgressValidationBatches;

  /// Whether the IPv6 is enabled for the distribution.
  late final Output<bool?> isIpv6Enabled;

  /// Date and time the distribution was last modified.
  late final Output<String> lastModifiedTime;

  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  late final Output<DistributionLoggingConfig?> loggingConfig;

  /// Whether V1 logging is enabled for the distribution.
  late final Output<bool> loggingV1Enabled;

  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  late final Output<List<DistributionOrderedCacheBehavior>?>
      orderedCacheBehaviors;

  /// One or more<span pulumi-lang-nodejs=" originGroup " pulumi-lang-dotnet=" OriginGroup " pulumi-lang-go=" originGroup " pulumi-lang-python=" origin_group " pulumi-lang-yaml=" originGroup " pulumi-lang-java=" originGroup "> origin_group </span>for this distribution (multiples allowed).
  late final Output<List<DistributionOriginGroup>?> originGroups;

  /// One or more origins for this distribution (multiples allowed).
  late final Output<List<DistributionOrigin>> origins;

  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  late final Output<String?> priceClass;

  /// The restriction configuration for this distribution (maximum one).
  late final Output<DistributionRestrictions> restrictions;

  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> retainOnDelete;

  /// A Boolean that indicates whether this is a staging distribution. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> staging;

  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  late final Output<List<DistributionTrustedKeyGroup>> trustedKeyGroups;

  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  late final Output<List<DistributionTrustedSigner>> trustedSigners;

  /// The SSL configuration for this distribution (maximum one).
  late final Output<DistributionViewerCertificate> viewerCertificate;

  /// The viewer mTLS configuration for this distribution (maximum one).
  late final Output<DistributionViewerMtlsConfig?> viewerMtlsConfig;

  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to<span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> waitForDeployment;

  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  late final Output<String?> webAclId;

  Distribution(
    String name, {
    DistributionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distribution:Distribution',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aliases = registerOutput<List<String>?>('aliases');
    this.anycastIpListId = registerOutput<String?>('anycastIpListId');
    this.arn = registerOutput<String>('arn');
    this.callerReference = registerOutput<String>('callerReference');
    this.comment = registerOutput<String?>('comment');
    this.connectionFunctionAssociation =
        registerOutput<DistributionConnectionFunctionAssociation?>(
            'connectionFunctionAssociation');
    this.continuousDeploymentPolicyId =
        registerOutput<String>('continuousDeploymentPolicyId');
    this.customErrorResponses =
        registerOutput<List<DistributionCustomErrorResponse>?>(
            'customErrorResponses');
    this.defaultCacheBehavior =
        registerOutput<DistributionDefaultCacheBehavior>(
            'defaultCacheBehavior');
    this.defaultRootObject = registerOutput<String?>('defaultRootObject');
    this.domainName = registerOutput<String>('domainName');
    this.enabled = registerOutput<bool>('enabled');
    this.etag = registerOutput<String>('etag');
    this.hostedZoneId = registerOutput<String>('hostedZoneId');
    this.httpVersion = registerOutput<String?>('httpVersion');
    this.inProgressValidationBatches =
        registerOutput<int>('inProgressValidationBatches');
    this.isIpv6Enabled = registerOutput<bool?>('isIpv6Enabled');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.loggingConfig =
        registerOutput<DistributionLoggingConfig?>('loggingConfig');
    this.loggingV1Enabled = registerOutput<bool>('loggingV1Enabled');
    this.orderedCacheBehaviors =
        registerOutput<List<DistributionOrderedCacheBehavior>?>(
            'orderedCacheBehaviors');
    this.originGroups =
        registerOutput<List<DistributionOriginGroup>?>('originGroups');
    this.origins = registerOutput<List<DistributionOrigin>>('origins');
    this.priceClass = registerOutput<String?>('priceClass');
    this.restrictions =
        registerOutput<DistributionRestrictions>('restrictions');
    this.retainOnDelete = registerOutput<bool?>('retainOnDelete');
    this.staging = registerOutput<bool?>('staging');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trustedKeyGroups =
        registerOutput<List<DistributionTrustedKeyGroup>>('trustedKeyGroups');
    this.trustedSigners =
        registerOutput<List<DistributionTrustedSigner>>('trustedSigners');
    this.viewerCertificate =
        registerOutput<DistributionViewerCertificate>('viewerCertificate');
    this.viewerMtlsConfig =
        registerOutput<DistributionViewerMtlsConfig?>('viewerMtlsConfig');
    this.waitForDeployment = registerOutput<bool?>('waitForDeployment');
    this.webAclId = registerOutput<String?>('webAclId');
  }
}
