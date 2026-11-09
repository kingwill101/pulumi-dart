import 'package:pulumi/pulumi.dart' as pulumi;
import 'function_endpoint_args.dart';
import 'function_endpoint_revision_weight.dart';
import 'function_endpoint_scaling_config.dart';
import 'function_endpoint_state.dart';
import 'function_endpoint_throttle_config.dart';
import 'function_endpoint_timeouts.dart';

/// Manages an AWS Lambda Web function endpoint. An endpoint exposes the web function over HTTPS and routes traffic to one or more revisions.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambdaweb.FunctionEndpoint("example", {
///     functionName: exampleAwsLambdawebFunctionRevision.functionName,
///     endpointName: "canary",
///     endpointType: "HomeRegion",
///     authType: "ApplicationManaged",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdaweb.FunctionEndpoint("example",
///     function_name=example_aws_lambdaweb_function_revision["functionName"],
///     endpoint_name="canary",
///     endpoint_type="HomeRegion",
///     auth_type="ApplicationManaged")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LambdaWeb.FunctionEndpoint("example", new()
///     {
///         FunctionName = exampleAwsLambdawebFunctionRevision.FunctionName,
///         EndpointName = "canary",
///         EndpointType = "HomeRegion",
///         AuthType = "ApplicationManaged",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdaweb.NewFunctionEndpoint(ctx, "example", &lambdaweb.FunctionEndpointArgs{
/// 			FunctionName: pulumi.Any(exampleAwsLambdawebFunctionRevision.FunctionName),
/// 			EndpointName: pulumi.String("canary"),
/// 			EndpointType: pulumi.String("HomeRegion"),
/// 			AuthType:     pulumi.String("ApplicationManaged"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambdaweb_function_endpoint" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   function_name = exampleAwsLambdawebFunctionRevision.functionName
///   endpoint_name = "canary"
///   endpoint_type = "HomeRegion"
///   auth_type     = "ApplicationManaged"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.FunctionEndpoint;
/// import com.pulumi.aws.lambdaweb.FunctionEndpointArgs;
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
///         var example = new FunctionEndpoint("example", FunctionEndpointArgs.builder()
///             .functionName(exampleAwsLambdawebFunctionRevision.get("functionName"))
///             .endpointName("canary")
///             .endpointType("HomeRegion")
///             .authType("ApplicationManaged")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdaweb:FunctionEndpoint
///     properties:
///       functionName: ${exampleAwsLambdawebFunctionRevision.functionName}
///       endpointName: canary
///       endpointType: HomeRegion
///       authType: ApplicationManaged
/// ```
///
///
/// ### Weighted (Canary) Routing
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.lambdaweb.FunctionEndpoint("example", {
///     revisionWeights: [
///         {
///             revisionId: exampleAwsLambdawebFunctionRevision[0].revisionId,
///             weight: 90,
///         },
///         {
///             revisionId: exampleAwsLambdawebFunctionRevision[1].revisionId,
///             weight: 10,
///         },
///     ],
///     functionName: exampleAwsLambdawebFunction.functionName,
///     endpointName: "prod",
///     endpointType: "MultiRegion",
///     regions: [
///         "us-east-1",
///         "eu-west-1",
///     ],
///     authType: "IamAuth",
///     autoDeploymentMode: "Disabled",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.lambdaweb.FunctionEndpoint("example",
///     revision_weights=[
///         {
///             "revision_id": example_aws_lambdaweb_function_revision[0]["revisionId"],
///             "weight": 90,
///         },
///         {
///             "revision_id": example_aws_lambdaweb_function_revision[1]["revisionId"],
///             "weight": 10,
///         },
///     ],
///     function_name=example_aws_lambdaweb_function["functionName"],
///     endpoint_name="prod",
///     endpoint_type="MultiRegion",
///     regions=[
///         "us-east-1",
///         "eu-west-1",
///     ],
///     auth_type="IamAuth",
///     auto_deployment_mode="Disabled")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LambdaWeb.FunctionEndpoint("example", new()
///     {
///         RevisionWeights = new[]
///         {
///             new Aws.LambdaWeb.Inputs.FunctionEndpointRevisionWeightArgs
///             {
///                 RevisionId = exampleAwsLambdawebFunctionRevision[0].RevisionId,
///                 Weight = 90,
///             },
///             new Aws.LambdaWeb.Inputs.FunctionEndpointRevisionWeightArgs
///             {
///                 RevisionId = exampleAwsLambdawebFunctionRevision[1].RevisionId,
///                 Weight = 10,
///             },
///         },
///         FunctionName = exampleAwsLambdawebFunction.FunctionName,
///         EndpointName = "prod",
///         EndpointType = "MultiRegion",
///         Regions = new[]
///         {
///             "us-east-1",
///             "eu-west-1",
///         },
///         AuthType = "IamAuth",
///         AutoDeploymentMode = "Disabled",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := lambdaweb.NewFunctionEndpoint(ctx, "example", &lambdaweb.FunctionEndpointArgs{
/// 			RevisionWeights: lambdaweb.FunctionEndpointRevisionWeightArray{
/// 				&lambdaweb.FunctionEndpointRevisionWeightArgs{
/// 					RevisionId: pulumi.Any(exampleAwsLambdawebFunctionRevision[0].RevisionId),
/// 					Weight:     pulumi.Int(90),
/// 				},
/// 				&lambdaweb.FunctionEndpointRevisionWeightArgs{
/// 					RevisionId: pulumi.Any(exampleAwsLambdawebFunctionRevision[1].RevisionId),
/// 					Weight:     pulumi.Int(10),
/// 				},
/// 			},
/// 			FunctionName: pulumi.Any(exampleAwsLambdawebFunction.FunctionName),
/// 			EndpointName: pulumi.String("prod"),
/// 			EndpointType: pulumi.String("MultiRegion"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("eu-west-1"),
/// 			},
/// 			AuthType:           pulumi.String("IamAuth"),
/// 			AutoDeploymentMode: pulumi.String("Disabled"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_lambdaweb_function_endpoint" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   revision_weight {
///     revision_id = exampleAwsLambdawebFunctionRevision[0].revisionId
///     weight      = 90
///   }
///   revision_weight {
///     revision_id = exampleAwsLambdawebFunctionRevision[1].revisionId
///     weight      = 10
///   }
///   function_name        = exampleAwsLambdawebFunction.functionName
///   endpoint_name        = "prod"
///   endpoint_type        = "MultiRegion"
///   regions              = ["us-east-1", "eu-west-1"]
///   auth_type            = "IamAuth"
///   auto_deployment_mode = "Disabled"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.FunctionEndpoint;
/// import com.pulumi.aws.lambdaweb.FunctionEndpointArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionEndpointRevisionWeightArgs;
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
///         var example = new FunctionEndpoint("example", FunctionEndpointArgs.builder()
///             .revisionWeights(
///                 FunctionEndpointRevisionWeightArgs.builder()
///                     .revisionId(exampleAwsLambdawebFunctionRevision[0].get("revisionId"))
///                     .weight(90)
///                     .build(),
///                 FunctionEndpointRevisionWeightArgs.builder()
///                     .revisionId(exampleAwsLambdawebFunctionRevision[1].get("revisionId"))
///                     .weight(10)
///                     .build())
///             .functionName(exampleAwsLambdawebFunction.get("functionName"))
///             .endpointName("prod")
///             .endpointType("MultiRegion")
///             .regions(
///                 "us-east-1",
///                 "eu-west-1")
///             .authType("IamAuth")
///             .autoDeploymentMode("Disabled")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdaweb:FunctionEndpoint
///     properties:
///       revisionWeights:
///         - revisionId: ${exampleAwsLambdawebFunctionRevision[0].revisionId}
///           weight: 90
///         - revisionId: ${exampleAwsLambdawebFunctionRevision[1].revisionId}
///           weight: 10
///       functionName: ${exampleAwsLambdawebFunction.functionName}
///       endpointName: prod
///       endpointType: MultiRegion
///       regions:
///         - us-east-1
///         - eu-west-1
///       authType: IamAuth
///       autoDeploymentMode: Disabled
/// ```
///
///
/// ### Behind CloudFront
///
/// An endpoint is a plain HTTPS origin, so a distribution can front it to add edge
/// caching for static paths and terminate TLS closer to the viewer. Use
/// `domainName` as the origin: on a `MultiRegion` endpoint it routes each request
/// to the nearest deployed Region, and `regionalDomainNames` is empty because the
/// service does not publish per-Region domains for that endpoint type.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const app = new aws.lambdaweb.FunctionEndpoint("app", {
///     revisionWeights: [{
///         revisionId: example[0].revisionId,
///         weight: 100,
///     }],
///     functionName: exampleAwsLambdawebFunction.functionName,
///     endpointName: "public",
///     endpointType: "MultiRegion",
///     regions: [
///         "us-east-1",
///         "eu-west-1",
///     ],
///     authType: "ApplicationManaged",
///     autoDeploymentMode: "Disabled",
/// });
/// const disabled = aws.cloudfront.getCachePolicy({
///     name: "Managed-CachingDisabled",
/// });
/// const allViewerExceptHost = aws.cloudfront.getOriginRequestPolicy({
///     name: "Managed-AllViewerExceptHostHeader",
/// });
/// const appDistribution = new aws.cloudfront.Distribution("app", {
///     defaultCacheBehavior: {
///         targetOriginId: "lambdaweb",
///         viewerProtocolPolicy: "redirect-to-https",
///         allowedMethods: [
///             "GET",
///             "HEAD",
///             "OPTIONS",
///             "PUT",
///             "POST",
///             "PATCH",
///             "DELETE",
///         ],
///         cachedMethods: [
///             "GET",
///             "HEAD",
///         ],
///         cachePolicyId: disabled.then(disabled => disabled.id),
///         originRequestPolicyId: allViewerExceptHost.then(allViewerExceptHost => allViewerExceptHost.id),
///     },
///     restrictions: {
///         geoRestriction: {
///             restrictionType: "none",
///         },
///     },
///     viewerCertificate: {
///         cloudfrontDefaultCertificate: true,
///     },
///     origins: [{
///         customOriginConfig: {
///             originProtocolPolicy: "https-only",
///             originSslProtocols: ["TLSv1.2"],
///             httpPort: 80,
///             httpsPort: 443,
///         },
///         originId: "lambdaweb",
///         domainName: app.domainName,
///     }],
///     enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// app = aws.lambdaweb.FunctionEndpoint("app",
///     revision_weights=[{
///         "revision_id": example[0]["revisionId"],
///         "weight": 100,
///     }],
///     function_name=example_aws_lambdaweb_function["functionName"],
///     endpoint_name="public",
///     endpoint_type="MultiRegion",
///     regions=[
///         "us-east-1",
///         "eu-west-1",
///     ],
///     auth_type="ApplicationManaged",
///     auto_deployment_mode="Disabled")
/// disabled = aws.cloudfront.get_cache_policy(name="Managed-CachingDisabled")
/// all_viewer_except_host = aws.cloudfront.get_origin_request_policy(name="Managed-AllViewerExceptHostHeader")
/// app_distribution = aws.cloudfront.Distribution("app",
///     default_cache_behavior={
///         "target_origin_id": "lambdaweb",
///         "viewer_protocol_policy": "redirect-to-https",
///         "allowed_methods": [
///             "GET",
///             "HEAD",
///             "OPTIONS",
///             "PUT",
///             "POST",
///             "PATCH",
///             "DELETE",
///         ],
///         "cached_methods": [
///             "GET",
///             "HEAD",
///         ],
///         "cache_policy_id": disabled.id,
///         "origin_request_policy_id": all_viewer_except_host.id,
///     },
///     restrictions={
///         "geo_restriction": {
///             "restriction_type": "none",
///         },
///     },
///     viewer_certificate={
///         "cloudfront_default_certificate": True,
///     },
///     origins=[{
///         "custom_origin_config": {
///             "origin_protocol_policy": "https-only",
///             "origin_ssl_protocols": ["TLSv1.2"],
///             "http_port": 80,
///             "https_port": 443,
///         },
///         "origin_id": "lambdaweb",
///         "domain_name": app.domain_name,
///     }],
///     enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var app = new Aws.LambdaWeb.FunctionEndpoint("app", new()
///     {
///         RevisionWeights = new[]
///         {
///             new Aws.LambdaWeb.Inputs.FunctionEndpointRevisionWeightArgs
///             {
///                 RevisionId = example[0].RevisionId,
///                 Weight = 100,
///             },
///         },
///         FunctionName = exampleAwsLambdawebFunction.FunctionName,
///         EndpointName = "public",
///         EndpointType = "MultiRegion",
///         Regions = new[]
///         {
///             "us-east-1",
///             "eu-west-1",
///         },
///         AuthType = "ApplicationManaged",
///         AutoDeploymentMode = "Disabled",
///     });
///
///     var disabled = Aws.CloudFront.GetCachePolicy.Invoke(new()
///     {
///         Name = "Managed-CachingDisabled",
///     });
///
///     var allViewerExceptHost = Aws.CloudFront.GetOriginRequestPolicy.Invoke(new()
///     {
///         Name = "Managed-AllViewerExceptHostHeader",
///     });
///
///     var appDistribution = new Aws.CloudFront.Distribution("app", new()
///     {
///         DefaultCacheBehavior = new Aws.CloudFront.Inputs.DistributionDefaultCacheBehaviorArgs
///         {
///             TargetOriginId = "lambdaweb",
///             ViewerProtocolPolicy = "redirect-to-https",
///             AllowedMethods = new[]
///             {
///                 "GET",
///                 "HEAD",
///                 "OPTIONS",
///                 "PUT",
///                 "POST",
///                 "PATCH",
///                 "DELETE",
///             },
///             CachedMethods = new[]
///             {
///                 "GET",
///                 "HEAD",
///             },
///             CachePolicyId = disabled.Apply(getCachePolicyResult => getCachePolicyResult.Id),
///             OriginRequestPolicyId = allViewerExceptHost.Apply(getOriginRequestPolicyResult => getOriginRequestPolicyResult.Id),
///         },
///         Restrictions = new Aws.CloudFront.Inputs.DistributionRestrictionsArgs
///         {
///             GeoRestriction = new Aws.CloudFront.Inputs.DistributionRestrictionsGeoRestrictionArgs
///             {
///                 RestrictionType = "none",
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
///                 CustomOriginConfig = new Aws.CloudFront.Inputs.DistributionOriginCustomOriginConfigArgs
///                 {
///                     OriginProtocolPolicy = "https-only",
///                     OriginSslProtocols = new[]
///                     {
///                         "TLSv1.2",
///                     },
///                     HttpPort = 80,
///                     HttpsPort = 443,
///                 },
///                 OriginId = "lambdaweb",
///                 DomainName = app.DomainName,
///             },
///         },
///         Enabled = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudfront"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		app, err := lambdaweb.NewFunctionEndpoint(ctx, "app", &lambdaweb.FunctionEndpointArgs{
/// 			RevisionWeights: lambdaweb.FunctionEndpointRevisionWeightArray{
/// 				&lambdaweb.FunctionEndpointRevisionWeightArgs{
/// 					RevisionId: pulumi.Any(example[0].RevisionId),
/// 					Weight:     pulumi.Int(100),
/// 				},
/// 			},
/// 			FunctionName: pulumi.Any(exampleAwsLambdawebFunction.FunctionName),
/// 			EndpointName: pulumi.String("public"),
/// 			EndpointType: pulumi.String("MultiRegion"),
/// 			Regions: pulumi.StringArray{
/// 				pulumi.String("us-east-1"),
/// 				pulumi.String("eu-west-1"),
/// 			},
/// 			AuthType:           pulumi.String("ApplicationManaged"),
/// 			AutoDeploymentMode: pulumi.String("Disabled"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		disabled, err := cloudfront.LookupCachePolicy(ctx, &cloudfront.LookupCachePolicyArgs{
/// 			Name: pulumi.StringRef("Managed-CachingDisabled"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		allViewerExceptHost, err := cloudfront.LookupOriginRequestPolicy(ctx, &cloudfront.LookupOriginRequestPolicyArgs{
/// 			Name: pulumi.StringRef("Managed-AllViewerExceptHostHeader"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudfront.NewDistribution(ctx, "app", &cloudfront.DistributionArgs{
/// 			DefaultCacheBehavior: &cloudfront.DistributionDefaultCacheBehaviorArgs{
/// 				TargetOriginId:       pulumi.String("lambdaweb"),
/// 				ViewerProtocolPolicy: pulumi.String("redirect-to-https"),
/// 				AllowedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 					pulumi.String("OPTIONS"),
/// 					pulumi.String("PUT"),
/// 					pulumi.String("POST"),
/// 					pulumi.String("PATCH"),
/// 					pulumi.String("DELETE"),
/// 				},
/// 				CachedMethods: pulumi.StringArray{
/// 					pulumi.String("GET"),
/// 					pulumi.String("HEAD"),
/// 				},
/// 				CachePolicyId:         pulumi.String(disabled.Id),
/// 				OriginRequestPolicyId: pulumi.String(allViewerExceptHost.Id),
/// 			},
/// 			Restrictions: &cloudfront.DistributionRestrictionsArgs{
/// 				GeoRestriction: &cloudfront.DistributionRestrictionsGeoRestrictionArgs{
/// 					RestrictionType: pulumi.String("none"),
/// 				},
/// 			},
/// 			ViewerCertificate: &cloudfront.DistributionViewerCertificateArgs{
/// 				CloudfrontDefaultCertificate: pulumi.Bool(true),
/// 			},
/// 			Origins: cloudfront.DistributionOriginArray{
/// 				&cloudfront.DistributionOriginArgs{
/// 					CustomOriginConfig: &cloudfront.DistributionOriginCustomOriginConfigArgs{
/// 						OriginProtocolPolicy: pulumi.String("https-only"),
/// 						OriginSslProtocols: pulumi.StringArray{
/// 							pulumi.String("TLSv1.2"),
/// 						},
/// 						HttpPort:  pulumi.Int(80),
/// 						HttpsPort: pulumi.Int(443),
/// 					},
/// 					OriginId:   pulumi.String("lambdaweb"),
/// 					DomainName: app.DomainName,
/// 				},
/// 			},
/// 			Enabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_cloudfront_cache_policy" "disabled" {
///   name = "Managed-CachingDisabled"
/// }
/// data "aws_cloudfront_origin_request_policy" "allViewerExceptHost" {
///   name = "Managed-AllViewerExceptHostHeader"
/// }
///
/// resource "aws_lambdaweb_function_endpoint" "app" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   revision_weight {
///     revision_id = example[0].revisionId
///     weight      = 100
///   }
///   function_name        = exampleAwsLambdawebFunction.functionName
///   endpoint_name        = "public"
///   endpoint_type        = "MultiRegion"
///   regions              = ["us-east-1", "eu-west-1"]
///   auth_type            = "ApplicationManaged"
///   auto_deployment_mode = "Disabled"
/// }
/// resource "aws_cloudfront_distribution" "app" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   default_cache_behavior {
///     target_origin_id         = "lambdaweb"
///     viewer_protocol_policy   = "redirect-to-https"
///     allowed_methods          = ["GET", "HEAD", "OPTIONS", "PUT", "POST", "PATCH", "DELETE"]
///     cached_methods           = ["GET", "HEAD"]
///     cache_policy_id          = data.aws_cloudfront_cache_policy.disabled.id
///     origin_request_policy_id = data.aws_cloudfront_origin_request_policy.allViewerExceptHost.id
///   }
///   # The endpoint routes on its own domain, so the viewer Host header must not
///   # be forwarded, and dynamic responses must not be cached.
///   restrictions {
///     geo_restriction {
///       restriction_type = "none"
///     }
///   }
///   viewer_certificate {
///     cloudfront_default_certificate = true
///   }
///   origin {
///     custom_origin_config {
///       origin_protocol_policy = "https-only"
///       origin_ssl_protocols   = ["TLSv1.2"]
///       http_port              = 80
///       https_port             = 443
///     }
///     origin_id   = "lambdaweb"
///     domain_name = aws_lambdaweb_function_endpoint.app.domain_name
///   }
///   enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.FunctionEndpoint;
/// import com.pulumi.aws.lambdaweb.FunctionEndpointArgs;
/// import com.pulumi.aws.lambdaweb.inputs.FunctionEndpointRevisionWeightArgs;
/// import com.pulumi.aws.cloudfront.CloudfrontFunctions;
/// import com.pulumi.aws.cloudfront.inputs.GetCachePolicyArgs;
/// import com.pulumi.aws.cloudfront.inputs.GetOriginRequestPolicyArgs;
/// import com.pulumi.aws.cloudfront.Distribution;
/// import com.pulumi.aws.cloudfront.DistributionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionDefaultCacheBehaviorArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionRestrictionsGeoRestrictionArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionViewerCertificateArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginArgs;
/// import com.pulumi.aws.cloudfront.inputs.DistributionOriginCustomOriginConfigArgs;
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
///         var app = new FunctionEndpoint("app", FunctionEndpointArgs.builder()
///             .revisionWeights(FunctionEndpointRevisionWeightArgs.builder()
///                 .revisionId(example[0].get("revisionId"))
///                 .weight(100)
///                 .build())
///             .functionName(exampleAwsLambdawebFunction.get("functionName"))
///             .endpointName("public")
///             .endpointType("MultiRegion")
///             .regions(
///                 "us-east-1",
///                 "eu-west-1")
///             .authType("ApplicationManaged")
///             .autoDeploymentMode("Disabled")
///             .build());
///
///         final var disabled = CloudfrontFunctions.getCachePolicy(GetCachePolicyArgs.builder()
///             .name("Managed-CachingDisabled")
///             .build());
///
///         final var allViewerExceptHost = CloudfrontFunctions.getOriginRequestPolicy(GetOriginRequestPolicyArgs.builder()
///             .name("Managed-AllViewerExceptHostHeader")
///             .build());
///
///         var appDistribution = new Distribution("appDistribution", DistributionArgs.builder()
///             .defaultCacheBehavior(DistributionDefaultCacheBehaviorArgs.builder()
///                 .targetOriginId("lambdaweb")
///                 .viewerProtocolPolicy("redirect-to-https")
///                 .allowedMethods(
///                     "GET",
///                     "HEAD",
///                     "OPTIONS",
///                     "PUT",
///                     "POST",
///                     "PATCH",
///                     "DELETE")
///                 .cachedMethods(
///                     "GET",
///                     "HEAD")
///                 .cachePolicyId(disabled.id())
///                 .originRequestPolicyId(allViewerExceptHost.id())
///                 .build())
///             .restrictions(DistributionRestrictionsArgs.builder()
///                 .geoRestriction(DistributionRestrictionsGeoRestrictionArgs.builder()
///                     .restrictionType("none")
///                     .build())
///                 .build())
///             .viewerCertificate(DistributionViewerCertificateArgs.builder()
///                 .cloudfrontDefaultCertificate(true)
///                 .build())
///             .origins(DistributionOriginArgs.builder()
///                 .customOriginConfig(DistributionOriginCustomOriginConfigArgs.builder()
///                     .originProtocolPolicy("https-only")
///                     .originSslProtocols("TLSv1.2")
///                     .httpPort(80)
///                     .httpsPort(443)
///                     .build())
///                 .originId("lambdaweb")
///                 .domainName(app.domainName())
///                 .build())
///             .enabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   app:
///     type: aws:lambdaweb:FunctionEndpoint
///     properties:
///       revisionWeights:
///         - revisionId: ${example[0].revisionId}
///           weight: 100
///       functionName: ${exampleAwsLambdawebFunction.functionName}
///       endpointName: public
///       endpointType: MultiRegion
///       regions:
///         - us-east-1
///         - eu-west-1
///       authType: ApplicationManaged
///       autoDeploymentMode: Disabled
///   appDistribution:
///     type: aws:cloudfront:Distribution
///     name: app
///     properties:
///       defaultCacheBehavior:
///         targetOriginId: lambdaweb
///         viewerProtocolPolicy: redirect-to-https
///         allowedMethods:
///           - GET
///           - HEAD
///           - OPTIONS
///           - PUT
///           - POST
///           - PATCH
///           - DELETE
///         cachedMethods:
///           - GET
///           - HEAD
///         cachePolicyId: ${disabled.id}
///         originRequestPolicyId: ${allViewerExceptHost.id}
///       restrictions:
///         geoRestriction:
///           restrictionType: none
///       viewerCertificate:
///         cloudfrontDefaultCertificate: true
///       origins:
///         - customOriginConfig:
///             originProtocolPolicy: https-only
///             originSslProtocols:
///               - TLSv1.2
///             httpPort: 80
///             httpsPort: 443
///           originId: lambdaweb
///           domainName: ${app.domainName}
///       enabled: true
/// variables:
///   disabled:
///     fn::invoke:
///       function: aws:cloudfront:getCachePolicy
///       arguments:
///         name: Managed-CachingDisabled
///   allViewerExceptHost:
///     fn::invoke:
///       function: aws:cloudfront:getOriginRequestPolicy
///       arguments:
///         name: Managed-AllViewerExceptHostHeader
/// ```
///
///
/// &gt; **Note:** Do not set `defaultRootObject` on a distribution that fronts a
/// web function. CloudFront rewrites `/` to that object after viewer-request
/// functions run, which frameworks that own their routing answer with a 404.
///
/// Streaming survives the extra hop: a Server-Sent Events response is relayed
/// without buffering. Origin groups, on the other hand, reject behaviors that allow
/// write methods, so a failover group can only serve the read paths and writes need
/// a behavior pointing at a single origin. A `PerRegion` endpoint is the one that
/// publishes `regionalDomainNames`, which is what an origin group needs for its
/// primary and failover members.
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `endpointName` (String) Name of the endpoint.
/// * `functionName` (String) Name of the function.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a Lambda Web Endpoint using the `functionName` and `endpointName` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:lambdaweb/functionEndpoint:FunctionEndpoint example example,canary
/// ```
class FunctionEndpoint extends pulumi.CustomResource {
  /// ARN of the endpoint in the format `arn:aws:lambda:{region}:{account}:web-function/{function_name}/endpoint/{endpoint_name}`.
  late final pulumi.Output<String> arn;
  /// Authentication mode. Valid values are `ApplicationManaged` and `IamAuth`. Can be changed in place; the endpoint keeps its domain name.
  late final pulumi.Output<String> authType;
  /// Deployment mode. `LatestRevision` makes the endpoint follow the latest revision automatically; `Disabled` requires explicit `revisionWeight`s. `MultiRegion` and `PerRegion` endpoints require `Disabled`. Defaults to `LatestRevision`.
  late final pulumi.Output<String> autoDeploymentMode;
  /// Description of the endpoint.
  late final pulumi.Output<String?> description;
  /// HTTPS domain name of the endpoint. Empty for `PerRegion` endpoints, which only expose `regionalDomainNames`.
  late final pulumi.Output<String> domainName;
  /// Name of the endpoint, up to 64 characters. Changing this forces a new resource.
  late final pulumi.Output<String> endpointName;
  /// Endpoint type. Valid values are `HomeRegion`, `MultiRegion`, and `PerRegion`. Changing this forces a new resource.
  late final pulumi.Output<String> endpointType;
  /// Name of the function this endpoint belongs to, up to 64 characters. Changing this forces a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> functionName;
  /// Region where this resource will be managed. Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of Region to that Region's independent domain name.
  late final pulumi.Output<Map<String, String>> regionalDomainNames;
  /// Regions the endpoint spans. The maximum number of Regions per endpoint is a service quota, enforced by the API. Required for `MultiRegion` and `PerRegion` endpoints: specify at least one Region other than the home Region, which is added automatically. For `HomeRegion` endpoints, omit this argument or specify only the home Region. Changing this forces a new resource.
  late final pulumi.Output<List<String>> regions;
  /// Traffic routing. Required when `autoDeploymentMode` is `Disabled` and must be omitted when `LatestRevision`. One or two entries; weights must sum to 100. See below. When a new revision is rolled on the function, update these weights to shift traffic to it — with `autoDeploymentMode = "Disabled"` traffic never moves automatically.
  late final pulumi.Output<List<FunctionEndpointRevisionWeight>?> revisionWeights;
  /// Scaling limits for the endpoint. When unset, the endpoint has no `maxEnvironments` limit; removing the block clears a previously set limit. See below.
  late final pulumi.Output<FunctionEndpointScalingConfig?> scalingConfig;
  /// Request throttling for the endpoint. When unset, the endpoint has no `rateLimit`; removing the block clears a previously set limit. See below.
  late final pulumi.Output<FunctionEndpointThrottleConfig?> throttleConfig;
  late final pulumi.Output<FunctionEndpointTimeouts?> timeouts;

  /// Creates a new [FunctionEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FunctionEndpoint]. {@macro pulumi_lambdaweb_function_endpoint_function_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FunctionEndpoint(
    String name, {
    FunctionEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/functionEndpoint:FunctionEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    autoDeploymentMode = registerOutput<String>('autoDeploymentMode');
    description = registerOutput<String?>('description');
    domainName = registerOutput<String>('domainName');
    endpointName = registerOutput<String>('endpointName');
    endpointType = registerOutput<String>('endpointType');
    functionName = registerOutput<String>('functionName');
    region = registerOutput<String>('region');
    regionalDomainNames = registerOutput<Map<String, String>>('regionalDomainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revisionWeights = registerOutput<List<FunctionEndpointRevisionWeight>?>('revisionWeights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FunctionEndpointRevisionWeight>(guardedValue, (value) => FunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<FunctionEndpointScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    throttleConfig = registerOutput<FunctionEndpointThrottleConfig?>('throttleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [FunctionEndpoint] resource's state with the given [name] and [id].
  static FunctionEndpoint get(
    String name,
    pulumi.Input<String> id, {
    FunctionEndpointState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return FunctionEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  FunctionEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/functionEndpoint:FunctionEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    autoDeploymentMode = registerOutput<String>('autoDeploymentMode');
    description = registerOutput<String?>('description');
    domainName = registerOutput<String>('domainName');
    endpointName = registerOutput<String>('endpointName');
    endpointType = registerOutput<String>('endpointType');
    functionName = registerOutput<String>('functionName');
    region = registerOutput<String>('region');
    regionalDomainNames = registerOutput<Map<String, String>>('regionalDomainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revisionWeights = registerOutput<List<FunctionEndpointRevisionWeight>?>('revisionWeights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FunctionEndpointRevisionWeight>(guardedValue, (value) => FunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<FunctionEndpointScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    throttleConfig = registerOutput<FunctionEndpointThrottleConfig?>('throttleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [FunctionEndpoint] resource.
  FunctionEndpoint.reference(String urn)
    : super(
        'aws:lambdaweb/functionEndpoint:FunctionEndpoint',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    authType = registerOutput<String>('authType');
    autoDeploymentMode = registerOutput<String>('autoDeploymentMode');
    description = registerOutput<String?>('description');
    domainName = registerOutput<String>('domainName');
    endpointName = registerOutput<String>('endpointName');
    endpointType = registerOutput<String>('endpointType');
    functionName = registerOutput<String>('functionName');
    region = registerOutput<String>('region');
    regionalDomainNames = registerOutput<Map<String, String>>('regionalDomainNames', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    regions = registerOutput<List<String>>('regions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    revisionWeights = registerOutput<List<FunctionEndpointRevisionWeight>?>('revisionWeights', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<FunctionEndpointRevisionWeight>(guardedValue, (value) => FunctionEndpointRevisionWeight.fromMap((value as Map).cast<String, dynamic>())); });
    scalingConfig = registerOutput<FunctionEndpointScalingConfig?>('scalingConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointScalingConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    throttleConfig = registerOutput<FunctionEndpointThrottleConfig?>('throttleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointThrottleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<FunctionEndpointTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FunctionEndpointTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
