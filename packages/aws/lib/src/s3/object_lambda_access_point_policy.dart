import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_policy_args.dart';

/// Provides a resource to manage an S3 Object Lambda Access Point resource policy.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleAccessPoint = new aws.s3.AccessPoint("example", {
///     bucket: example.id,
///     name: "example",
/// });
/// const exampleObjectLambdaAccessPoint = new aws.s3control.ObjectLambdaAccessPoint("example", {
///     name: "example",
///     configuration: {
///         supportingAccessPoint: exampleAccessPoint.arn,
///         transformationConfigurations: [{
///             actions: ["GetObject"],
///             contentTransformation: {
///                 awsLambda: {
///                     functionArn: exampleAwsLambdaFunction.arn,
///                 },
///             },
///         }],
///     },
/// });
/// const exampleObjectLambdaAccessPointPolicy = new aws.s3control.ObjectLambdaAccessPointPolicy("example", {
///     name: exampleObjectLambdaAccessPoint.name,
///     policy: pulumi.jsonStringify({
///         Version: "2008-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: "s3-object-lambda:GetObject",
///             Principal: {
///                 AWS: current.accountId,
///             },
///             Resource: exampleObjectLambdaAccessPoint.arn,
///         }],
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.s3.Bucket("example", bucket="example")
/// example_access_point = aws.s3.AccessPoint("example",
///     bucket=example.id,
///     name="example")
/// example_object_lambda_access_point = aws.s3control.ObjectLambdaAccessPoint("example",
///     name="example",
///     configuration={
///         "supporting_access_point": example_access_point.arn,
///         "transformation_configurations": [{
///             "actions": ["GetObject"],
///             "content_transformation": {
///                 "aws_lambda": {
///                     "function_arn": example_aws_lambda_function["arn"],
///                 },
///             },
///         }],
///     })
/// example_object_lambda_access_point_policy = aws.s3control.ObjectLambdaAccessPointPolicy("example",
///     name=example_object_lambda_access_point.name,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2008-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": "s3-object-lambda:GetObject",
///             "Principal": {
///                 "AWS": current["accountId"],
///             },
///             "Resource": example_object_lambda_access_point.arn,
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
///     var example = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleAccessPoint = new Aws.S3.AccessPoint("example", new()
///     {
///         Bucket = example.Id,
///         Name = "example",
///     });
///
///     var exampleObjectLambdaAccessPoint = new Aws.S3Control.ObjectLambdaAccessPoint("example", new()
///     {
///         Name = "example",
///         Configuration = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationArgs
///         {
///             SupportingAccessPoint = exampleAccessPoint.Arn,
///             TransformationConfigurations = new[]
///             {
///                 new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "GetObject",
///                     },
///                     ContentTransformation = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs
///                     {
///                         AwsLambda = new Aws.S3Control.Inputs.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs
///                         {
///                             FunctionArn = exampleAwsLambdaFunction.Arn,
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
///     var exampleObjectLambdaAccessPointPolicy = new Aws.S3Control.ObjectLambdaAccessPointPolicy("example", new()
///     {
///         Name = exampleObjectLambdaAccessPoint.Name,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2008-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "s3-object-lambda:GetObject",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = current.AccountId,
///                     },
///                     ["Resource"] = exampleObjectLambdaAccessPoint.Arn,
///                 },
///             },
///         })),
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleAccessPoint, err := s3.NewAccessPoint(ctx, "example", &s3.AccessPointArgs{
/// 			Bucket: example.ID(),
/// 			Name:   pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleObjectLambdaAccessPoint, err := s3control.NewObjectLambdaAccessPoint(ctx, "example", &s3control.ObjectLambdaAccessPointArgs{
/// 			Name: pulumi.String("example"),
/// 			Configuration: &s3control.ObjectLambdaAccessPointConfigurationArgs{
/// 				SupportingAccessPoint: exampleAccessPoint.Arn,
/// 				TransformationConfigurations: s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationArray{
/// 					&s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs{
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("GetObject"),
/// 						},
/// 						ContentTransformation: &s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs{
/// 							AwsLambda: &s3control.ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs{
/// 								FunctionArn: pulumi.Any(exampleAwsLambdaFunction.Arn),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewObjectLambdaAccessPointPolicy(ctx, "example", &s3control.ObjectLambdaAccessPointPolicyArgs{
/// 			Name: exampleObjectLambdaAccessPoint.Name,
/// 			Policy: exampleObjectLambdaAccessPoint.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2008-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Action": "s3-object-lambda:GetObject",
/// 							"Principal": map[string]interface{}{
/// 								"AWS": current.AccountId,
/// 							},
/// 							"Resource": arn,
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json0 := string(tmpJSON0)
/// 				return pulumi.String(json0), nil
/// 			}).(pulumi.StringOutput),
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPoint;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPointArgs;
/// import com.pulumi.aws.s3control.inputs.ObjectLambdaAccessPointConfigurationArgs;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPointPolicy;
/// import com.pulumi.aws.s3control.ObjectLambdaAccessPointPolicyArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example")
///             .build());
///
///         var exampleObjectLambdaAccessPoint = new ObjectLambdaAccessPoint("exampleObjectLambdaAccessPoint", ObjectLambdaAccessPointArgs.builder()
///             .name("example")
///             .configuration(ObjectLambdaAccessPointConfigurationArgs.builder()
///                 .supportingAccessPoint(exampleAccessPoint.arn())
///                 .transformationConfigurations(ObjectLambdaAccessPointConfigurationTransformationConfigurationArgs.builder()
///                     .actions("GetObject")
///                     .contentTransformation(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationArgs.builder()
///                         .awsLambda(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformationAwsLambdaArgs.builder()
///                             .functionArn(exampleAwsLambdaFunction.arn())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var exampleObjectLambdaAccessPointPolicy = new ObjectLambdaAccessPointPolicy("exampleObjectLambdaAccessPointPolicy", ObjectLambdaAccessPointPolicyArgs.builder()
///             .name(exampleObjectLambdaAccessPoint.name())
///             .policy(exampleObjectLambdaAccessPoint.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2008-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", "s3-object-lambda:GetObject"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", current.accountId())
///                         )),
///                         jsonProperty("Resource", _arn)
///                     )))
///                 ))))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3:Bucket
///     properties:
///       bucket: example
///   exampleAccessPoint:
///     type: aws:s3:AccessPoint
///     name: example
///     properties:
///       bucket: ${example.id}
///       name: example
///   exampleObjectLambdaAccessPoint:
///     type: aws:s3control:ObjectLambdaAccessPoint
///     name: example
///     properties:
///       name: example
///       configuration:
///         supportingAccessPoint: ${exampleAccessPoint.arn}
///         transformationConfigurations:
///           - actions:
///               - GetObject
///             contentTransformation:
///               awsLambda:
///                 functionArn: ${exampleAwsLambdaFunction.arn}
///   exampleObjectLambdaAccessPointPolicy:
///     type: aws:s3control:ObjectLambdaAccessPointPolicy
///     name: example
///     properties:
///       name: ${exampleObjectLambdaAccessPoint.name}
///       policy:
///         fn::toJSON:
///           Version: 2008-10-17
///           Statement:
///             - Effect: Allow
///               Action: s3-object-lambda:GetObject
///               Principal:
///                 AWS: ${current.accountId}
///               Resource: ${exampleObjectLambdaAccessPoint.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Object Lambda Access Point policies using the `account_id` and `name`, separated by a colon (`:`). For example:
///
/// ```sh
/// $ pulumi import aws:s3control/objectLambdaAccessPointPolicy:ObjectLambdaAccessPointPolicy example 123456789012:example
/// ```
class ObjectLambdaAccessPointPolicy extends pulumi.CustomResource {
  /// The AWS account ID for the account that owns the Object Lambda Access Point. Defaults to automatically determined account ID of the AWS provider.
  late final pulumi.Output<String> accountId;
  /// Indicates whether this access point currently has a policy that allows public access.
  late final pulumi.Output<bool> hasPublicAccessPolicy;
  /// The name of the Object Lambda Access Point.
  late final pulumi.Output<String> name;
  /// The Object Lambda Access Point resource policy document.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [ObjectLambdaAccessPointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ObjectLambdaAccessPointPolicy]. {@macro pulumi_s3_control_object_lambda_access_point_policy_object_lambda_access_point_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ObjectLambdaAccessPointPolicy(
    String name, {
    ObjectLambdaAccessPointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/objectLambdaAccessPointPolicy:ObjectLambdaAccessPointPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    this.name = registerOutput<String>('name');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
  }
}
