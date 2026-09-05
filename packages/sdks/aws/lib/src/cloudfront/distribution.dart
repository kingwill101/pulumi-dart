import 'package:pulumi/pulumi.dart' as pulumi;
import 'distribution_args.dart';
import 'distribution_cache_tag_config.dart';
import 'distribution_connection_function_association.dart';
import 'distribution_custom_error_response.dart';
import 'distribution_default_cache_behavior.dart';
import 'distribution_logging_config.dart';
import 'distribution_ordered_cache_behavior.dart';
import 'distribution_origin.dart';
import 'distribution_origin_group.dart';
import 'distribution_restrictions.dart';
import 'distribution_state.dart';
import 'distribution_trusted_key_group.dart';
import 'distribution_trusted_signer.dart';
import 'distribution_viewer_certificate.dart';
import 'distribution_viewer_mtls_config.dart';

/// Creates an Amazon CloudFront web distribution.
///
/// For information about CloudFront distributions, see the [Amazon CloudFront Developer Guide](http://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/Introduction.html). For specific information about creating CloudFront web distributions, see the [POST Distribution](https://docs.aws.amazon.com/cloudfront/latest/APIReference/API_CreateDistribution.html) page in the Amazon CloudFront API Reference.
///
/// &gt; **NOTE:** CloudFront distributions take about 15 minutes to reach a deployed state after creation or modification. During this time, deletes to resources will be blocked. If you need to delete a distribution that is enabled and you do not want to wait, you need to use the `retainOnDelete` flag.
///
/// ## Example Usage
///
/// ### S3 Origin
///
/// The example below creates a CloudFront distribution with an S3 origin.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const b = new aws.s3.Bucket("b", {
///     bucket: "mybucket",
///     tags: {
///         Name: "My bucket",
///     },
/// });
/// const s3OriginId = "myS3Origin";
/// const myDomain = "mydomain.com";
/// const myDomainGetCertificate = aws.acm.getCertificate({
///     region: "us-east-1",
///     domain: `*.${myDomain}`,
///     statuses: ["ISSUED"],
/// });
/// const _default = new aws.cloudfront.OriginAccessControl("default", {
///     name: "default-oac",
///     originAccessControlOriginType: "s3",
///     signingBehavior: "always",
///     signingProtocol: "sigv4",
/// });
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
///     defaultCacheBehavior: {
///         forwardedValues: {
///             cookies: {
///                 forward: "none",
///             },
///             queryString: false,
///         },
///         allowedMethods: [
///             "DELETE",
///             "GET",
///             "HEAD",
///             "OPTIONS",
///             "PATCH",
///             "POST",
///             "PUT",
///         ],
///         cachedMethods: [
///             "GET",
///             "HEAD",
///         ],
///         targetOriginId: s3OriginId,
///         viewerProtocolPolicy: "allow-all",
///         minTtl: 0,
///         defaultTtl: 3600,
///         maxTtl: 86400,
///     },
///     restrictions: {
///         geoRestriction: {
///             restrictionType: "whitelist",
///             locations: [
///                 "US",
///                 "CA",
///                 "GB",
///                 "DE",
///             ],
///         },
///     },
///     viewerCertificate: {
///         acmCertificateArn: myDomainGetCertificate.then(myDomainGetCertificate => myDomainGetCertificate.arn),
///         sslSupportMethod: "sni-only",
///     },
///     orderedCacheBehaviors: [
///         {
///             forwardedValues: {
///                 cookies: {
///                     forward: "none",
///                 },
///                 queryString: false,
///                 headers: ["Origin"],
///             },
///             pathPattern: "/content/immutable/*",
///             allowedMethods: [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             cachedMethods: [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             targetOriginId: s3OriginId,
///             minTtl: 0,
///             defaultTtl: 86400,
///             maxTtl: 31536000,
///             compress: true,
///             viewerProtocolPolicy: "redirect-to-https",
///         },
///         {
///             forwardedValues: {
///                 cookies: {
///                     forward: "none",
///                 },
///                 queryString: false,
///             },
///             pathPattern: "/content/*",
///             allowedMethods: [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             cachedMethods: [
///                 "GET",
///                 "HEAD",
///             ],
///             targetOriginId: s3OriginId,
///             minTtl: 0,
///             defaultTtl: 3600,
///             maxTtl: 86400,
///             compress: true,
///             viewerProtocolPolicy: "redirect-to-https",
///         },
///     ],
///     origins: [{
///         domainName: b.bucketRegionalDomainName,
///         originAccessControlId: _default.id,
///         originId: s3OriginId,
///     }],
///     enabled: true,
///     isIpv6Enabled: true,
///     comment: "Some comment",
///     defaultRootObject: "index.html",
///     aliases: [
///         `mysite.${myDomain}`,
///         `yoursite.${myDomain}`,
///     ],
///     priceClass: "PriceClass_200",
///     tags: {
///         Environment: "production",
///     },
/// });
/// // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// const originBucketPolicy = aws.iam.getPolicyDocumentOutput({
///     statements: [{
///         conditions: [{
///             test: "StringEquals",
///             variable: "AWS:SourceArn",
///             values: [s3Distribution.arn],
///         }],
///         principals: [{
///             type: "Service",
///             identifiers: ["cloudfront.amazonaws.com"],
///         }],
///         sid: "AllowCloudFrontServicePrincipalReadWrite",
///         effect: "Allow",
///         actions: [
///             "s3:GetObject",
///             "s3:PutObject",
///         ],
///         resources: [pulumi.interpolate`${b.arn}/*`],
///     }],
/// });
/// const bBucketPolicy = new aws.s3.BucketPolicy("b", {
///     bucket: b.bucket,
///     policy: originBucketPolicy.json,
/// });
/// // Create Route53 records for the CloudFront distribution aliases
/// const myDomainGetZone = aws.route53.getZone({
///     name: myDomain,
/// });
/// const cloudfront: aws.route53.Record[] = [];
/// s3Distribution.aliases.apply(rangeBody => {
///     for (const range of rangeBody.map((v, k) => ({key: k, value: v}))) {
///         cloudfront.push(new aws.route53.Record(`cloudfront-${range.key}`, {
///             aliases: [{
///                 name: s3Distribution.domainName,
///                 zoneId: s3Distribution.hostedZoneId,
///                 evaluateTargetHealth: false,
///             }],
///             zoneId: myDomainGetZone.then(myDomainGetZone => myDomainGetZone.zoneId),
///             name: range.value,
///             type: aws.route53.RecordType.A,
///         }));
///     }
/// });
/// ```
/// ```python
/// import pulumi
/// from typing import Any
/// import pulumi_aws as aws
///
/// b = aws.s3.Bucket("b",
///     bucket="mybucket",
///     tags={
///         "Name": "My bucket",
///     })
/// s3_origin_id = "myS3Origin"
/// my_domain = "mydomain.com"
/// my_domain_get_certificate = aws.acm.get_certificate(region="us-east-1",
///     domain=f"*.{my_domain}",
///     statuses=["ISSUED"])
/// default = aws.cloudfront.OriginAccessControl("default",
///     name="default-oac",
///     origin_access_control_origin_type="s3",
///     signing_behavior="always",
///     signing_protocol="sigv4")
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
///     default_cache_behavior={
///         "forwarded_values": {
///             "cookies": {
///                 "forward": "none",
///             },
///             "query_string": False,
///         },
///         "allowed_methods": [
///             "DELETE",
///             "GET",
///             "HEAD",
///             "OPTIONS",
///             "PATCH",
///             "POST",
///             "PUT",
///         ],
///         "cached_methods": [
///             "GET",
///             "HEAD",
///         ],
///         "target_origin_id": s3_origin_id,
///         "viewer_protocol_policy": "allow-all",
///         "min_ttl": 0,
///         "default_ttl": 3600,
///         "max_ttl": 86400,
///     },
///     restrictions={
///         "geo_restriction": {
///             "restriction_type": "whitelist",
///             "locations": [
///                 "US",
///                 "CA",
///                 "GB",
///                 "DE",
///             ],
///         },
///     },
///     viewer_certificate={
///         "acm_certificate_arn": my_domain_get_certificate.arn,
///         "ssl_support_method": "sni-only",
///     },
///     ordered_cache_behaviors=[
///         {
///             "forwarded_values": {
///                 "cookies": {
///                     "forward": "none",
///                 },
///                 "query_string": False,
///                 "headers": ["Origin"],
///             },
///             "path_pattern": "/content/immutable/*",
///             "allowed_methods": [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             "cached_methods": [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             "target_origin_id": s3_origin_id,
///             "min_ttl": 0,
///             "default_ttl": 86400,
///             "max_ttl": 31536000,
///             "compress": True,
///             "viewer_protocol_policy": "redirect-to-https",
///         },
///         {
///             "forwarded_values": {
///                 "cookies": {
///                     "forward": "none",
///                 },
///                 "query_string": False,
///             },
///             "path_pattern": "/content/*",
///             "allowed_methods": [
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             ],
///             "cached_methods": [
///                 "GET",
///                 "HEAD",
///             ],
///             "target_origin_id": s3_origin_id,
///             "min_ttl": 0,
///             "default_ttl": 3600,
///             "max_ttl": 86400,
///             "compress": True,
///             "viewer_protocol_policy": "redirect-to-https",
///         },
///     ],
///     origins=[{
///         "domain_name": b.bucket_regional_domain_name,
///         "origin_access_control_id": default.id,
///         "origin_id": s3_origin_id,
///     }],
///     enabled=True,
///     is_ipv6_enabled=True,
///     comment="Some comment",
///     default_root_object="index.html",
///     aliases=[
///         f"mysite.{my_domain}",
///         f"yoursite.{my_domain}",
///     ],
///     price_class="PriceClass_200",
///     tags={
///         "Environment": "production",
///     })
/// # See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// origin_bucket_policy = aws.iam.get_policy_document_output(statements=[{
///     "conditions": [{
///         "test": "StringEquals",
///         "variable": "AWS:SourceArn",
///         "values": [s3_distribution.arn],
///     }],
///     "principals": [{
///         "type": "Service",
///         "identifiers": ["cloudfront.amazonaws.com"],
///     }],
///     "sid": "AllowCloudFrontServicePrincipalReadWrite",
///     "effect": "Allow",
///     "actions": [
///         "s3:GetObject",
///         "s3:PutObject",
///     ],
///     "resources": [b.arn.apply(lambda arn: f"{arn}/*")],
/// }])
/// b_bucket_policy = aws.s3.BucketPolicy("b",
///     bucket=b.bucket,
///     policy=origin_bucket_policy.json)
/// # Create Route53 records for the CloudFront distribution aliases
/// my_domain_get_zone = aws.route53.get_zone(name=my_domain)
/// cloudfront: list[aws.route53.Record] = []
/// def create_cloudfront(range_body):
///     for cloudfront_range in [{"key": k, "value": v} for [k, v] in enumerate(range_body)]:
///         cloudfront.append(aws.route53.Record(f"cloudfront-{cloudfront_range['key']}",
///             aliases=[{
///                 "name": s3_distribution.domain_name,
///                 "zone_id": s3_distribution.hosted_zone_id,
///                 "evaluate_target_health": False,
///             }],
///             zone_id=my_domain_get_zone.zone_id,
///             name=cloudfront_range["value"],
///             type=aws.route53.RecordType.A))
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
///     var b = new Aws.S3.Bucket("b", new()
///     {
///         BucketName = "mybucket",
///         Tags =
///         {
///             { "Name", "My bucket" },
///         },
///     });
///
///     var s3OriginId = "myS3Origin";
///
///     var myDomain = "mydomain.com";
///
///     var myDomainGetCertificate = Aws.Acm.GetCertificate.Invoke(new()
///     {
///         Region = "us-east-1",
///         Domain = $"*.{myDomain}",
///         Statuses = new[]
///         {
///             "ISSUED",
///         },
///     });
///
///     var @default = new Aws.CloudFront.OriginAccessControl("default", new()
///     {
///         Name = "default-oac",
///         OriginAccessControlOriginType = "s3",
///         SigningBehavior = "always",
///         SigningProtocol = "sigv4",
///     });
///
///     var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
///     {
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
///         {
///             ForwardedValues = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorForwardedValuesArgs
///             {
///                 Cookies = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs
///                 {
///                     Forward = "none",
///                 },
///                 QueryString = false,
///             },
///             AllowedMethods = new[]
///             {
///                 "DELETE",
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///                 "PATCH",
///                 "POST",
///                 "PUT",
///             },
///             CachedMethods = new[]
///             {
///                 "GET",
///                 "HEAD",
///             },
///             TargetOriginId = s3OriginId,
///             ViewerProtocolPolicy = "allow-all",
///             MinTtl = 0,
///             DefaultTtl = 3600,
///             MaxTtl = 86400,
///         },
///         Restrictions = new Aws.CloudFront.Inputs.DistributionRestrictionsArgs
///         {
///             GeoRestriction = new Aws.CloudFront.Inputs.DistributionRestrictionsGeoRestrictionArgs
///             {
///                 RestrictionType = "whitelist",
///                 Locations = new[]
///                 {
///                     "US",
///                     "CA",
///                     "GB",
///                     "DE",
///                 },
///             },
///         },
///         ViewerCertificate = new Aws.CloudFront.Inputs.DistributionViewerCertificateArgs
///         {
///             AcmCertificateArn = myDomainGetCertificate.Apply(getCertificateResult => getCertificateResult.Arn),
///             SslSupportMethod = "sni-only",
///         },
///         OrderedCacheBehaviors = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorArgs
///             {
///                 ForwardedValues = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs
///                 {
///                     Cookies = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs
///                     {
///                         Forward = "none",
///                     },
///                     QueryString = false,
///                     Headers = new[]
///                     {
///                         "Origin",
///                     },
///                 },
///                 PathPattern = "/content/immutable/*",
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                 },
///                 CachedMethods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                 },
///                 TargetOriginId = s3OriginId,
///                 MinTtl = 0,
///                 DefaultTtl = 86400,
///                 MaxTtl = 31536000,
///                 Compress = true,
///                 ViewerProtocolPolicy = "redirect-to-https",
///             },
///             new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorArgs
///             {
///                 ForwardedValues = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs
///                 {
///                     Cookies = new Aws.CloudFront.Inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs
///                     {
///                         Forward = "none",
///                     },
///                     QueryString = false,
///                 },
///                 PathPattern = "/content/*",
///                 AllowedMethods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                 },
///                 CachedMethods = new[]
///                 {
///                     "GET",
///                     "HEAD",
///                 },
///                 TargetOriginId = s3OriginId,
///                 MinTtl = 0,
///                 DefaultTtl = 3600,
///                 MaxTtl = 86400,
///                 Compress = true,
///                 ViewerProtocolPolicy = "redirect-to-https",
///             },
///         },
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 DomainName = b.BucketRegionalDomainName,
///                 OriginAccessControlId = @default.Id,
///                 OriginId = s3OriginId,
///             },
///         },
///         Enabled = true,
///         IsIpv6Enabled = true,
///         Comment = "Some comment",
///         DefaultRootObject = "index.html",
///         Aliases = new[]
///         {
///             $"mysite.{myDomain}",
///             $"yoursite.{myDomain}",
///         },
///         PriceClass = "PriceClass_200",
///         Tags =
///         {
///             { "Environment", "production" },
///         },
///     });
///
///     // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
///     var originBucketPolicy = Aws.Iam.GetPolicyDocument.Invoke(new()
///     {
///         Statements = new[]
///         {
///             new Aws.Iam.Inputs.GetPolicyDocumentStatementInputArgs
///             {
///                 Conditions = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementConditionInputArgs
///                     {
///                         Test = "StringEquals",
///                         Variable = "AWS:SourceArn",
///                         Values = new[]
///                         {
///                             s3Distribution.Arn,
///                         },
///                     },
///                 },
///                 Principals = new[]
///                 {
///                     new Aws.Iam.Inputs.GetPolicyDocumentStatementPrincipalInputArgs
///                     {
///                         Type = "Service",
///                         Identifiers = new[]
///                         {
///                             "cloudfront.amazonaws.com",
///                         },
///                     },
///                 },
///                 Sid = "AllowCloudFrontServicePrincipalReadWrite",
///                 Effect = "Allow",
///                 Actions = new[]
///                 {
///                     "s3:GetObject",
///                     "s3:PutObject",
///                 },
///                 Resources = new[]
///                 {
///                     $"{b.Arn}/*",
///                 },
///             },
///         },
///     });
///
///     var bBucketPolicy = new Aws.S3.BucketPolicy("b", new()
///     {
///         Bucket = b.BucketName,
///         Policy = originBucketPolicy.Apply(getPolicyDocumentResult => getPolicyDocumentResult.Json),
///     });
///
///     // Create Route53 records for the CloudFront distribution aliases
///     var myDomainGetZone = Aws.Route53.GetZone.Invoke(new()
///     {
///         Name = myDomain,
///     });
///
///     var cloudfront = new List<Aws.Route53.Record>();
///     s3Distribution.Aliases.Apply(rangeBody =>
///     {
///         foreach (var range in )
///         {
///             cloudfront.Add(new Aws.Route53.Record($"cloudfront-{range.Key}", new()
///             {
///                 Aliases = new[]
///                 {
///                     new Aws.Route53.Inputs.RecordAliasArgs
///                     {
///                         Name = s3Distribution.DomainName,
///                         ZoneId = s3Distribution.HostedZoneId,
///                         EvaluateTargetHealth = false,
///                     },
///                 },
///                 ZoneId = myDomainGetZone.Apply(getZoneResult => getZoneResult.ZoneId),
///                 Name = range.Value,
///                 Type = Aws.Route53.RecordType.A,
///             }));
///         }
///         return 0;
///     });
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/acm"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/route53"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		b, err := s3.NewBucket(ctx, "b", &s3.BucketArgs{
/// 			Bucket: pulumi.String("mybucket"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("My bucket"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3OriginId := "myS3Origin"
/// 		myDomain := "mydomain.com"
/// 		myDomainGetCertificate, err := acm.LookupCertificate(ctx, &acm.LookupCertificateArgs{
/// 			Region: pulumi.StringRef("us-east-1"),
/// 			Domain: pulumi.StringRef(fmt.Sprintf("*.%v", myDomain)),
/// 			Statuses: []string{
/// 				"ISSUED",
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := cloudfront.NewOriginAccessControl(ctx, "default", &cloudfront.OriginAccessControlArgs{
/// 			Name:                          pulumi.String("default-oac"),
/// 			OriginAccessControlOriginType: pulumi.String("s3"),
/// 			SigningBehavior:               pulumi.String("always"),
/// 			SigningProtocol:               pulumi.String("sigv4"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		s3Distribution, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// 			DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// 				ForwardedValues: &cloudfront.DistributionDefaultCacheBehaviorForwardedValuesArgs{
/// 					Cookies: &cloudfront.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs{
/// 						Forward: pulumi.String("none"),
/// 					},
/// 					QueryString: pulumi.Bool(false),
/// 				},
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("DELETE"),
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 					pulumi.String("OPTIONS"),
/// 					pulumi.String("PATCH"),
/// 					pulumi.String("POST"),
/// 					pulumi.String("PUT"),
/// 				},
/// 				CachedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 				},
/// 				TargetOriginId:       pulumi.String(s3OriginId),
/// 				ViewerProtocolPolicy: pulumi.String("allow-all"),
/// 				MinTtl:               pulumi.Int(0),
/// 				DefaultTtl:           pulumi.Int(3600),
/// 				MaxTtl:               pulumi.Int(86400),
/// 			},
/// 			Restrictions: &cloudfront.DistributionRestrictionsArgs{
/// 				GeoRestriction: &cloudfront.DistributionRestrictionsGeoRestrictionArgs{
/// 					RestrictionType: pulumi.String("whitelist"),
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("US"),
/// 						pulumi.String("CA"),
/// 						pulumi.String("GB"),
/// 						pulumi.String("DE"),
/// 					},
/// 				},
/// 			},
/// 			ViewerCertificate: &cloudfront.DistributionViewerCertificateArgs{
/// 				AcmCertificateArn: pulumi.String(myDomainGetCertificate.Arn),
/// 				SslSupportMethod:  pulumi.String("sni-only"),
/// 			},
/// 			OrderedCacheBehaviors: cloudfront.DistributionOrderedCacheBehaviorArray{
/// 				&cloudfront.DistributionOrderedCacheBehaviorArgs{
/// 					ForwardedValues: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
/// 						Cookies: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
/// 							Forward: pulumi.String("none"),
/// 						},
/// 						QueryString: pulumi.Bool(false),
/// 						Headers: pulumi.StringArray{
/// 							pulumi.String("Origin"),
/// 						},
/// 					},
/// 					PathPattern: pulumi.String("/content/immutable/*"),
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("OPTIONS"),
/// 					},
/// 					CachedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("OPTIONS"),
/// 					},
/// 					TargetOriginId:       pulumi.String(s3OriginId),
/// 					MinTtl:               pulumi.Int(0),
/// 					DefaultTtl:           pulumi.Int(86400),
/// 					MaxTtl:               pulumi.Int(31536000),
/// 					Compress:             pulumi.Bool(true),
/// 					ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// 				},
/// 				&cloudfront.DistributionOrderedCacheBehaviorArgs{
/// 					ForwardedValues: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesArgs{
/// 						Cookies: &cloudfront.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs{
/// 							Forward: pulumi.String("none"),
/// 						},
/// 						QueryString: pulumi.Bool(false),
/// 					},
/// 					PathPattern: pulumi.String("/content/*"),
/// 					AllowedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 						pulumi.String("OPTIONS"),
/// 					},
/// 					CachedMethods: pulumi.StringArray{
/// 						pulumi.String("GET"),
/// 						pulumi.String("HEAD"),
/// 					},
/// 					TargetOriginId:       pulumi.String(s3OriginId),
/// 					MinTtl:               pulumi.Int(0),
/// 					DefaultTtl:           pulumi.Int(3600),
/// 					MaxTtl:               pulumi.Int(86400),
/// 					Compress:             pulumi.Bool(true),
/// 					ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// 				},
/// 			},
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					DomainName:            b.BucketRegionalDomainName,
/// 					OriginAccessControlId: _default.ID().ToIDOutput().ToStringOutput(),
/// 					OriginId:              pulumi.String(s3OriginId),
/// 				},
/// 			},
/// 			Enabled:           pulumi.Bool(true),
/// 			IsIpv6Enabled:     pulumi.Bool(true),
/// 			Comment:           pulumi.String("Some comment"),
/// 			DefaultRootObject: pulumi.String("index.html"),
/// 			Aliases: pulumi.StringArray{
/// 				pulumi.Sprintf("mysite.%v", myDomain),
/// 				pulumi.Sprintf("yoursite.%v", myDomain),
/// 			},
/// 			PriceClass: pulumi.String("PriceClass_200"),
/// 			Tags: pulumi.StringMap{
/// 				"Environment": pulumi.String("production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// 		originBucketPolicy := iam.GetPolicyDocumentOutput(ctx, iam.GetPolicyDocumentOutputArgs{
/// 			Statements: iam.GetPolicyDocumentStatementArray{
/// 				&iam.GetPolicyDocumentStatementArgs{
/// 					Conditions: iam.GetPolicyDocumentStatementConditionArray{
/// 						&iam.GetPolicyDocumentStatementConditionArgs{
/// 							Test:     pulumi.String("StringEquals"),
/// 							Variable: pulumi.String("AWS:SourceArn"),
/// 							Values: pulumi.StringArray{
/// 								s3Distribution.Arn,
/// 							},
/// 						},
/// 					},
/// 					Principals: iam.GetPolicyDocumentStatementPrincipalArray{
/// 						&iam.GetPolicyDocumentStatementPrincipalArgs{
/// 							Type: pulumi.String("Service"),
/// 							Identifiers: pulumi.StringArray{
/// 								pulumi.String("cloudfront.amazonaws.com"),
/// 							},
/// 						},
/// 					},
/// 					Sid:    pulumi.String("AllowCloudFrontServicePrincipalReadWrite"),
/// 					Effect: pulumi.String("Allow"),
/// 					Actions: pulumi.StringArray{
/// 						pulumi.String("s3:GetObject"),
/// 						pulumi.String("s3:PutObject"),
/// 					},
/// 					Resources: pulumi.StringArray{
/// 						b.Arn.ApplyT(func(arn string) (string, error) {
/// 							return fmt.Sprintf("%v/*", arn), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		_, err = s3.NewBucketPolicy(ctx, "b", &s3.BucketPolicyArgs{
/// 			Bucket: b.Bucket,
/// 			Policy: originBucketPolicy.Json(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Create Route53 records for the CloudFront distribution aliases
/// 		myDomainGetZone, err := route53.LookupZone(ctx, &route53.LookupZoneArgs{
/// 			Name: pulumi.StringRef(myDomain),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		var cloudfront2 []*route53.Record
/// 		for key0, val0 := range s3Distribution.Aliases {
/// 			__res, err := route53.NewRecord(ctx, fmt.Sprintf("cloudfront-%v", key0), &route53.RecordArgs{
/// 				Aliases: route53.RecordAliasArray{
/// 					&route53.RecordAliasArgs{
/// 						Name:                 s3Distribution.DomainName,
/// 						ZoneId:               s3Distribution.HostedZoneId,
/// 						EvaluateTargetHealth: pulumi.Bool(false),
/// 					},
/// 				},
/// 				ZoneId: pulumi.String(myDomainGetZone.ZoneId),
/// 				Name:   pulumi.String(val0),
/// 				Type:   pulumi.String(route53.RecordTypeA),
/// 			})
/// 			if err != nil {
/// 				return err
/// 			}
/// 			cloudfront2 = append(cloudfront2, __res)
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
/// data "aws_iam_getpolicydocument" "originBucketPolicy" {
///   statements {
///     conditions {
///       test     = "StringEquals"
///       variable = "AWS:SourceArn"
///       values   = [aws_cloudfront_distribution.s3_distribution.arn]
///     }
///     principals {
///       type        = "Service"
///       identifiers = ["cloudfront.amazonaws.com"]
///     }
///     sid       = "AllowCloudFrontServicePrincipalReadWrite"
///     effect    = "Allow"
///     actions   = ["s3:GetObject", "s3:PutObject"]
///     resources = ["${aws_s3_bucket.b.arn}/*"]
///   }
/// }
/// data "aws_acm_getcertificate" "myDomainGetCertificate" {
///   region   = "us-east-1"
///   domain   ="*.${local.myDomain}"
///   statuses = ["ISSUED"]
/// }
/// data "aws_route53_getzone" "myDomainGetZone" {
///   name = local.myDomain
/// }
///
/// resource "aws_s3_bucket" "b" {
///   bucket = "mybucket"
///   tags = {
///     "Name" = "My bucket"
///   }
/// }
/// resource "aws_s3_bucketpolicy" "b" {
///   bucket = aws_s3_bucket.b.bucket
///   policy = data.aws_iam_getpolicydocument.originBucketPolicy.json
/// }
/// resource "aws_cloudfront_originaccesscontrol" "default" {
///   name                              = "default-oac"
///   origin_access_control_origin_type = "s3"
///   signing_behavior                  = "always"
///   signing_protocol                  = "sigv4"
/// }
/// resource "aws_cloudfront_distribution" "s3_distribution" {
///   default_cache_behavior = {
///     forwarded_values = {
///       cookies = {
///         forward = "none"
///       }
///       query_string = false
///     }
///     allowed_methods        = ["DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT"]
///     cached_methods         = ["GET", "HEAD"]
///     target_origin_id       = local.s3OriginId
///     viewer_protocol_policy = "allow-all"
///     min_ttl                = 0
///     default_ttl            = 3600
///     max_ttl                = 86400
///   }
///   restrictions = {
///     geo_restriction = {
///       restriction_type = "whitelist"
///       locations        = ["US", "CA", "GB", "DE"]
///     }
///   }
///   viewer_certificate = {
///     acm_certificate_arn = data.aws_acm_getcertificate.myDomainGetCertificate.arn
///     ssl_support_method  = "sni-only"
///   }
///   ordered_cache_behaviors {
///     forwarded_values = {
///       cookies = {
///         forward = "none"
///       }
///       query_string = false
///       headers      = ["Origin"]
///     }
///     path_pattern           = "/content/immutable/*"
///     allowed_methods        = ["GET", "HEAD", "OPTIONS"]
///     cached_methods         = ["GET", "HEAD", "OPTIONS"]
///     target_origin_id       = local.s3OriginId
///     min_ttl                = 0
///     default_ttl            = 86400
///     max_ttl                = 31536000
///     compress               = true
///     viewer_protocol_policy = "redirect-to-https"
///   }
///   ordered_cache_behaviors {
///     forwarded_values = {
///       cookies = {
///         forward = "none"
///       }
///       query_string = false
///     }
///     path_pattern           = "/content/*"
///     allowed_methods        = ["GET", "HEAD", "OPTIONS"]
///     cached_methods         = ["GET", "HEAD"]
///     target_origin_id       = local.s3OriginId
///     min_ttl                = 0
///     default_ttl            = 3600
///     max_ttl                = 86400
///     compress               = true
///     viewer_protocol_policy = "redirect-to-https"
///   }
///   origins {
///     domain_name              = aws_s3_bucket.b.bucket_regional_domain_name
///     origin_access_control_id = aws_cloudfront_originaccesscontrol.default.id
///     origin_id                = local.s3OriginId
///   }
///   enabled             = true
///   is_ipv6_enabled     = true
///   comment             = "Some comment"
///   default_root_object = "index.html"
///   aliases             = ["mysite.${local.myDomain}", "yoursite.${local.myDomain}"]
///   price_class         = "PriceClass_200"
///   tags = {
///     "Environment" = "production"
///   }
/// }
/// resource "aws_route53_record" "cloudfront" {
///   for_each = aws_cloudfront_distribution.s3_distribution.aliases
///   aliases {
///     name                   = aws_cloudfront_distribution.s3_distribution.domain_name
///     zone_id                = aws_cloudfront_distribution.s3_distribution.hosted_zone_id
///     evaluate_target_health = false
///   }
///   zone_id = data.aws_route53_getzone.myDomainGetZone.zone_id
///   name    = each.value
///   type    = "A"
/// }
/// # See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
/// locals {
///   s3OriginId = "myS3Origin"
/// }
/// locals {
///   myDomain = "mydomain.com"
/// }
/// # Create Route53 records for the CloudFront distribution aliases
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
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorForwardedValuesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorForwardedValuesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.iam.IamFunctions;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementConditionArgs;
/// import com.pulumi.aws.iam.inputs.GetPolicyDocumentStatementPrincipalArgs;
/// import com.pulumi.aws.s3.BucketPolicy;
/// import com.pulumi.aws.s3.BucketPolicyArgs;
/// import com.pulumi.aws.route53.Route53Functions;
/// import com.pulumi.aws.route53.inputs.GetZoneArgs;
/// import com.pulumi.aws.route53.Record;
/// import com.pulumi.aws.route53.RecordArgs;
/// import com.pulumi.aws.route53.inputs.RecordAliasArgs;
/// import com.pulumi.codegen.internal.KeyedValue;
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
///         var b = new Bucket("b", BucketArgs.builder()
///             .bucket("mybucket")
///             .tags(Map.of("Name", "My bucket"))
///             .build());
///
///         final var s3OriginId = "myS3Origin";
///
///         final var myDomain = "mydomain.com";
///
///         final var myDomainGetCertificate = AcmFunctions.getCertificate(GetCertificateArgs.builder()
///             .region("us-east-1")
///             .domain(String.format("*.%s", myDomain))
///             .statuses("ISSUED")
///             .build());
///
///         var default_ = new OriginAccessControl("default", OriginAccessControlArgs.builder()
///             .name("default-oac")
///             .originAccessControlOriginType("s3")
///             .signingBehavior("always")
///             .signingProtocol("sigv4")
///             .build());
///
///         var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
///             .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
///                 .forwardedValues(DistributionDefaultCacheBehaviorForwardedValuesArgs.builder()
///                     .cookies(DistributionDefaultCacheBehaviorForwardedValuesCookiesArgs.builder()
///                         .forward("none")
///                         .build())
///                     .queryString(false)
///                     .build())
///                 .allowedMethods(
///                     "DELETE",
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                     "PATCH",
///                     "POST",
///                     "PUT")
///                 .cachedMethods(
///                     "GET",
///                     "HEAD")
///                 .targetOriginId(s3OriginId)
///                 .viewerProtocolPolicy("allow-all")
///                 .minTtl(0)
///                 .defaultTtl(3600)
///                 .maxTtl(86400)
///                 .build())
///             .restrictions(DistributionRestrictionsArgs.builder()
///                 .geoRestriction(DistributionRestrictionsGeoRestrictionArgs.builder()
///                     .restrictionType("whitelist")
///                     .locations(
///                         "US",
///                         "CA",
///                         "GB",
///                         "DE")
///                     .build())
///                 .build())
///             .viewerCertificate(DistributionViewerCertificateArgs.builder()
///                 .acmCertificateArn(myDomainGetCertificate.arn())
///                 .sslSupportMethod("sni-only")
///                 .build())
///             .orderedCacheBehaviors(
///                 DistributionOrderedCacheBehaviorArgs.builder()
///                     .forwardedValues(DistributionOrderedCacheBehaviorForwardedValuesArgs.builder()
///                         .cookies(DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs.builder()
///                             .forward("none")
///                             .build())
///                         .queryString(false)
///                         .headers("Origin")
///                         .build())
///                     .pathPattern("/content/immutable/*")
///                     .allowedMethods(
///                         "GET",
///                         "HEAD",
///                         "OPTIONS")
///                     .cachedMethods(
///                         "GET",
///                         "HEAD",
///                         "OPTIONS")
///                     .targetOriginId(s3OriginId)
///                     .minTtl(0)
///                     .defaultTtl(86400)
///                     .maxTtl(31536000)
///                     .compress(true)
///                     .viewerProtocolPolicy("redirect-to-https")
///                     .build(),
///                 DistributionOrderedCacheBehaviorArgs.builder()
///                     .forwardedValues(DistributionOrderedCacheBehaviorForwardedValuesArgs.builder()
///                         .cookies(DistributionOrderedCacheBehaviorForwardedValuesCookiesArgs.builder()
///                             .forward("none")
///                             .build())
///                         .queryString(false)
///                         .build())
///                     .pathPattern("/content/*")
///                     .allowedMethods(
///                         "GET",
///                         "HEAD",
///                         "OPTIONS")
///                     .cachedMethods(
///                         "GET",
///                         "HEAD")
///                     .targetOriginId(s3OriginId)
///                     .minTtl(0)
///                     .defaultTtl(3600)
///                     .maxTtl(86400)
///                     .compress(true)
///                     .viewerProtocolPolicy("redirect-to-https")
///                     .build())
///             .origins(DistributionOriginArgs.builder()
///                 .domainName(b.bucketRegionalDomainName())
///                 .originAccessControlId(default_.id())
///                 .originId(s3OriginId)
///                 .build())
///             .enabled(true)
///             .isIpv6Enabled(true)
///             .comment("Some comment")
///             .defaultRootObject("index.html")
///             .aliases(
///                 String.format("mysite.%s", myDomain),
///                 String.format("yoursite.%s", myDomain))
///             .priceClass("PriceClass_200")
///             .tags(Map.of("Environment", "production"))
///             .build());
///
///         // See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
///         final var originBucketPolicy = IamFunctions.getPolicyDocument(GetPolicyDocumentArgs.builder()
///             .statements(GetPolicyDocumentStatementArgs.builder()
///                 .conditions(GetPolicyDocumentStatementConditionArgs.builder()
///                     .test("StringEquals")
///                     .variable("AWS:SourceArn")
///                     .values(s3Distribution.arn())
///                     .build())
///                 .principals(GetPolicyDocumentStatementPrincipalArgs.builder()
///                     .type("Service")
///                     .identifiers("cloudfront.amazonaws.com")
///                     .build())
///                 .sid("AllowCloudFrontServicePrincipalReadWrite")
///                 .effect("Allow")
///                 .actions(
///                     "s3:GetObject",
///                     "s3:PutObject")
///                 .resources(b.arn().applyValue(_arn -> String.format("%s/*", _arn)))
///                 .build())
///             .build());
///
///         var bBucketPolicy = new BucketPolicy("bBucketPolicy", BucketPolicyArgs.builder()
///             .bucket(b.bucket())
///             .policy(originBucketPolicy.applyValue(_originBucketPolicy -> _originBucketPolicy.json()))
///             .build());
///
///         // Create Route53 records for the CloudFront distribution aliases
///         final var myDomainGetZone = Route53Functions.getZone(GetZoneArgs.builder()
///             .name(myDomain)
///             .build());
///
///         for (var range : KeyedValue.of(s3Distribution.aliases())) {
///             new Record("cloudfront-" + range.key(), RecordArgs.builder()
///                 .aliases(RecordAliasArgs.builder()
///                     .name(s3Distribution.domainName())
///                     .zoneId(s3Distribution.hostedZoneId())
///                     .evaluateTargetHealth(false)
///                     .build())
///                 .zoneId(myDomainGetZone.zoneId())
///                 .name(range.value())
///                 .type("A")
///                 .build());
///         }
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   b:
///     type: aws:s3:Bucket
///     properties:
///       bucket: mybucket
///       tags:
///         Name: My bucket
///   bBucketPolicy:
///     type: aws:s3:BucketPolicy
///     name: b
///     properties:
///       bucket: ${b.bucket}
///       policy: ${originBucketPolicy.json}
///   default:
///     type: aws:cloudfront:OriginAccessControl
///     properties:
///       name: default-oac
///       originAccessControlOriginType: s3
///       signingBehavior: always
///       signingProtocol: sigv4
///   s3Distribution:
///     type: aws:cloudfront:Distribution
///     name: s3_distribution
///     properties:
///       defaultCacheBehavior:
///         forwardedValues:
///           cookies:
///             forward: none
///           queryString: false
///         allowedMethods:
///           - DELETE
///           - GET
///           - HEAD
///           - OPTIONS
///           - PATCH
///           - POST
///           - PUT
///         cachedMethods:
///           - GET
///           - HEAD
///         targetOriginId: ${s3OriginId}
///         viewerProtocolPolicy: allow-all
///         minTtl: 0
///         defaultTtl: 3600
///         maxTtl: 86400
///       restrictions:
///         geoRestriction:
///           restrictionType: whitelist
///           locations:
///             - US
///             - CA
///             - GB
///             - DE
///       viewerCertificate:
///         acmCertificateArn: ${myDomainGetCertificate.arn}
///         sslSupportMethod: sni-only
///       orderedCacheBehaviors:
///         - forwardedValues:
///             cookies:
///               forward: none
///             queryString: false
///             headers:
///               - Origin
///           pathPattern: /content/immutable/*
///           allowedMethods:
///             - GET
///             - HEAD
///             - OPTIONS
///           cachedMethods:
///             - GET
///             - HEAD
///             - OPTIONS
///           targetOriginId: ${s3OriginId}
///           minTtl: 0
///           defaultTtl: 86400
///           maxTtl: 3.1536e+07
///           compress: true
///           viewerProtocolPolicy: redirect-to-https
///         - forwardedValues:
///             cookies:
///               forward: none
///             queryString: false
///           pathPattern: /content/*
///           allowedMethods:
///             - GET
///             - HEAD
///             - OPTIONS
///           cachedMethods:
///             - GET
///             - HEAD
///           targetOriginId: ${s3OriginId}
///           minTtl: 0
///           defaultTtl: 3600
///           maxTtl: 86400
///           compress: true
///           viewerProtocolPolicy: redirect-to-https
///       origins:
///         - domainName: ${b.bucketRegionalDomainName}
///           originAccessControlId: ${default.id}
///           originId: ${s3OriginId}
///       enabled: true
///       isIpv6Enabled: true
///       comment: Some comment
///       defaultRootObject: index.html
///       aliases:
///         - mysite.${myDomain}
///         - yoursite.${myDomain}
///       priceClass: PriceClass_200
///       tags:
///         Environment: production
///   cloudfront:
///     type: aws:route53:Record
///     properties:
///       aliases:
///         - name: ${s3Distribution.domainName}
///           zoneId: ${s3Distribution.hostedZoneId}
///           evaluateTargetHealth: false
///       zoneId: ${myDomainGetZone.zoneId}
///       name: ${range.value}
///       type: A
///     options: {}
/// variables:
///   # See https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/private-content-restricting-access-to-s3.html
///   originBucketPolicy:
///     fn::invoke:
///       function: aws:iam:getPolicyDocument
///       arguments:
///         statements:
///           - conditions:
///               - test: StringEquals
///                 variable: AWS:SourceArn
///                 values:
///                   - ${s3Distribution.arn}
///             principals:
///               - type: Service
///                 identifiers:
///                   - cloudfront.amazonaws.com
///             sid: AllowCloudFrontServicePrincipalReadWrite
///             effect: Allow
///             actions:
///               - s3:GetObject
///               - s3:PutObject
///             resources:
///               - ${b.arn}/*
///   s3OriginId: myS3Origin
///   myDomain: mydomain.com
///   myDomainGetCertificate:
///     fn::invoke:
///       function: aws:acm:getCertificate
///       arguments:
///         region: us-east-1
///         domain: '*.${myDomain}'
///         statuses:
///           - ISSUED
///   # Create Route53 records for the CloudFront distribution aliases
///   myDomainGetZone:
///     fn::invoke:
///       function: aws:route53:getZone
///       arguments:
///         name: ${myDomain}
/// ```
///
///
/// ### With Failover Routing
///
/// The example below creates a CloudFront distribution with an origin group for failover routing.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
///     defaultCacheBehavior: {
///         targetOriginId: "groupS3",
///     },
///     originGroups: [{
///         failoverCriteria: {
///             statusCodes: [
///                 403,
///                 404,
///                 500,
///                 502,
///             ],
///         },
///         members: [
///             {
///                 originId: "primaryS3",
///             },
///             {
///                 originId: "failoverS3",
///             },
///         ],
///         originId: "groupS3",
///     }],
///     origins: [
///         {
///             s3OriginConfig: {
///                 originAccessIdentity: _default.cloudfrontAccessIdentityPath,
///             },
///             domainName: primary.bucketRegionalDomainName,
///             originId: "primaryS3",
///         },
///         {
///             s3OriginConfig: {
///                 originAccessIdentity: _default.cloudfrontAccessIdentityPath,
///             },
///             domainName: failover.bucketRegionalDomainName,
///             originId: "failoverS3",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
///     default_cache_behavior={
///         "target_origin_id": "groupS3",
///     },
///     origin_groups=[{
///         "failover_criteria": {
///             "status_codes": [
///                 403,
///                 404,
///                 500,
///                 502,
///             ],
///         },
///         "members": [
///             {
///                 "origin_id": "primaryS3",
///             },
///             {
///                 "origin_id": "failoverS3",
///             },
///         ],
///         "origin_id": "groupS3",
///     }],
///     origins=[
///         {
///             "s3_origin_config": {
///                 "origin_access_identity": default["cloudfrontAccessIdentityPath"],
///             },
///             "domain_name": primary["bucketRegionalDomainName"],
///             "origin_id": "primaryS3",
///         },
///         {
///             "s3_origin_config": {
///                 "origin_access_identity": default["cloudfrontAccessIdentityPath"],
///             },
///             "domain_name": failover["bucketRegionalDomainName"],
///             "origin_id": "failoverS3",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
///     {
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
///         {
///             TargetOriginId = "groupS3",
///         },
///         OriginGroups = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginGroupArgs
///             {
///                 FailoverCriteria = new Aws.CloudFront.Inputs.DistributionOriginGroupFailoverCriteriaArgs
///                 {
///                     StatusCodes = new[]
///                     {
///                         403,
///                         404,
///                         500,
///                         502,
///                     },
///                 },
///                 Members = new[]
///                 {
///                     new Aws.CloudFront.Inputs.DistributionOriginGroupMemberArgs
///                     {
///                         OriginId = "primaryS3",
///                     },
///                     new Aws.CloudFront.Inputs.DistributionOriginGroupMemberArgs
///                     {
///                         OriginId = "failoverS3",
///                     },
///                 },
///                 OriginId = "groupS3",
///             },
///         },
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
///                 {
///                     OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
///                 },
///                 DomainName = primary.BucketRegionalDomainName,
///                 OriginId = "primaryS3",
///             },
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
///                 {
///                     OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
///                 },
///                 DomainName = failover.BucketRegionalDomainName,
///                 OriginId = "failoverS3",
///             },
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
/// 		_, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// 			DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// 				TargetOriginId: pulumi.String("groupS3"),
/// 			},
/// 			OriginGroups: cloudfront.DistributionOriginGroupArray{
/// 				&cloudfront.DistributionOriginGroupArgs{
/// 					FailoverCriteria: &cloudfront.DistributionOriginGroupFailoverCriteriaArgs{
/// 						StatusCodes: pulumi.IntArray{
/// 							pulumi.Int(403),
/// 							pulumi.Int(404),
/// 							pulumi.Int(500),
/// 							pulumi.Int(502),
/// 						},
/// 					},
/// 					Members: cloudfront.DistributionOriginGroupMemberArray{
/// 						&cloudfront.DistributionOriginGroupMemberArgs{
/// 							OriginId: pulumi.String("primaryS3"),
/// 						},
/// 						&cloudfront.DistributionOriginGroupMemberArgs{
/// 							OriginId: pulumi.String("failoverS3"),
/// 						},
/// 					},
/// 					OriginId: pulumi.String("groupS3"),
/// 				},
/// 			},
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// 						OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// 					},
/// 					DomainName: pulumi.Any(primary.BucketRegionalDomainName),
/// 					OriginId:   pulumi.String("primaryS3"),
/// 				},
/// 				&cloudfront.DistributionOriginArgs{
/// 					S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// 						OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// 					},
/// 					DomainName: pulumi.Any(failover.BucketRegionalDomainName),
/// 					OriginId:   pulumi.String("failoverS3"),
/// 				},
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
/// resource "aws_cloudfront_distribution" "s3_distribution" {
///   default_cache_behavior = {
///     target_origin_id = "groupS3"
///   }
///   # ... other configuration ...
///   origin_groups {
///     failover_criteria = {
///       status_codes = [403, 404, 500, 502]
///     }
///     members {
///       origin_id = "primaryS3"
///     }
///     members {
///       origin_id = "failoverS3"
///     }
///     origin_id = "groupS3"
///   }
///   origins {
///     s3_origin_config = {
///       origin_access_identity = default.cloudfrontAccessIdentityPath
///     }
///     domain_name = primary.bucketRegionalDomainName
///     origin_id   = "primaryS3"
///   }
///   origins {
///     s3_origin_config = {
///       origin_access_identity = default.cloudfrontAccessIdentityPath
///     }
///     domain_name = failover.bucketRegionalDomainName
///     origin_id   = "failoverS3"
///   }
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
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginGroupArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginGroupFailoverCriteriaArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginGroupMemberArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginS3OriginConfigArgs;
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
///         var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
///             .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
///                 .targetOriginId("groupS3")
///                 .build())
///             .originGroups(DistributionOriginGroupArgs.builder()
///                 .failoverCriteria(DistributionOriginGroupFailoverCriteriaArgs.builder()
///                     .statusCodes(
///                         403,
///                         404,
///                         500,
///                         502)
///                     .build())
///                 .members(
///                     DistributionOriginGroupMemberArgs.builder()
///                         .originId("primaryS3")
///                         .build(),
///                     DistributionOriginGroupMemberArgs.builder()
///                         .originId("failoverS3")
///                         .build())
///                 .originId("groupS3")
///                 .build())
///             .origins(
///                 DistributionOriginArgs.builder()
///                     .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
///                         .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
///                         .build())
///                     .domainName(primary.bucketRegionalDomainName())
///                     .originId("primaryS3")
///                     .build(),
///                 DistributionOriginArgs.builder()
///                     .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
///                         .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
///                         .build())
///                     .domainName(failover.bucketRegionalDomainName())
///                     .originId("failoverS3")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3Distribution:
///     type: aws:cloudfront:Distribution
///     name: s3_distribution
///     properties:
///       defaultCacheBehavior:
///         targetOriginId: groupS3
///       originGroups:
///         - failoverCriteria:
///             statusCodes:
///               - 403
///               - 404
///               - 500
///               - 502
///           members:
///             - originId: primaryS3
///             - originId: failoverS3
///           originId: groupS3
///       origins:
///         - s3OriginConfig:
///             originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
///           domainName: ${primary.bucketRegionalDomainName}
///           originId: primaryS3
///         - s3OriginConfig:
///             originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
///           domainName: ${failover.bucketRegionalDomainName}
///           originId: failoverS3
/// ```
///
///
/// ### With Managed Caching Policy
///
/// The example below creates a CloudFront distribution with an [AWS managed caching policy](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/using-managed-cache-policies.html).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const s3OriginId = "myS3Origin";
/// const s3Distribution = new aws.cloudfront.Distribution("s3_distribution", {
///     defaultCacheBehavior: {
///         cachePolicyId: "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
///         allowedMethods: [
///             "GET",
///             "HEAD",
///             "OPTIONS",
///         ],
///         cachedMethods: [
///             "GET",
///             "HEAD",
///         ],
///         targetOriginId: s3OriginId,
///         viewerProtocolPolicy: "allow-all",
///     },
///     restrictions: {
///         geoRestriction: {
///             restrictionType: "whitelist",
///             locations: [
///                 "US",
///                 "CA",
///                 "GB",
///                 "DE",
///             ],
///         },
///     },
///     viewerCertificate: {
///         cloudfrontDefaultCertificate: true,
///     },
///     origins: [{
///         s3OriginConfig: {
///             originAccessIdentity: _default.cloudfrontAccessIdentityPath,
///         },
///         domainName: primary.bucketRegionalDomainName,
///         originId: "myS3Origin",
///     }],
///     enabled: true,
///     isIpv6Enabled: true,
///     comment: "Some comment",
///     defaultRootObject: "index.html",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// s3_origin_id = "myS3Origin"
/// s3_distribution = aws.cloudfront.Distribution("s3_distribution",
///     default_cache_behavior={
///         "cache_policy_id": "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
///         "allowed_methods": [
///             "GET",
///             "HEAD",
///             "OPTIONS",
///         ],
///         "cached_methods": [
///             "GET",
///             "HEAD",
///         ],
///         "target_origin_id": s3_origin_id,
///         "viewer_protocol_policy": "allow-all",
///     },
///     restrictions={
///         "geo_restriction": {
///             "restriction_type": "whitelist",
///             "locations": [
///                 "US",
///                 "CA",
///                 "GB",
///                 "DE",
///             ],
///         },
///     },
///     viewer_certificate={
///         "cloudfront_default_certificate": True,
///     },
///     origins=[{
///         "s3_origin_config": {
///             "origin_access_identity": default["cloudfrontAccessIdentityPath"],
///         },
///         "domain_name": primary["bucketRegionalDomainName"],
///         "origin_id": "myS3Origin",
///     }],
///     enabled=True,
///     is_ipv6_enabled=True,
///     comment="Some comment",
///     default_root_object="index.html")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var s3OriginId = "myS3Origin";
///
///     var s3Distribution = new Aws.CloudFront.Distribution("s3_distribution", new()
///     {
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
///         {
///             CachePolicyId = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad",
///             AllowedMethods = new[]
///             {
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///             },
///             CachedMethods = new[]
///             {
///                 "GET",
///                 "HEAD",
///             },
///             TargetOriginId = s3OriginId,
///             ViewerProtocolPolicy = "allow-all",
///         },
///         Restrictions = new Aws.CloudFront.Inputs.DistributionRestrictionsArgs
///         {
///             GeoRestriction = new Aws.CloudFront.Inputs.DistributionRestrictionsGeoRestrictionArgs
///             {
///                 RestrictionType = "whitelist",
///                 Locations = new[]
///                 {
///                     "US",
///                     "CA",
///                     "GB",
///                     "DE",
///                 },
///             },
///         },
///         ViewerCertificate = new Aws.CloudFront.Inputs.DistributionViewerCertificateArgs
///         {
///             CloudfrontDefaultCertificate = true,
///         },
///         Origins = new[]
///         {
///             new Aws.CloudFront.Inputs.DistributionOriginArgs
///             {
///                 S3OriginConfig = new Aws.CloudFront.Inputs.DistributionOriginS3OriginConfigArgs
///                 {
///                     OriginAccessIdentity = @default.CloudfrontAccessIdentityPath,
///                 },
///                 DomainName = primary.BucketRegionalDomainName,
///                 OriginId = "myS3Origin",
///             },
///         },
///         Enabled = true,
///         IsIpv6Enabled = true,
///         Comment = "Some comment",
///         DefaultRootObject = "index.html",
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
/// 		s3OriginId := "myS3Origin"
/// 		_, err := cloudfront.NewDistribution(ctx, "s3_distribution", &cloudfront.DistributionArgs{
/// 			DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// 				CachePolicyId: pulumi.String("4135ea2d-6df8-44a3-9df3-4b5a84be39ad"),
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 					pulumi.String("OPTIONS"),
/// 				},
/// 				CachedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 				},
/// 				TargetOriginId:       pulumi.String(s3OriginId),
/// 				ViewerProtocolPolicy: pulumi.String("allow-all"),
/// 			},
/// 			Restrictions: &cloudfront.DistributionRestrictionsArgs{
/// 				GeoRestriction: &cloudfront.DistributionRestrictionsGeoRestrictionArgs{
/// 					RestrictionType: pulumi.String("whitelist"),
/// 					Locations: pulumi.StringArray{
/// 						pulumi.String("US"),
/// 						pulumi.String("CA"),
/// 						pulumi.String("GB"),
/// 						pulumi.String("DE"),
/// 					},
/// 				},
/// 			},
/// 			ViewerCertificate: &cloudfront.DistributionViewerCertificateArgs{
/// 				CloudfrontDefaultCertificate: pulumi.Bool(true),
/// 			},
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					S3OriginConfig: &cloudfront.DistributionOriginS3OriginConfigArgs{
/// 						OriginAccessIdentity: pulumi.Any(_default.CloudfrontAccessIdentityPath),
/// 					},
/// 					DomainName: pulumi.Any(primary.BucketRegionalDomainName),
/// 					OriginId:   pulumi.String("myS3Origin"),
/// 				},
/// 			},
/// 			Enabled:           pulumi.Bool(true),
/// 			IsIpv6Enabled:     pulumi.Bool(true),
/// 			Comment:           pulumi.String("Some comment"),
/// 			DefaultRootObject: pulumi.String("index.html"),
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
/// resource "aws_cloudfront_distribution" "s3_distribution" {
///   default_cache_behavior = {
///     cache_policy_id        = "4135ea2d-6df8-44a3-9df3-4b5a84be39ad"
///     allowed_methods        = ["GET", "HEAD", "OPTIONS"]
///     cached_methods         = ["GET", "HEAD"]
///     target_origin_id       = local.s3OriginId
///     viewer_protocol_policy = "allow-all"
///   }
///   # Using the CachingDisabled managed policy ID:
///   restrictions = {
///     geo_restriction = {
///       restriction_type = "whitelist"
///       locations        = ["US", "CA", "GB", "DE"]
///     }
///   }
///   viewer_certificate = {
///     cloudfront_default_certificate = true
///   }
///   origins {
///     s3_origin_config = {
///       origin_access_identity = default.cloudfrontAccessIdentityPath
///     }
///     domain_name = primary.bucketRegionalDomainName
///     origin_id   = "myS3Origin"
///   }
///   enabled             = true
///   is_ipv6_enabled     = true
///   comment             = "Some comment"
///   default_root_object = "index.html"
/// }
/// locals {
///   s3OriginId = "myS3Origin"
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
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginS3OriginConfigArgs;
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
///         final var s3OriginId = "myS3Origin";
///
///         var s3Distribution = new Distribution("s3Distribution", DistributionArgs.builder()
///             .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
///                 .cachePolicyId("4135ea2d-6df8-44a3-9df3-4b5a84be39ad")
///                 .allowedMethods(
///                     "GET",
///                     "HEAD",
///                     "OPTIONS")
///                 .cachedMethods(
///                     "GET",
///                     "HEAD")
///                 .targetOriginId(s3OriginId)
///                 .viewerProtocolPolicy("allow-all")
///                 .build())
///             .restrictions(DistributionRestrictionsArgs.builder()
///                 .geoRestriction(DistributionRestrictionsGeoRestrictionArgs.builder()
///                     .restrictionType("whitelist")
///                     .locations(
///                         "US",
///                         "CA",
///                         "GB",
///                         "DE")
///                     .build())
///                 .build())
///             .viewerCertificate(DistributionViewerCertificateArgs.builder()
///                 .cloudfrontDefaultCertificate(true)
///                 .build())
///             .origins(DistributionOriginArgs.builder()
///                 .s3OriginConfig(DistributionOriginS3OriginConfigArgs.builder()
///                     .originAccessIdentity(default_.cloudfrontAccessIdentityPath())
///                     .build())
///                 .domainName(primary.bucketRegionalDomainName())
///                 .originId("myS3Origin")
///                 .build())
///             .enabled(true)
///             .isIpv6Enabled(true)
///             .comment("Some comment")
///             .defaultRootObject("index.html")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   s3Distribution:
///     type: aws:cloudfront:Distribution
///     name: s3_distribution
///     properties:
///       defaultCacheBehavior:
///         cachePolicyId: 4135ea2d-6df8-44a3-9df3-4b5a84be39ad
///         allowedMethods:
///           - GET
///           - HEAD
///           - OPTIONS
///         cachedMethods:
///           - GET
///           - HEAD
///         targetOriginId: ${s3OriginId}
///         viewerProtocolPolicy: allow-all
///       restrictions:
///         geoRestriction:
///           restrictionType: whitelist
///           locations:
///             - US
///             - CA
///             - GB
///             - DE
///       viewerCertificate:
///         cloudfrontDefaultCertificate: true
///       origins:
///         - s3OriginConfig:
///             originAccessIdentity: ${default.cloudfrontAccessIdentityPath}
///           domainName: ${primary.bucketRegionalDomainName}
///           originId: myS3Origin
///       enabled: true
///       isIpv6Enabled: true
///       comment: Some comment
///       defaultRootObject: index.html
/// variables:
///   s3OriginId: myS3Origin
/// ```
///
///
/// ### With V2 logging to S3
///
/// The example below creates a CloudFront distribution with [standard logging V2 to S3](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {});
/// const exampleLogDeliverySource = new aws.cloudwatch.LogDeliverySource("example", {
///     region: "us-east-1",
///     name: "example",
///     logType: "ACCESS_LOGS",
///     resourceArn: example.arn,
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {
///     bucket: "testbucket",
///     forceDestroy: true,
/// });
/// const exampleLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("example", {
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: pulumi.interpolate`${exampleBucket.arn}/prefix`,
///     },
///     region: "us-east-1",
///     name: "s3-destination",
///     outputFormat: "parquet",
/// });
/// const exampleLogDelivery = new aws.cloudwatch.LogDelivery("example", {
///     s3DeliveryConfigurations: [{
///         suffixPath: "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
///     }],
///     region: "us-east-1",
///     deliverySourceName: exampleLogDeliverySource.name,
///     deliveryDestinationArn: exampleLogDeliveryDestination.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example")
/// example_log_delivery_source = aws.cloudwatch.LogDeliverySource("example",
///     region="us-east-1",
///     name="example",
///     log_type="ACCESS_LOGS",
///     resource_arn=example.arn)
/// example_bucket = aws.s3.Bucket("example",
///     bucket="testbucket",
///     force_destroy=True)
/// example_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("example",
///     delivery_destination_configuration={
///         "destination_resource_arn": example_bucket.arn.apply(lambda arn: f"{arn}/prefix"),
///     },
///     region="us-east-1",
///     name="s3-destination",
///     output_format="parquet")
/// example_log_delivery = aws.cloudwatch.LogDelivery("example",
///     s3_delivery_configurations=[{
///         "suffix_path": "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
///     }],
///     region="us-east-1",
///     delivery_source_name=example_log_delivery_source.name,
///     delivery_destination_arn=example_log_delivery_destination.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.Distribution("example");
///
///     var exampleLogDeliverySource = new Aws.CloudWatch.LogDeliverySource("example", new()
///     {
///         Region = "us-east-1",
///         Name = "example",
///         LogType = "ACCESS_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "testbucket",
///         ForceDestroy = true,
///     });
///
///     var exampleLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("example", new()
///     {
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = exampleBucket.Arn.Apply(arn => $"{arn}/prefix"),
///         },
///         Region = "us-east-1",
///         Name = "s3-destination",
///         OutputFormat = "parquet",
///     });
///
///     var exampleLogDelivery = new Aws.CloudWatch.LogDelivery("example", new()
///     {
///         S3DeliveryConfigurations = new[]
///         {
///             new Aws.CloudWatch.Inputs.LogDeliveryS3DeliveryConfigurationArgs
///             {
///                 SuffixPath = "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}",
///             },
///         },
///         Region = "us-east-1",
///         DeliverySourceName = exampleLogDeliverySource.Name,
///         DeliveryDestinationArn = exampleLogDeliveryDestination.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudfront.NewDistribution(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogDeliverySource, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// 			Region:      pulumi.String("us-east-1"),
/// 			Name:        pulumi.String("example"),
/// 			LogType:     pulumi.String("ACCESS_LOGS"),
/// 			ResourceArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket:       pulumi.String("testbucket"),
/// 			ForceDestroy: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// 			DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// 				DestinationResourceArn: exampleBucket.Arn.ApplyT(func(arn string) (string, error) {
/// 					return fmt.Sprintf("%v/prefix", arn), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Region:       pulumi.String("us-east-1"),
/// 			Name:         pulumi.String("s3-destination"),
/// 			OutputFormat: pulumi.String("parquet"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// 			S3DeliveryConfigurations: cloudwatch.LogDeliveryS3DeliveryConfigurationArray{
/// 				&cloudwatch.LogDeliveryS3DeliveryConfigurationArgs{
/// 					SuffixPath: pulumi.String("/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}"),
/// 				},
/// 			},
/// 			Region:                 pulumi.String("us-east-1"),
/// 			DeliverySourceName:     exampleLogDeliverySource.Name,
/// 			DeliveryDestinationArn: exampleLogDeliveryDestination.Arn,
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
/// resource "aws_cloudfront_distribution" "example" {
/// }
/// resource "aws_cloudwatch_logdeliverysource" "example" {
///   region       = "us-east-1"
///   name         = "example"
///   log_type     = "ACCESS_LOGS"
///   resource_arn = aws_cloudfront_distribution.example.arn
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket        = "testbucket"
///   force_destroy = true
/// }
/// resource "aws_cloudwatch_logdeliverydestination" "example" {
///   delivery_destination_configuration = {
///     destination_resource_arn ="${aws_s3_bucket.example.arn}/prefix"
///   }
///   region        = "us-east-1"
///   name          = "s3-destination"
///   output_format = "parquet"
/// }
/// resource "aws_cloudwatch_logdelivery" "example" {
///   s3_delivery_configurations {
///     suffix_path = "/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}"
///   }
///   region                   = "us-east-1"
///   delivery_source_name     = aws_cloudwatch_logdeliverysource.example.name
///   delivery_destination_arn = aws_cloudwatch_logdeliverydestination.example.arn
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
///         var example = new Distribution("example");
///
///         var exampleLogDeliverySource = new LogDeliverySource("exampleLogDeliverySource", LogDeliverySourceArgs.builder()
///             .region("us-east-1")
///             .name("example")
///             .logType("ACCESS_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("testbucket")
///             .forceDestroy(true)
///             .build());
///
///         var exampleLogDeliveryDestination = new LogDeliveryDestination("exampleLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(exampleBucket.arn().applyValue(_arn -> String.format("%s/prefix", _arn)))
///                 .build())
///             .region("us-east-1")
///             .name("s3-destination")
///             .outputFormat("parquet")
///             .build());
///
///         var exampleLogDelivery = new LogDelivery("exampleLogDelivery", LogDeliveryArgs.builder()
///             .s3DeliveryConfigurations(LogDeliveryS3DeliveryConfigurationArgs.builder()
///                 .suffixPath("/123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}")
///                 .build())
///             .region("us-east-1")
///             .deliverySourceName(exampleLogDeliverySource.name())
///             .deliveryDestinationArn(exampleLogDeliveryDestination.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:Distribution
///   exampleLogDeliverySource:
///     type: aws:cloudwatch:LogDeliverySource
///     name: example
///     properties:
///       region: us-east-1
///       name: example
///       logType: ACCESS_LOGS
///       resourceArn: ${example.arn}
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: testbucket
///       forceDestroy: true
///   exampleLogDeliveryDestination:
///     type: aws:cloudwatch:LogDeliveryDestination
///     name: example
///     properties:
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${exampleBucket.arn}/prefix
///       region: us-east-1
///       name: s3-destination
///       outputFormat: parquet
///   exampleLogDelivery:
///     type: aws:cloudwatch:LogDelivery
///     name: example
///     properties:
///       s3DeliveryConfigurations:
///         - suffixPath: /123456678910/{DistributionId}/{yyyy}/{MM}/{dd}/{HH}
///       region: us-east-1
///       deliverySourceName: ${exampleLogDeliverySource.name}
///       deliveryDestinationArn: ${exampleLogDeliveryDestination.arn}
/// ```
///
///
/// ### With V2 logging to Data Firehose
///
/// The example below creates a CloudFront distribution with [standard logging V2 to Data Firehose](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/standard-logging.html#enable-access-logging-api).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.Distribution("example", {});
/// const cloudfrontLogs = new aws.kinesis.FirehoseDeliveryStream("cloudfront_logs", {
///     region: "us-east-1",
///     tags: {
///         LogDeliveryEnabled: "true",
///     },
/// });
/// const exampleLogDeliverySource = new aws.cloudwatch.LogDeliverySource("example", {
///     region: "us-east-1",
///     name: "cloudfront-logs-source",
///     logType: "ACCESS_LOGS",
///     resourceArn: example.arn,
/// });
/// const exampleLogDeliveryDestination = new aws.cloudwatch.LogDeliveryDestination("example", {
///     deliveryDestinationConfiguration: {
///         destinationResourceArn: cloudfrontLogs.arn,
///     },
///     region: "us-east-1",
///     name: "firehose-destination",
///     outputFormat: "json",
/// });
/// const exampleLogDelivery = new aws.cloudwatch.LogDelivery("example", {
///     region: "us-east-1",
///     deliverySourceName: exampleLogDeliverySource.name,
///     deliveryDestinationArn: exampleLogDeliveryDestination.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.Distribution("example")
/// cloudfront_logs = aws.kinesis.FirehoseDeliveryStream("cloudfront_logs",
///     region="us-east-1",
///     tags={
///         "LogDeliveryEnabled": "true",
///     })
/// example_log_delivery_source = aws.cloudwatch.LogDeliverySource("example",
///     region="us-east-1",
///     name="cloudfront-logs-source",
///     log_type="ACCESS_LOGS",
///     resource_arn=example.arn)
/// example_log_delivery_destination = aws.cloudwatch.LogDeliveryDestination("example",
///     delivery_destination_configuration={
///         "destination_resource_arn": cloudfront_logs.arn,
///     },
///     region="us-east-1",
///     name="firehose-destination",
///     output_format="json")
/// example_log_delivery = aws.cloudwatch.LogDelivery("example",
///     region="us-east-1",
///     delivery_source_name=example_log_delivery_source.name,
///     delivery_destination_arn=example_log_delivery_destination.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudFront.Distribution("example");
///
///     var cloudfrontLogs = new Aws.Kinesis.FirehoseDeliveryStream("cloudfront_logs", new()
///     {
///         Region = "us-east-1",
///         Tags =
///         {
///             { "LogDeliveryEnabled", "true" },
///         },
///     });
///
///     var exampleLogDeliverySource = new Aws.CloudWatch.LogDeliverySource("example", new()
///     {
///         Region = "us-east-1",
///         Name = "cloudfront-logs-source",
///         LogType = "ACCESS_LOGS",
///         ResourceArn = example.Arn,
///     });
///
///     var exampleLogDeliveryDestination = new Aws.CloudWatch.LogDeliveryDestination("example", new()
///     {
///         DeliveryDestinationConfiguration = new Aws.CloudWatch.Inputs.LogDeliveryDestinationDeliveryDestinationConfigurationArgs
///         {
///             DestinationResourceArn = cloudfrontLogs.Arn,
///         },
///         Region = "us-east-1",
///         Name = "firehose-destination",
///         OutputFormat = "json",
///     });
///
///     var exampleLogDelivery = new Aws.CloudWatch.LogDelivery("example", new()
///     {
///         Region = "us-east-1",
///         DeliverySourceName = exampleLogDeliverySource.Name,
///         DeliveryDestinationArn = exampleLogDeliveryDestination.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := cloudfront.NewDistribution(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cloudfrontLogs, err := kinesis.NewFirehoseDeliveryStream(ctx, "cloudfront_logs", &kinesis.FirehoseDeliveryStreamArgs{
/// 			Region: pulumi.String("us-east-1"),
/// 			Tags: pulumi.StringMap{
/// 				"LogDeliveryEnabled": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogDeliverySource, err := cloudwatch.NewLogDeliverySource(ctx, "example", &cloudwatch.LogDeliverySourceArgs{
/// 			Region:      pulumi.String("us-east-1"),
/// 			Name:        pulumi.String("cloudfront-logs-source"),
/// 			LogType:     pulumi.String("ACCESS_LOGS"),
/// 			ResourceArn: example.Arn,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleLogDeliveryDestination, err := cloudwatch.NewLogDeliveryDestination(ctx, "example", &cloudwatch.LogDeliveryDestinationArgs{
/// 			DeliveryDestinationConfiguration: &cloudwatch.LogDeliveryDestinationDeliveryDestinationConfigurationArgs{
/// 				DestinationResourceArn: cloudfrontLogs.Arn,
/// 			},
/// 			Region:       pulumi.String("us-east-1"),
/// 			Name:         pulumi.String("firehose-destination"),
/// 			OutputFormat: pulumi.String("json"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewLogDelivery(ctx, "example", &cloudwatch.LogDeliveryArgs{
/// 			Region:                 pulumi.String("us-east-1"),
/// 			DeliverySourceName:     exampleLogDeliverySource.Name,
/// 			DeliveryDestinationArn: exampleLogDeliveryDestination.Arn,
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
/// resource "aws_cloudfront_distribution" "example" {
/// }
/// resource "aws_kinesis_firehosedeliverystream" "cloudfront_logs" {
///   region = "us-east-1"
///   tags = {
///     "LogDeliveryEnabled" = "true"
///   }
/// }
/// resource "aws_cloudwatch_logdeliverysource" "example" {
///   region       = "us-east-1"
///   name         = "cloudfront-logs-source"
///   log_type     = "ACCESS_LOGS"
///   resource_arn = aws_cloudfront_distribution.example.arn
/// }
/// resource "aws_cloudwatch_logdeliverydestination" "example" {
///   delivery_destination_configuration = {
///     destination_resource_arn = aws_kinesis_firehosedeliverystream.cloudfront_logs.arn
///   }
///   region        = "us-east-1"
///   name          = "firehose-destination"
///   output_format = "json"
/// }
/// resource "aws_cloudwatch_logdelivery" "example" {
///   region                   = "us-east-1"
///   delivery_source_name     = aws_cloudwatch_logdeliverysource.example.name
///   delivery_destination_arn = aws_cloudwatch_logdeliverydestination.example.arn
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
///         var example = new Distribution("example");
///
///         var cloudfrontLogs = new FirehoseDeliveryStream("cloudfrontLogs", FirehoseDeliveryStreamArgs.builder()
///             .region("us-east-1")
///             .tags(Map.of("LogDeliveryEnabled", "true"))
///             .build());
///
///         var exampleLogDeliverySource = new LogDeliverySource("exampleLogDeliverySource", LogDeliverySourceArgs.builder()
///             .region("us-east-1")
///             .name("cloudfront-logs-source")
///             .logType("ACCESS_LOGS")
///             .resourceArn(example.arn())
///             .build());
///
///         var exampleLogDeliveryDestination = new LogDeliveryDestination("exampleLogDeliveryDestination", LogDeliveryDestinationArgs.builder()
///             .deliveryDestinationConfiguration(LogDeliveryDestinationDeliveryDestinationConfigurationArgs.builder()
///                 .destinationResourceArn(cloudfrontLogs.arn())
///                 .build())
///             .region("us-east-1")
///             .name("firehose-destination")
///             .outputFormat("json")
///             .build());
///
///         var exampleLogDelivery = new LogDelivery("exampleLogDelivery", LogDeliveryArgs.builder()
///             .region("us-east-1")
///             .deliverySourceName(exampleLogDeliverySource.name())
///             .deliveryDestinationArn(exampleLogDeliveryDestination.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:Distribution
///   cloudfrontLogs:
///     type: aws:kinesis:FirehoseDeliveryStream
///     name: cloudfront_logs
///     properties:
///       region: us-east-1
///       tags:
///         LogDeliveryEnabled: 'true'
///   exampleLogDeliverySource:
///     type: aws:cloudwatch:LogDeliverySource
///     name: example
///     properties:
///       region: us-east-1
///       name: cloudfront-logs-source
///       logType: ACCESS_LOGS
///       resourceArn: ${example.arn}
///   exampleLogDeliveryDestination:
///     type: aws:cloudwatch:LogDeliveryDestination
///     name: example
///     properties:
///       deliveryDestinationConfiguration:
///         destinationResourceArn: ${cloudfrontLogs.arn}
///       region: us-east-1
///       name: firehose-destination
///       outputFormat: json
///   exampleLogDelivery:
///     type: aws:cloudwatch:LogDelivery
///     name: example
///     properties:
///       region: us-east-1
///       deliverySourceName: ${exampleLogDeliverySource.name}
///       deliveryDestinationArn: ${exampleLogDeliveryDestination.arn}
/// ```
///
///
/// ### With Connection Function and Viewer mTLS
///
/// The example below creates a CloudFront distribution with a connection function association and viewer mTLS configuration.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudfront.ConnectionFunction("example", {name: "example-connection-function"});
/// const exampleTrustStore = new aws.cloudfront.TrustStore("example", {name: "example-trust-store"});
/// const exampleDistribution = new aws.cloudfront.Distribution("example", {
///     connectionFunctionAssociation: {
///         id: example.id,
///     },
///     viewerMtlsConfig: {
///         trustStoreConfig: {
///             trustStoreId: exampleTrustStore.id,
///             advertiseTrustStoreCaNames: true,
///             ignoreCertificateExpiry: false,
///         },
///         mode: "verify",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudfront.ConnectionFunction("example", name="example-connection-function")
/// example_trust_store = aws.cloudfront.TrustStore("example", name="example-trust-store")
/// example_distribution = aws.cloudfront.Distribution("example",
///     connection_function_association={
///         "id": example.id,
///     },
///     viewer_mtls_config={
///         "trust_store_config": {
///             "trust_store_id": example_trust_store.id,
///             "advertise_trust_store_ca_names": True,
///             "ignore_certificate_expiry": False,
///         },
///         "mode": "verify",
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
///     var example = new Aws.CloudFront.ConnectionFunction("example", new()
///     {
///         Name = "example-connection-function",
///     });
///
///     var exampleTrustStore = new Aws.CloudFront.TrustStore("example", new()
///     {
///         Name = "example-trust-store",
///     });
///
///     var exampleDistribution = new Aws.CloudFront.Distribution("example", new()
///     {
///         ConnectionFunctionAssociation = new Aws.CloudFront.Inputs.DistributionConnectionFunctionAssociationArgs
///         {
///             Id = example.Id,
///         },
///         ViewerMtlsConfig = new Aws.CloudFront.Inputs.DistributionViewerMtlsConfigArgs
///         {
///             TrustStoreConfig = new Aws.CloudFront.Inputs.DistributionViewerMtlsConfigTrustStoreConfigArgs
///             {
///                 TrustStoreId = exampleTrustStore.Id,
///                 AdvertiseTrustStoreCaNames = true,
///                 IgnoreCertificateExpiry = false,
///             },
///             Mode = "verify",
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
/// 		example, err := cloudfront.NewConnectionFunction(ctx, "example", &cloudfront.ConnectionFunctionArgs{
/// 			Name: pulumi.String("example-connection-function"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTrustStore, err := cloudfront.NewTrustStore(ctx, "example", &cloudfront.TrustStoreArgs{
/// 			Name: pulumi.String("example-trust-store"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewDistribution(ctx, "example", &cloudfront.DistributionArgs{
/// 			ConnectionFunctionAssociation: &cloudfront.DistributionConnectionFunctionAssociationArgs{
/// 				Id: example.ID().ToIDOutput().ToStringOutput(),
/// 			},
/// 			ViewerMtlsConfig: &cloudfront.DistributionViewerMtlsConfigArgs{
/// 				TrustStoreConfig: &cloudfront.DistributionViewerMtlsConfigTrustStoreConfigArgs{
/// 					TrustStoreId:               exampleTrustStore.ID().ToIDOutput().ToStringOutput(),
/// 					AdvertiseTrustStoreCaNames: pulumi.Bool(true),
/// 					IgnoreCertificateExpiry:    pulumi.Bool(false),
/// 				},
/// 				Mode: pulumi.String("verify"),
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
/// resource "aws_cloudfront_connectionfunction" "example" {
///   name = "example-connection-function"
/// }
/// resource "aws_cloudfront_truststore" "example" {
///   name = "example-trust-store"
/// }
/// resource "aws_cloudfront_distribution" "example" {
///   connection_function_association = {
///     id = aws_cloudfront_connectionfunction.example.id
///   }
///   viewer_mtls_config = {
///     trust_store_config = {
///       trust_store_id                 = aws_cloudfront_truststore.example.id
///       advertise_trust_store_ca_names = true
///       ignore_certificate_expiry      = false
///     }
///     mode = "verify"
///   }
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
///         var example = new ConnectionFunction("example", ConnectionFunctionArgs.builder()
///             .name("example-connection-function")
///             .build());
///
///         var exampleTrustStore = new TrustStore("exampleTrustStore", TrustStoreArgs.builder()
///             .name("example-trust-store")
///             .build());
///
///         var exampleDistribution = new Distribution("exampleDistribution", DistributionArgs.builder()
///             .connectionFunctionAssociation(DistributionConnectionFunctionAssociationArgs.builder()
///                 .id(example.id())
///                 .build())
///             .viewerMtlsConfig(DistributionViewerMtlsConfigArgs.builder()
///                 .trustStoreConfig(DistributionViewerMtlsConfigTrustStoreConfigArgs.builder()
///                     .trustStoreId(exampleTrustStore.id())
///                     .advertiseTrustStoreCaNames(true)
///                     .ignoreCertificateExpiry(false)
///                     .build())
///                 .mode("verify")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudfront:ConnectionFunction
///     properties:
///       name: example-connection-function
///   exampleTrustStore:
///     type: aws:cloudfront:TrustStore
///     name: example
///     properties:
///       name: example-trust-store
///   exampleDistribution:
///     type: aws:cloudfront:Distribution
///     name: example
///     properties:
///       connectionFunctionAssociation:
///         id: ${example.id}
///       viewerMtlsConfig:
///         trustStoreConfig:
///           trustStoreId: ${exampleTrustStore.id}
///           advertiseTrustStoreCaNames: true
///           ignoreCertificateExpiry: false
///         mode: verify
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) CloudFront distribution ID.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import CloudFront Distributions using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudfront/distribution:Distribution distribution E74FTE3EXAMPLE
/// ```
class Distribution extends pulumi.CustomResource {
  /// Extra CNAMEs (alternate domain names), if any, for this distribution.
  late final pulumi.Output<List<String>?> aliases;
  /// ID of the Anycast static IP list that is associated with the distribution.
  late final pulumi.Output<String?> anycastIpListId;
  /// ARN for the distribution. For example: `arn:aws:cloudfront::123456789012:distribution/EDFDVBD632BHDS5`, where `123456789012` is your AWS account ID.
  late final pulumi.Output<String> arn;
  /// Cache tag configuration block for cache tag extraction from origin responses (maximum one). See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/invalidation-by-tags.html) for more information about cache tags.
  late final pulumi.Output<DistributionCacheTagConfig?> cacheTagConfig;
  /// Internal value used by CloudFront to allow future updates to the distribution configuration.
  late final pulumi.Output<String> callerReference;
  /// Any comments you want to include about the distribution.
  late final pulumi.Output<String?> comment;
  /// A connection function association configuration block (maximum one).
  late final pulumi.Output<DistributionConnectionFunctionAssociation?> connectionFunctionAssociation;
  /// Identifier of a continuous deployment policy. This argument should only be set on a production distribution. See the `aws.cloudfront.ContinuousDeploymentPolicy` resource for additional details.
  late final pulumi.Output<String> continuousDeploymentPolicyId;
  /// One or more custom error response elements (multiples allowed).
  late final pulumi.Output<List<DistributionCustomErrorResponse>?> customErrorResponses;
  /// Default cache behavior for this distribution (maximum one). Requires either `cachePolicyId` (preferred) or `forwardedValues` (deprecated) be set.
  late final pulumi.Output<DistributionDefaultCacheBehavior> defaultCacheBehavior;
  /// Object that you want CloudFront to return (for example, index.html) when an end user requests the root URL.
  late final pulumi.Output<String?> defaultRootObject;
  /// Domain name corresponding to the distribution. For example: `d604721fxaaqy9.cloudfront.net`.
  late final pulumi.Output<String> domainName;
  /// Whether the distribution is enabled to accept end user requests for content.
  late final pulumi.Output<bool> enabled;
  /// Current version of the distribution's information. For example: `E2QWRUHAPOMQZL`.
  late final pulumi.Output<String> etag;
  /// CloudFront Route 53 zone ID that can be used to route an [Alias Resource Record Set](http://docs.aws.amazon.com/Route53/latest/APIReference/CreateAliasRRSAPI.html) to. This attribute is simply an alias for the zone ID `Z2FDTNDATAQYW2`.
  late final pulumi.Output<String> hostedZoneId;
  /// Maximum HTTP version to support on the distribution. Allowed values are `http1.1`, `http2`, `http2and3` and `http3`. The default is `http2`.
  late final pulumi.Output<String?> httpVersion;
  /// Number of invalidation batches currently in progress.
  late final pulumi.Output<int> inProgressValidationBatches;
  /// Whether the IPv6 is enabled for the distribution.
  late final pulumi.Output<bool?> isIpv6Enabled;
  /// Date and time the distribution was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// The logging configuration that controls how logs are written to your distribution (maximum one). AWS provides two versions of access logs for CloudFront: Legacy and v2. This argument configures legacy version standard logs.
  late final pulumi.Output<DistributionLoggingConfig?> loggingConfig;
  /// Whether V1 logging is enabled for the distribution.
  late final pulumi.Output<bool> loggingV1Enabled;
  /// Ordered list of cache behaviors resource for this distribution. List from top to bottom in order of precedence. The topmost cache behavior will have precedence 0.
  late final pulumi.Output<List<DistributionOrderedCacheBehavior>?> orderedCacheBehaviors;
  /// One or more originGroup for this distribution (multiples allowed).
  late final pulumi.Output<List<DistributionOriginGroup>?> originGroups;
  /// One or more origins for this distribution (multiples allowed).
  late final pulumi.Output<List<DistributionOrigin>> origins;
  /// Price class for this distribution. One of `PriceClass_All`, `PriceClass_200`, `PriceClass_100`.
  late final pulumi.Output<String?> priceClass;
  /// The restriction configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionRestrictions> restrictions;
  /// Disables the distribution instead of deleting it when destroying the resource through the provider. If this is set, the distribution needs to be deleted manually afterwards. Default: `false`.
  late final pulumi.Output<bool?> retainOnDelete;
  /// A Boolean that indicates whether this is a staging distribution. Defaults to `false`.
  late final pulumi.Output<bool?> staging;
  /// Current status of the distribution. `Deployed` if the distribution's information is fully propagated throughout the Amazon CloudFront system.
  late final pulumi.Output<String> status;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// List of nested attributes for active trusted key groups, if the distribution is set up to serve private content with signed URLs.
  late final pulumi.Output<List<DistributionTrustedKeyGroup>> trustedKeyGroups;
  /// List of nested attributes for active trusted signers, if the distribution is set up to serve private content with signed URLs.
  late final pulumi.Output<List<DistributionTrustedSigner>> trustedSigners;
  /// The SSL configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionViewerCertificate> viewerCertificate;
  /// The viewer mTLS configuration for this distribution (maximum one).
  late final pulumi.Output<DistributionViewerMtlsConfig?> viewerMtlsConfig;
  /// If enabled, the resource will wait for the distribution status to change from `InProgress` to `Deployed`. Setting this to`false` will skip the process. Default: `true`.
  late final pulumi.Output<bool?> waitForDeployment;
  /// Unique identifier that specifies the AWS WAF web ACL, if any, to associate with this distribution. To specify a web ACL created using the latest version of AWS WAF (WAFv2), use the ACL ARN, for example `aws_wafv2_web_acl.example.arn`. To specify a web ACL created using AWS WAF Classic, use the ACL ID, for example `aws_waf_web_acl.example.id`. The WAF Web ACL must exist in the WAF Global (CloudFront) region and the credentials configuring this argument must have `waf:GetWebACL` permissions assigned.
  late final pulumi.Output<String?> webAclId;

  /// Creates a new [Distribution].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Distribution]. {@macro pulumi_cloudfront_distribution_distribution_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Distribution(
    String name, {
    DistributionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distribution:Distribution',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    aliases = registerOutput<List<String>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    anycastIpListId = registerOutput<String?>('anycastIpListId');
    arn = registerOutput<String>('arn');
    cacheTagConfig = registerOutput<DistributionCacheTagConfig?>('cacheTagConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionCacheTagConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    connectionFunctionAssociation = registerOutput<DistributionConnectionFunctionAssociation?>('connectionFunctionAssociation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionConnectionFunctionAssociation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    continuousDeploymentPolicyId = registerOutput<String>('continuousDeploymentPolicyId');
    customErrorResponses = registerOutput<List<DistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionCustomErrorResponse>(guardedValue, (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<DistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    httpVersion = registerOutput<String?>('httpVersion');
    inProgressValidationBatches = registerOutput<int>('inProgressValidationBatches');
    isIpv6Enabled = registerOutput<bool?>('isIpv6Enabled');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    loggingConfig = registerOutput<DistributionLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingV1Enabled = registerOutput<bool>('loggingV1Enabled');
    orderedCacheBehaviors = registerOutput<List<DistributionOrderedCacheBehavior>?>('orderedCacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(guardedValue, (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    originGroups = registerOutput<List<DistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOriginGroup>(guardedValue, (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<DistributionOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrigin>(guardedValue, (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    priceClass = registerOutput<String?>('priceClass');
    restrictions = registerOutput<DistributionRestrictions>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainOnDelete = registerOutput<bool?>('retainOnDelete');
    staging = registerOutput<bool?>('staging');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedKeyGroups = registerOutput<List<DistributionTrustedKeyGroup>>('trustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedKeyGroup>(guardedValue, (value) => DistributionTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    trustedSigners = registerOutput<List<DistributionTrustedSigner>>('trustedSigners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedSigner>(guardedValue, (value) => DistributionTrustedSigner.fromMap((value as Map).cast<String, dynamic>())); });
    viewerCertificate = registerOutput<DistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerMtlsConfig = registerOutput<DistributionViewerMtlsConfig?>('viewerMtlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForDeployment = registerOutput<bool?>('waitForDeployment');
    webAclId = registerOutput<String?>('webAclId');
  }

  /// Gets an existing [Distribution] resource's state with the given [name] and [id].
  static Distribution get(
    String name,
    pulumi.Input<String> id, {
    DistributionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Distribution._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Distribution._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudfront/distribution:Distribution',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aliases = registerOutput<List<String>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    anycastIpListId = registerOutput<String?>('anycastIpListId');
    arn = registerOutput<String>('arn');
    cacheTagConfig = registerOutput<DistributionCacheTagConfig?>('cacheTagConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionCacheTagConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    connectionFunctionAssociation = registerOutput<DistributionConnectionFunctionAssociation?>('connectionFunctionAssociation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionConnectionFunctionAssociation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    continuousDeploymentPolicyId = registerOutput<String>('continuousDeploymentPolicyId');
    customErrorResponses = registerOutput<List<DistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionCustomErrorResponse>(guardedValue, (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<DistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    httpVersion = registerOutput<String?>('httpVersion');
    inProgressValidationBatches = registerOutput<int>('inProgressValidationBatches');
    isIpv6Enabled = registerOutput<bool?>('isIpv6Enabled');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    loggingConfig = registerOutput<DistributionLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingV1Enabled = registerOutput<bool>('loggingV1Enabled');
    orderedCacheBehaviors = registerOutput<List<DistributionOrderedCacheBehavior>?>('orderedCacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(guardedValue, (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    originGroups = registerOutput<List<DistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOriginGroup>(guardedValue, (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<DistributionOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrigin>(guardedValue, (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    priceClass = registerOutput<String?>('priceClass');
    restrictions = registerOutput<DistributionRestrictions>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainOnDelete = registerOutput<bool?>('retainOnDelete');
    staging = registerOutput<bool?>('staging');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedKeyGroups = registerOutput<List<DistributionTrustedKeyGroup>>('trustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedKeyGroup>(guardedValue, (value) => DistributionTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    trustedSigners = registerOutput<List<DistributionTrustedSigner>>('trustedSigners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedSigner>(guardedValue, (value) => DistributionTrustedSigner.fromMap((value as Map).cast<String, dynamic>())); });
    viewerCertificate = registerOutput<DistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerMtlsConfig = registerOutput<DistributionViewerMtlsConfig?>('viewerMtlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForDeployment = registerOutput<bool?>('waitForDeployment');
    webAclId = registerOutput<String?>('webAclId');
  }

  /// Creates a typed reference to an existing [Distribution] resource.
  Distribution.reference(String urn)
    : super(
        'aws:cloudfront/distribution:Distribution',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    aliases = registerOutput<List<String>?>('aliases', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    anycastIpListId = registerOutput<String?>('anycastIpListId');
    arn = registerOutput<String>('arn');
    cacheTagConfig = registerOutput<DistributionCacheTagConfig?>('cacheTagConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionCacheTagConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    callerReference = registerOutput<String>('callerReference');
    comment = registerOutput<String?>('comment');
    connectionFunctionAssociation = registerOutput<DistributionConnectionFunctionAssociation?>('connectionFunctionAssociation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionConnectionFunctionAssociation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    continuousDeploymentPolicyId = registerOutput<String>('continuousDeploymentPolicyId');
    customErrorResponses = registerOutput<List<DistributionCustomErrorResponse>?>('customErrorResponses', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionCustomErrorResponse>(guardedValue, (value) => DistributionCustomErrorResponse.fromMap((value as Map).cast<String, dynamic>())); });
    defaultCacheBehavior = registerOutput<DistributionDefaultCacheBehavior>('defaultCacheBehavior', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionDefaultCacheBehavior.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    defaultRootObject = registerOutput<String?>('defaultRootObject');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool>('enabled');
    etag = registerOutput<String>('etag');
    hostedZoneId = registerOutput<String>('hostedZoneId');
    httpVersion = registerOutput<String?>('httpVersion');
    inProgressValidationBatches = registerOutput<int>('inProgressValidationBatches');
    isIpv6Enabled = registerOutput<bool?>('isIpv6Enabled');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    loggingConfig = registerOutput<DistributionLoggingConfig?>('loggingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionLoggingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingV1Enabled = registerOutput<bool>('loggingV1Enabled');
    orderedCacheBehaviors = registerOutput<List<DistributionOrderedCacheBehavior>?>('orderedCacheBehaviors', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrderedCacheBehavior>(guardedValue, (value) => DistributionOrderedCacheBehavior.fromMap((value as Map).cast<String, dynamic>())); });
    originGroups = registerOutput<List<DistributionOriginGroup>?>('originGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOriginGroup>(guardedValue, (value) => DistributionOriginGroup.fromMap((value as Map).cast<String, dynamic>())); });
    origins = registerOutput<List<DistributionOrigin>>('origins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionOrigin>(guardedValue, (value) => DistributionOrigin.fromMap((value as Map).cast<String, dynamic>())); });
    priceClass = registerOutput<String?>('priceClass');
    restrictions = registerOutput<DistributionRestrictions>('restrictions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionRestrictions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    retainOnDelete = registerOutput<bool?>('retainOnDelete');
    staging = registerOutput<bool?>('staging');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    trustedKeyGroups = registerOutput<List<DistributionTrustedKeyGroup>>('trustedKeyGroups', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedKeyGroup>(guardedValue, (value) => DistributionTrustedKeyGroup.fromMap((value as Map).cast<String, dynamic>())); });
    trustedSigners = registerOutput<List<DistributionTrustedSigner>>('trustedSigners', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DistributionTrustedSigner>(guardedValue, (value) => DistributionTrustedSigner.fromMap((value as Map).cast<String, dynamic>())); });
    viewerCertificate = registerOutput<DistributionViewerCertificate>('viewerCertificate', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerCertificate.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    viewerMtlsConfig = registerOutput<DistributionViewerMtlsConfig?>('viewerMtlsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DistributionViewerMtlsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    waitForDeployment = registerOutput<bool?>('waitForDeployment');
    webAclId = registerOutput<String?>('webAclId');
  }
}
