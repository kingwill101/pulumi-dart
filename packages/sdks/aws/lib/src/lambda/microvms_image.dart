import 'package:pulumi/pulumi.dart' as pulumi;
import 'microvms_image_args.dart';
import 'microvms_image_code_artifact.dart';
import 'microvms_image_state.dart';
import 'microvms_image_timeouts.dart';

/// Manages an AWS Lambda MicroVMs Image. Use this resource to define the base image, application code, and runtime configuration from which MicroVMs are launched.
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
/// const current = aws.getPartition({});
/// const currentGetRegion = aws.getRegion({});
/// const example = new aws.iam.Role("example", {
///     name: "example",
///     assumeRolePolicy: JSON.stringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: "sts:AssumeRole",
///             Effect: "Allow",
///             Principal: {
///                 Service: "lambda.amazonaws.com",
///             },
///         }],
///     }),
/// });
/// const exampleBucket = new aws.s3.Bucket("example", {bucket: "example"});
/// const exampleRolePolicy = new aws.iam.RolePolicy("example", {
///     name: "example",
///     role: example.id,
///     policy: pulumi.jsonStringify({
///         Version: "2012-10-17",
///         Statement: [{
///             Action: ["s3:GetObject"],
///             Effect: "Allow",
///             Resource: pulumi.interpolate`${exampleBucket.arn}/*`,
///         }],
///     }),
/// });
/// const exampleBucketObjectv2 = new aws.s3.BucketObjectv2("example", {
///     bucket: exampleBucket.bucket,
///     key: "code.zip",
///     source: new pulumi.asset.FileAsset("code.zip"),
/// });
/// const exampleMicrovmsImage = new aws.lambda.MicrovmsImage("example", {
///     name: "example",
///     baseImageArn: Promise.all([current, currentGetRegion]).then(([current, currentGetRegion]) => `arn:${current.partition}:lambda:${currentGetRegion.region}:aws:microvm-image:al2023-1`),
///     buildRoleArn: example.arn,
///     codeArtifact: {
///         uri: pulumi.interpolate`s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// current = aws.get_partition()
/// current_get_region = aws.get_region()
/// example = aws.iam.Role("example",
///     name="example",
///     assume_role_policy=json.dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": "sts:AssumeRole",
///             "Effect": "Allow",
///             "Principal": {
///                 "Service": "lambda.amazonaws.com",
///             },
///         }],
///     }))
/// example_bucket = aws.s3.Bucket("example", bucket="example")
/// example_role_policy = aws.iam.RolePolicy("example",
///     name="example",
///     role=example.id,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2012-10-17",
///         "Statement": [{
///             "Action": ["s3:GetObject"],
///             "Effect": "Allow",
///             "Resource": example_bucket.arn.apply(lambda arn: f"{arn}/*"),
///         }],
///     }))
/// example_bucket_objectv2 = aws.s3.BucketObjectv2("example",
///     bucket=example_bucket.bucket,
///     key="code.zip",
///     source=pulumi.FileAsset("code.zip"))
/// example_microvms_image = aws.lambda_.MicrovmsImage("example",
///     name="example",
///     base_image_arn=f"arn:{current.partition}:lambda:{current_get_region.region}:aws:microvm-image:al2023-1",
///     build_role_arn=example.arn,
///     code_artifact={
///         "uri": pulumi.Output.all(
///             bucket=example_bucket.bucket,
///             key=example_bucket_objectv2.key
/// ).apply(lambda resolved_outputs: f"s3://{resolved_outputs['bucket']}/{resolved_outputs['key']}")
/// ,
///     })
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
///     var current = Aws.GetPartition.Invoke();
///
///     var currentGetRegion = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Iam.Role("example", new()
///     {
///         Name = "example",
///         AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "sts:AssumeRole",
///                     ["Effect"] = "Allow",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["Service"] = "lambda.amazonaws.com",
///                     },
///                 },
///             },
///         }),
///     });
///
///     var exampleBucket = new Aws.S3.Bucket("example", new()
///     {
///         BucketName = "example",
///     });
///
///     var exampleRolePolicy = new Aws.Iam.RolePolicy("example", new()
///     {
///         Name = "example",
///         Role = example.Id,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2012-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = new[]
///                     {
///                         "s3:GetObject",
///                     },
///                     ["Effect"] = "Allow",
///                     ["Resource"] = exampleBucket.Arn.Apply(arn => $"{arn}/*"),
///                 },
///             },
///         })),
///     });
///
///     var exampleBucketObjectv2 = new Aws.S3.BucketObjectv2("example", new()
///     {
///         Bucket = exampleBucket.BucketName,
///         Key = "code.zip",
///         Source = new FileAsset("code.zip"),
///     });
///
///     var exampleMicrovmsImage = new Aws.Lambda.MicrovmsImage("example", new()
///     {
///         Name = "example",
///         BaseImageArn = Output.Tuple(current, currentGetRegion).Apply(values =>
///         {
///             var current = values.Item1;
///             var currentGetRegion = values.Item2;
///             return $"arn:{current.Apply(getPartitionResult => getPartitionResult.Partition)}:lambda:{currentGetRegion.Apply(getRegionResult => getRegionResult.Region)}:aws:microvm-image:al2023-1";
///         }),
///         BuildRoleArn = example.Arn,
///         CodeArtifact = new Aws.Lambda.Inputs.MicrovmsImageCodeArtifactArgs
///         {
///             Uri = Output.Tuple(exampleBucket.BucketName, exampleBucketObjectv2.Key).Apply(values =>
///             {
///                 var bucket = values.Item1;
///                 var key = values.Item2;
///                 return $"s3://{bucket}/{key}";
///             }),
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/lambda"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetPartition(ctx, &aws.GetPartitionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		currentGetRegion, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Version": "2012-10-17",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "sts:AssumeRole",
/// 					"Effect": "Allow",
/// 					"Principal": map[string]string{
/// 						"Service": "lambda.amazonaws.com",
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// 			Name:             pulumi.String("example"),
/// 			AssumeRolePolicy: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucket, err := s3.NewBucket(ctx, "example", &s3.BucketArgs{
/// 			Bucket: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewRolePolicy(ctx, "example", &iam.RolePolicyArgs{
/// 			Name: pulumi.String("example"),
/// 			Role: example.ID().ToIDOutput().ToStringOutput(),
/// 			Policy: exampleBucket.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON1, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2012-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Action": []string{
/// 								"s3:GetObject",
/// 							},
/// 							"Effect":   "Allow",
/// 							"Resource": fmt.Sprintf("%v/*", arn),
/// 						},
/// 					},
/// 				})
/// 				if err != nil {
/// 					return _zero, err
/// 				}
/// 				json1 := string(tmpJSON1)
/// 				return pulumi.String(json1), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBucketObjectv2, err := s3.NewBucketObjectv2(ctx, "example", &s3.BucketObjectv2Args{
/// 			Bucket: exampleBucket.Bucket,
/// 			Key:    pulumi.String("code.zip"),
/// 			Source: pulumi.NewFileAsset("code.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = lambda.NewMicrovmsImage(ctx, "example", &lambda.MicrovmsImageArgs{
/// 			Name:         pulumi.String("example"),
/// 			BaseImageArn: pulumi.Sprintf("arn:%v:lambda:%v:aws:microvm-image:al2023-1", current.Partition, currentGetRegion.Region),
/// 			BuildRoleArn: example.Arn,
/// 			CodeArtifact: &lambda.MicrovmsImageCodeArtifactArgs{
/// 				Uri: pulumi.All(exampleBucket.Bucket, exampleBucketObjectv2.Key).ApplyT(func(_args []interface{}) (string, error) {
/// 					bucket := _args[0].(string)
/// 					key := _args[1].(string)
/// 					return fmt.Sprintf("s3://%v/%v", bucket, key), nil
/// 				}).(pulumi.StringOutput),
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
/// data "aws_getpartition" "current" {
/// }
/// data "aws_getregion" "currentGetRegion" {
/// }
///
/// resource "aws_iam_role" "example" {
///   name = "example"
///   assume_role_policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action" = "sts:AssumeRole"
///       "Effect" = "Allow"
///       "Principal" = {
///         "Service" = "lambda.amazonaws.com"
///       }
///     }]
///   })
/// }
/// resource "aws_iam_rolepolicy" "example" {
///   name = "example"
///   role = aws_iam_role.example.id
///   policy = jsonencode({
///     "Version" = "2012-10-17"
///     "Statement" = [{
///       "Action"   = ["s3:GetObject"]
///       "Effect"   = "Allow"
///       "Resource" ="${aws_s3_bucket.example.arn}/*"
///     }]
///   })
/// }
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_bucketobjectv2" "example" {
///   bucket = aws_s3_bucket.example.bucket
///   key    = "code.zip"
///   source = fileAsset("code.zip")
/// }
/// resource "aws_lambda_microvmsimage" "example" {
///   name           = "example"
///   base_image_arn ="arn:${data.aws_getpartition.current.partition}:lambda:${data.aws_getregion.currentGetRegion.region}:aws:microvm-image:al2023-1"
///   build_role_arn = aws_iam_role.example.arn
///   code_artifact = {
///     uri ="s3://${aws_s3_bucket.example.bucket}/${aws_s3_bucketobjectv2.example.key}"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetPartitionArgs;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.iam.RolePolicy;
/// import com.pulumi.aws.iam.RolePolicyArgs;
/// import com.pulumi.aws.s3.BucketObjectv2;
/// import com.pulumi.aws.s3.BucketObjectv2Args;
/// import com.pulumi.aws.lambda.MicrovmsImage;
/// import com.pulumi.aws.lambda.MicrovmsImageArgs;
/// import com.pulumi.aws.lambda.inputs.MicrovmsImageCodeArtifactArgs;
/// import com.pulumi.asset.FileAsset;
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
///         final var current = AwsFunctions.getPartition(GetPartitionArgs.builder()
///             .build());
///
///         final var currentGetRegion = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var example = new Role("example", RoleArgs.builder()
///             .name("example")
///             .assumeRolePolicy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "sts:AssumeRole"),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("Service", "lambda.amazonaws.com")
///                         ))
///                     )))
///                 )))
///             .build());
///
///         var exampleBucket = new Bucket("exampleBucket", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleRolePolicy = new RolePolicy("exampleRolePolicy", RolePolicyArgs.builder()
///             .name("example")
///             .role(example.id())
///             .policy(exampleBucket.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2012-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", jsonArray("s3:GetObject")),
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Resource", String.format("%s/*", _arn))
///                     )))
///                 ))))
///             .build());
///
///         var exampleBucketObjectv2 = new BucketObjectv2("exampleBucketObjectv2", BucketObjectv2Args.builder()
///             .bucket(exampleBucket.bucket())
///             .key("code.zip")
///             .source(new FileAsset("code.zip"))
///             .build());
///
///         var exampleMicrovmsImage = new MicrovmsImage("exampleMicrovmsImage", MicrovmsImageArgs.builder()
///             .name("example")
///             .baseImageArn(String.format("arn:%s:lambda:%s:aws:microvm-image:al2023-1", current.partition(),currentGetRegion.region()))
///             .buildRoleArn(example.arn())
///             .codeArtifact(MicrovmsImageCodeArtifactArgs.builder()
///                 .uri(Output.tuple(exampleBucket.bucket(), exampleBucketObjectv2.key()).applyValue(values -> {
///                     var bucket = values.t1;
///                     var key = values.t2;
///                     return String.format("s3://%s/%s", bucket,key);
///                 }))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:iam:Role
///     properties:
///       name: example
///       assumeRolePolicy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action: sts:AssumeRole
///               Effect: Allow
///               Principal:
///                 Service: lambda.amazonaws.com
///   exampleRolePolicy:
///     type: aws:iam:RolePolicy
///     name: example
///     properties:
///       name: example
///       role: ${example.id}
///       policy:
///         fn::toJSON:
///           Version: 2012-10-17
///           Statement:
///             - Action:
///                 - s3:GetObject
///               Effect: Allow
///               Resource: ${exampleBucket.arn}/*
///   exampleBucket:
///     type: aws:s3:Bucket
///     name: example
///     properties:
///       bucket: example
///   exampleBucketObjectv2:
///     type: aws:s3:BucketObjectv2
///     name: example
///     properties:
///       bucket: ${exampleBucket.bucket}
///       key: code.zip
///       source:
///         fn::fileAsset: code.zip
///   exampleMicrovmsImage:
///     type: aws:lambda:MicrovmsImage
///     name: example
///     properties:
///       name: example
///       baseImageArn: arn:${current.partition}:lambda:${currentGetRegion.region}:aws:microvm-image:al2023-1
///       buildRoleArn: ${example.arn}
///       codeArtifact:
///         uri: s3://${exampleBucket.bucket}/${exampleBucketObjectv2.key}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getPartition
///       arguments: {}
///   currentGetRegion:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Lambda MicroVMs Image.
///
///
/// Using `pulumi import`, import Lambda MicroVMs Image using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:lambda/microvmsImage:MicrovmsImage example arn:aws:lambda:us-east-1:123456789012:microvm-image:example
/// ```
class MicrovmsImage extends pulumi.CustomResource {
  /// List of additional OS capabilities granted to the MicroVM runtime environment. Valid values: `ALL`.
  late final pulumi.Output<List<String>?> additionalOsCapabilities;
  /// ARN of the Image.
  late final pulumi.Output<String> arn;
  /// ARN of the base MicroVM image. AWS-managed base images use ARNs of the form `arn:aws:lambda:&lt;region&gt;:aws:microvm-image:al2023-1`.
  late final pulumi.Output<String> baseImageArn;
  /// Major version number of the base MicroVM image to use (e.g., `1`). If omitted, the service selects a version.
  late final pulumi.Output<String> baseImageVersion;
  /// ARN of the IAM role used to build the image. The role must be assumable by `lambda.amazonaws.com` and have access to the code artifact.
  late final pulumi.Output<String> buildRoleArn;
  /// Code artifact containing the application code and metadata for the image. See below.
  late final pulumi.Output<MicrovmsImageCodeArtifact> codeArtifact;
  /// CPU configuration for the MicroVM. See `cpuConfiguration` Block below.
  late final pulumi.Output<List<Map<String, dynamic>>?> cpuConfigurations;
  /// RFC3339 timestamp when the image was created.
  late final pulumi.Output<String> createdAt;
  /// Description of the MicroVM image.
  late final pulumi.Output<String?> description;
  /// List of egress network connectors available to the MicroVM at runtime. Defaults to `["INTERNET_EGRESS"]`.
  late final pulumi.Output<List<String>> egressNetworkConnectors;
  /// Map of environment variables set in the MicroVM runtime environment.
  late final pulumi.Output<Map<String, String>?> environmentVariables;
  /// Current version of the image.
  late final pulumi.Output<String> imageVersion;
  /// Latest active version of the image.
  late final pulumi.Output<String> latestActiveImageVersion;
  /// Latest failed version of the image, if any.
  late final pulumi.Output<String> latestFailedImageVersion;
  /// Name of the MicroVM image. Changing this value creates a new resource.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current state of the image (e.g., `CREATED`).
  late final pulumi.Output<String> state;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<MicrovmsImageTimeouts?> timeouts;
  /// RFC3339 timestamp when the image was last updated.
  late final pulumi.Output<String> updatedAt;

  /// Creates a new [MicrovmsImage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MicrovmsImage]. {@macro pulumi_lambda_microvms_image_microvms_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MicrovmsImage(
    String name, {
    MicrovmsImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/microvmsImage:MicrovmsImage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalOsCapabilities = registerOutput<List<String>?>('additionalOsCapabilities');
    arn = registerOutput<String>('arn');
    baseImageArn = registerOutput<String>('baseImageArn');
    baseImageVersion = registerOutput<String>('baseImageVersion');
    buildRoleArn = registerOutput<String>('buildRoleArn');
    codeArtifact = registerOutput<MicrovmsImageCodeArtifact>('codeArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmsImageCodeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuConfigurations = registerOutput<List<Map<String, dynamic>>?>('cpuConfigurations');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    egressNetworkConnectors = registerOutput<List<String>>('egressNetworkConnectors');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    imageVersion = registerOutput<String>('imageVersion');
    latestActiveImageVersion = registerOutput<String>('latestActiveImageVersion');
    latestFailedImageVersion = registerOutput<String>('latestFailedImageVersion');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<MicrovmsImageTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmsImageTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }

  /// Gets an existing [MicrovmsImage] resource's state with the given [name] and [id].
  static MicrovmsImage get(
    String name,
    pulumi.Input<String> id, {
    MicrovmsImageState? state,
  }) {
    return MicrovmsImage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  MicrovmsImage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lambda/microvmsImage:MicrovmsImage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    additionalOsCapabilities = registerOutput<List<String>?>('additionalOsCapabilities');
    arn = registerOutput<String>('arn');
    baseImageArn = registerOutput<String>('baseImageArn');
    baseImageVersion = registerOutput<String>('baseImageVersion');
    buildRoleArn = registerOutput<String>('buildRoleArn');
    codeArtifact = registerOutput<MicrovmsImageCodeArtifact>('codeArtifact', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmsImageCodeArtifact.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    cpuConfigurations = registerOutput<List<Map<String, dynamic>>?>('cpuConfigurations');
    createdAt = registerOutput<String>('createdAt');
    description = registerOutput<String?>('description');
    egressNetworkConnectors = registerOutput<List<String>>('egressNetworkConnectors');
    environmentVariables = registerOutput<Map<String, String>?>('environmentVariables');
    imageVersion = registerOutput<String>('imageVersion');
    latestActiveImageVersion = registerOutput<String>('latestActiveImageVersion');
    latestFailedImageVersion = registerOutput<String>('latestFailedImageVersion');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<MicrovmsImageTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MicrovmsImageTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updatedAt = registerOutput<String>('updatedAt');
  }
}
