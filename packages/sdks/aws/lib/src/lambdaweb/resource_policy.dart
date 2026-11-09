import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Manages a resource-based policy for an AWS Lambda Web function. A resource policy attaches an IAM policy document directly to the function ARN, letting you grant or restrict who may reach the function's endpoints. A common use is locking a function down so that only a specific CloudFront distribution (or another trusted principal) can invoke it, keeping the raw endpoint domain from being reachable directly.
///
/// &gt; **Note:** A resource policy attaches to the parent web function only. Endpoint and revision ARNs (`.../endpoint/&lt;name&gt;`, `.../revision/&lt;id&gt;`) are not accepted.
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
/// const example = new aws.lambdaweb.ResourcePolicy("example", {
///     resourceArn: exampleAwsLambdawebFunction.arn,
///     policy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Sid: "AllowCloudFront",
///             Effect: "Allow",
///             Principal: {
///                 Service: "cloudfront.amazonaws.com",
///             },
///             Action: "lambda:InvokeWebFunctionEndpoint",
///             Resource: exampleAwsLambdawebFunctionEndpoint.arn,
///             Condition: {
///                 StringEquals: {
///                     "aws:SourceArn": exampleAwsCloudfrontDistribution.arn,
///                 },
///             },
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.lambdaweb.ResourcePolicy("example",
///     resource_arn=example_aws_lambdaweb_function["arn"],
///     policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Sid": "AllowCloudFront",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "cloudfront.amazonaws.com",
///             },
///             "Action": "lambda:InvokeWebFunctionEndpoint",
///             "Resource": example_aws_lambdaweb_function_endpoint["arn"],
///             "Condition": {
///                 "StringEquals": {
///                     "aws:SourceArn": example_aws_cloudfront_distribution["arn"],
///                 },
///             },
///         }],
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.LambdaWeb.ResourcePolicy("example", new()
///     {
///         ResourceArn = exampleAwsLambdawebFunction.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Sid"] = "AllowCloudFront",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "cloudfront.amazonaws.com",
///                     },
///                     ["Action"] = "lambda:InvokeWebFunctionEndpoint",
///                     ["Resource"] = exampleAwsLambdawebFunctionEndpoint.Arn,
///                     ["Condition"] = new Dictionary<string, object?>
///                     {
///                         ["StringEquals"] = new Dictionary<string, object?>
///                         {
///                             ["aws:SourceArn"] = exampleAwsCloudfrontDistribution.Arn,
///                         },
///                     },
///                 },
///             },
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambdaweb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Sid":    "AllowCloudFront",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "cloudfront.amazonaws.com",
/// 					},
/// 					"Action":   "lambda:InvokeWebFunctionEndpoint",
/// 					"Resource": exampleAwsLambdawebFunctionEndpoint.Arn,
/// 					"Condition": map[string]map[string]interface{}{
/// 						"StringEquals": map[string]interface{}{
/// 							"aws:SourceArn": exampleAwsCloudfrontDistribution.Arn,
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = lambdaweb.NewResourcePolicy(ctx, "example", &lambdaweb.ResourcePolicyArgs{
/// 			ResourceArn: pulumi.Any(exampleAwsLambdawebFunction.Arn),
/// 			Policy:      pulumi.String(json0),
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
/// resource "aws_lambdaweb_resource_policy" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   resource_arn = exampleAwsLambdawebFunction.arn
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Sid"    = "AllowCloudFront"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "cloudfront.amazonaws.com"
///       }
///       "Action"   = "lambda:InvokeWebFunctionEndpoint"
///       "Resource" = exampleAwsLambdawebFunctionEndpoint.arn
///       "Condition" = {
///         "StringEquals" = {
///           "aws:SourceArn" = exampleAwsCloudfrontDistribution.arn
///         }
///       }
///     }]
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.lambdaweb.ResourcePolicy;
/// import com.pulumi.aws.lambdaweb.ResourcePolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .resourceArn(exampleAwsLambdawebFunction.get("arn"))
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Sid", "AllowCloudFront"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "cloudfront.amazonaws.com")
///                         )),
///                         jsonProperty("Action", "lambda:InvokeWebFunctionEndpoint"),
///                         jsonProperty("Resource", exampleAwsLambdawebFunctionEndpoint.get("arn")),
///                         jsonProperty("Condition", jsonObject(
///                             jsonProperty("StringEquals", jsonObject(
///                                 jsonProperty("aws:SourceArn", exampleAwsCloudfrontDistribution.get("arn"))
///                             ))
///                         ))
///                     )))
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:lambdaweb:ResourcePolicy
///     properties:
///       resourceArn: ${exampleAwsLambdawebFunction.arn}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Sid: AllowCloudFront
///               Effect: Allow
///               Principal:
///                 Service: cloudfront.amazonaws.com
///               Action: lambda:InvokeWebFunctionEndpoint
///               Resource: ${exampleAwsLambdawebFunctionEndpoint.arn}
///               Condition:
///                 StringEquals:
///                   aws:SourceArn: ${exampleAwsCloudfrontDistribution.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `resourceArn` (String) ARN of the Lambda Web function the policy is attached to.
///
///
/// Using `pulumi import`, import a Lambda Web resource policy using the function `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:lambdaweb/resourcePolicy:ResourcePolicy example arn:aws:lambda:us-east-1:123456789012:web-function/example
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// Resource-based IAM policy document as JSON. Terraform normalizes the document, so equivalent policies that differ only in key order or whitespace do not produce spurious diffs.
  late final pulumi.Output<String> policy;
  /// Region where this resource is managed. Defaults to the provider's configured region.
  late final pulumi.Output<String> region;
  /// ARN of the Lambda Web function the policy is attached to. Must be a web function ARN (`arn:aws:lambda:&lt;region&gt;:&lt;account&gt;:web-function/&lt;name&gt;`). Changing this forces a new resource.
  late final pulumi.Output<String> resourceArn;
  /// Opaque revision identifier for the policy. The service returns a new value on every write; it is used for optimistic concurrency on update and delete.
  late final pulumi.Output<String> revisionId;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_lambdaweb_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambdaweb/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }

  /// Creates a typed reference to an existing [ResourcePolicy] resource.
  ResourcePolicy.reference(String urn)
    : super(
        'aws:lambdaweb/resourcePolicy:ResourcePolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
    revisionId = registerOutput<String>('revisionId');
  }
}
