import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_policy_s3_control_args.dart';
import 'bucket_policy_s3_control_state.dart';

/// Provides a resource to manage an S3 Control Bucket Policy.
///
/// &gt; This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Policies in an AWS Partition, see the `aws.s3.BucketPolicy` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.BucketPolicy("example", {
///     bucket: exampleAwsS3controlBucket.arn,
///     policy: JSON.stringify({
///         Id: "testBucketPolicy",
///         Statement: [{
///             Action: "s3-outposts:PutBucketLifecycleConfiguration",
///             Effect: "Deny",
///             Principal: {
///                 AWS: "*",
///             },
///             Resource: exampleAwsS3controlBucket.arn,
///             Sid: "statement1",
///         }],
///         Version: "2012-10-17",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.s3control.BucketPolicy("example",
///     bucket=example_aws_s3control_bucket["arn"],
///     policy=json.dumps({
///         "Id": "testBucketPolicy",
///         "Statement": [{
///             "Action": "s3-outposts:PutBucketLifecycleConfiguration",
///             "Effect": "Deny",
///             "Principal": {
///                 "AWS": "*",
///             },
///             "Resource": example_aws_s3control_bucket["arn"],
///             "Sid": "statement1",
///         }],
///         "Version": "2012-10-17",
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
///     var example = new Aws.S3Control.BucketPolicy("example", new()
///     {
///         Bucket = exampleAwsS3controlBucket.Arn,
///         Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["Id"] = "testBucketPolicy",
///             ["Statement"] = new[]
///             {
///                 new Dictionary<string, object?>
///                 {
///                     ["Action"] = "s3-outposts:PutBucketLifecycleConfiguration",
///                     ["Effect"] = "Deny",
///                     ["Principal"] = new Dictionary<string, object?>
///                     {
///                         ["AWS"] = "*",
///                     },
///                     ["Resource"] = exampleAwsS3controlBucket.Arn,
///                     ["Sid"] = "statement1",
///                 },
///             },
///             ["Version"] = "2012-10-17",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]interface{}{
/// 			"Id": "testBucketPolicy",
/// 			"Statement": []map[string]interface{}{
/// 				map[string]interface{}{
/// 					"Action": "s3-outposts:PutBucketLifecycleConfiguration",
/// 					"Effect": "Deny",
/// 					"Principal": map[string]string{
/// 						"AWS": "*",
/// 					},
/// 					"Resource": exampleAwsS3controlBucket.Arn,
/// 					"Sid":      "statement1",
/// 				},
/// 			},
/// 			"Version": "2012-10-17",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = s3control.NewBucketPolicy(ctx, "example", &s3control.BucketPolicyArgs{
/// 			Bucket: pulumi.Any(exampleAwsS3controlBucket.Arn),
/// 			Policy: pulumi.String(json0),
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
/// resource "aws_s3control_bucketpolicy" "example" {
///   bucket = exampleAwsS3controlBucket.arn
///   policy = jsonencode({
///     "Id" = "testBucketPolicy"
///     "Statement" = [{
///       "Action" = "s3-outposts:PutBucketLifecycleConfiguration"
///       "Effect" = "Deny"
///       "Principal" = {
///         "AWS" = "*"
///       }
///       "Resource" = exampleAwsS3controlBucket.arn
///       "Sid"      = "statement1"
///     }]
///     "Version" = "2012-10-17"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.BucketPolicy;
/// import com.pulumi.aws.s3control.BucketPolicyArgs;
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
///         var example = new BucketPolicy("example", BucketPolicyArgs.builder()
///             .bucket(exampleAwsS3controlBucket.arn())
///             .policy(serializeJson(
///                 jsonObject(
///                     jsonProperty("Id", "testBucketPolicy"),
///                     jsonProperty("Statement", jsonArray(jsonObject(
///                         jsonProperty("Action", "s3-outposts:PutBucketLifecycleConfiguration"),
///                         jsonProperty("Effect", "Deny"),
///                         jsonProperty("Principal", jsonObject(
///                             jsonProperty("AWS", "*")
///                         )),
///                         jsonProperty("Resource", exampleAwsS3controlBucket.arn()),
///                         jsonProperty("Sid", "statement1")
///                     ))),
///                     jsonProperty("Version", "2012-10-17")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:BucketPolicy
///     properties:
///       bucket: ${exampleAwsS3controlBucket.arn}
///       policy:
///         fn::toJSON:
///           Id: testBucketPolicy
///           Statement:
///             - Action: s3-outposts:PutBucketLifecycleConfiguration
///               Effect: Deny
///               Principal:
///                 AWS: '*'
///               Resource: ${exampleAwsS3controlBucket.arn}
///               Sid: statement1
///           Version: 2012-10-17
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Control Bucket Policies using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucketPolicy:BucketPolicy example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketPolicyS3Control extends pulumi.CustomResource {
  /// ARN of the bucket.
  late final pulumi.Output<String> bucket;
  /// JSON string of the resource policy.
  late final pulumi.Output<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [BucketPolicyS3Control].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketPolicyS3Control]. {@macro pulumi_s3_control_bucket_policy_bucket_policy_s3_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketPolicyS3Control(
    String name, {
    BucketPolicyS3ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketPolicy:BucketPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [BucketPolicyS3Control] resource's state with the given [name] and [id].
  static BucketPolicyS3Control get(
    String name,
    pulumi.Input<String> id, {
    BucketPolicyS3ControlState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketPolicyS3Control._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketPolicyS3Control._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketPolicy:BucketPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }

  /// Creates a typed reference to an existing [BucketPolicyS3Control] resource.
  BucketPolicyS3Control.reference(String urn)
    : super(
        'aws:s3control/bucketPolicy:BucketPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    policy = registerOutput<String>('policy');
    region = registerOutput<String>('region');
  }
}
