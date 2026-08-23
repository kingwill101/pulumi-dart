import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_point_policy_args.dart';
import 'access_point_policy_state.dart';

/// Provides a resource to manage an S3 Access Point resource policy.
///
/// &gt; **NOTE on Access Points and Access Point Policies:** The provider provides both a standalone Access Point Policy resource and an Access Point resource with a resource policy defined in-line. You cannot use an Access Point with in-line resource policy in conjunction with an Access Point Policy resource. Doing so will cause a conflict of policies and will overwrite the access point's resource policy.
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
///     publicAccessBlockConfiguration: {
///         blockPublicAcls: true,
///         blockPublicPolicy: false,
///         ignorePublicAcls: true,
///         restrictPublicBuckets: false,
///     },
/// });
/// const exampleAccessPointPolicy = new aws.s3control.AccessPointPolicy("example", {
///     accessPointArn: exampleAccessPoint.arn,
///     policy: pulumi.jsonStringify({
///         Version: "2008-10-17",
///         Statement: [{
///             Effect: "Allow",
///             Action: "s3:GetObjectTagging",
///             Principal: {
///                 AWS: "*",
///             },
///             Resource: pulumi.interpolate`${exampleAccessPoint.arn}/object/*`,
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
///     name="example",
///     public_access_block_configuration={
///         "block_public_acls": True,
///         "block_public_policy": False,
///         "ignore_public_acls": True,
///         "restrict_public_buckets": False,
///     })
/// example_access_point_policy = aws.s3control.AccessPointPolicy("example",
///     access_point_arn=example_access_point.arn,
///     policy=pulumi.Output.json_dumps({
///         "Version": "2008-10-17",
///         "Statement": [{
///             "Effect": "Allow",
///             "Action": "s3:GetObjectTagging",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Resource": example_access_point.arn.apply(lambda arn: f"{arn}/object/*"),
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
///         PublicAccessBlockConfiguration = new Aws.S3.Inputs.AccessPointPublicAccessBlockConfigurationArgs
///         {
///             BlockPublicAcls = true,
///             BlockPublicPolicy = false,
///             IgnorePublicAcls = true,
///             RestrictPublicBuckets = false,
///         },
///     });
///
///     var exampleAccessPointPolicy = new Aws.S3Control.AccessPointPolicy("example", new()
///     {
///         AccessPointArn = exampleAccessPoint.Arn,
///         Policy = Output.JsonSerialize(Output.Create(new Dictionary<string, object?>
///         {
///             ["Version"] = "2008-10-17",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Effect"] = "Allow",
///                     ["Action"] = "s3:GetObjectTagging",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Resource"] = exampleAccessPoint.Arn.Apply(arn => $"{arn}/object/*"),
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
/// 	"fmt"
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
/// 			Bucket: example.ID().ToIDOutput().ToStringOutput(),
/// 			Name:   pulumi.String("example"),
/// 			PublicAccessBlockConfiguration: &s3.AccessPointPublicAccessBlockConfigurationArgs{
/// 				BlockPublicAcls:       pulumi.Bool(true),
/// 				BlockPublicPolicy:     pulumi.Bool(false),
/// 				IgnorePublicAcls:      pulumi.Bool(true),
/// 				RestrictPublicBuckets: pulumi.Bool(false),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = s3control.NewAccessPointPolicy(ctx, "example", &s3control.AccessPointPolicyArgs{
/// 			AccessPointArn: exampleAccessPoint.Arn,
/// 			Policy: exampleAccessPoint.Arn.ApplyT(func(arn string) (pulumi.String, error) {
/// 				var _zero pulumi.String
/// 				tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 					"Version": "2008-10-17",
/// 					"Statement": []map[string]interface{}{
/// 						map[string]interface{}{
/// 							"Effect": "Allow",
/// 							"Action": "s3:GetObjectTagging",
/// 							"Principal": map[string]string{
/// 								"AWS": "*",
/// 							},
/// 							"Resource": fmt.Sprintf("%v/object/*", arn),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_s3_bucket" "example" {
///   bucket = "example"
/// }
/// resource "aws_s3_accesspoint" "example" {
///   bucket = aws_s3_bucket.example.id
///   name   = "example"
///   public_access_block_configuration = {
///     block_public_acls       = true
///     block_public_policy     = false
///     ignore_public_acls      = true
///     restrict_public_buckets = false
///   }
/// }
/// resource "aws_s3control_accesspointpolicy" "example" {
///   access_point_arn = aws_s3_accesspoint.example.arn
///   policy = jsonencode({
///     "Version" = "2008-10-17"
///     "Statement" = [{
///       "Effect" = "Allow"
///       "Action" = "s3:GetObjectTagging"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Resource" ="${aws_s3_accesspoint.example.arn}/object/*"
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
/// import com.pulumi.aws.s3.Bucket;
/// import com.pulumi.aws.s3.BucketArgs;
/// import com.pulumi.aws.s3.AccessPoint;
/// import com.pulumi.aws.s3.AccessPointArgs;
/// import com.pulumi.aws.s3.inputs.AccessPointPublicAccessBlockConfigurationArgs;
/// import com.pulumi.aws.s3control.AccessPointPolicy;
/// import com.pulumi.aws.s3control.AccessPointPolicyArgs;
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
///         var example = new Bucket("example", BucketArgs.builder()
///             .bucket("example")
///             .build());
///
///         var exampleAccessPoint = new AccessPoint("exampleAccessPoint", AccessPointArgs.builder()
///             .bucket(example.id())
///             .name("example")
///             .publicAccessBlockConfiguration(AccessPointPublicAccessBlockConfigurationArgs.builder()
///                 .blockPublicAcls(true)
///                 .blockPublicPolicy(false)
///                 .ignorePublicAcls(true)
///                 .restrictPublicBuckets(false)
///                 .build())
///             .build());
///
///         var exampleAccessPointPolicy = new AccessPointPolicy("exampleAccessPointPolicy", AccessPointPolicyArgs.builder()
///             .accessPointArn(exampleAccessPoint.arn())
///             .policy(exampleAccessPoint.arn().applyValue(_arn -> serializeJson(
///                 jsonObject(
///                     jsonProperty("Version", "2008-10-17"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Effect", "Allow"),
///                         jsonProperty("Action", "s3:GetObjectTagging"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Resource", String.format("%s/object/*", _arn))
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
///       publicAccessBlockConfiguration:
///         blockPublicAcls: true
///         blockPublicPolicy: false
///         ignorePublicAcls: true
///         restrictPublicBuckets: false
///   exampleAccessPointPolicy:
///     type: aws:s3control:AccessPointPolicy
///     name: example
///     properties:
///       accessPointArn: ${exampleAccessPoint.arn}
///       policy:
///         fn::toJSON:
///           Version: 2008-10-17
///           Statement:
///             - Effect: Allow
///               Action: s3:GetObjectTagging
///               Principal:
///                 AWS: '*'
///               Resource: ${exampleAccessPoint.arn}/object/*
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Access Point policies using the `accessPointArn`. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/accessPointPolicy:AccessPointPolicy example arn:aws:s3:us-west-2:123456789012:accesspoint/example
/// ```
class AccessPointPolicy extends pulumi.CustomResource {
  /// ARN of the access point that you want to associate with the specified policy.
  late final pulumi.Output<String> accessPointArn;
  /// Whether this access point currently has a policy that allows public access.
  late final pulumi.Output<bool> hasPublicAccessPolicy;
  /// Policy that you want to apply to the specified access point.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [AccessPointPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPointPolicy]. {@macro pulumi_s3_control_access_point_policy_access_point_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPointPolicy(
    String name, {
    AccessPointPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessPointPolicy:AccessPointPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPointArn = registerOutput<String>('accessPointArn');
    hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [AccessPointPolicy] resource's state with the given [name] and [id].
  static AccessPointPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccessPointPolicyState? state,
  }) {
    return AccessPointPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AccessPointPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/accessPointPolicy:AccessPointPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessPointArn = registerOutput<String>('accessPointArn');
    hasPublicAccessPolicy = registerOutput<bool>('hasPublicAccessPolicy');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
