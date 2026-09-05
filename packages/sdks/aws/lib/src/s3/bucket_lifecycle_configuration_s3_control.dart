import 'package:pulumi/pulumi.dart' as pulumi;
import 'bucket_lifecycle_configuration_rule_s3_control.dart';
import 'bucket_lifecycle_configuration_s3_control_args.dart';
import 'bucket_lifecycle_configuration_s3_control_state.dart';

/// Provides a resource to manage an S3 Control Bucket Lifecycle Configuration.
///
/// &gt; **NOTE:** Each S3 Control Bucket can only have one Lifecycle Configuration. Using multiple of this resource against the same S3 Control Bucket will result in perpetual differences each provider run.
///
/// &gt; This functionality is for managing [S3 on Outposts](https://docs.aws.amazon.com/AmazonS3/latest/dev/S3onOutposts.html). To manage S3 Bucket Lifecycle Configurations in an AWS Partition, see the `aws.s3.Bucket` resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.s3control.BucketLifecycleConfiguration("example", {
///     rules: [
///         {
///             expiration: {
///                 days: 365,
///             },
///             filter: {
///                 prefix: "logs/",
///             },
///             id: "logs",
///         },
///         {
///             expiration: {
///                 days: 7,
///             },
///             filter: {
///                 prefix: "temp/",
///             },
///             id: "temp",
///         },
///     ],
///     bucket: exampleAwsS3controlBucket.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.s3control.BucketLifecycleConfiguration("example",
///     rules=[
///         {
///             "expiration": {
///                 "days": 365,
///             },
///             "filter": {
///                 "prefix": "logs/",
///             },
///             "id": "logs",
///         },
///         {
///             "expiration": {
///                 "days": 7,
///             },
///             "filter": {
///                 "prefix": "temp/",
///             },
///             "id": "temp",
///         },
///     ],
///     bucket=example_aws_s3control_bucket["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.S3Control.BucketLifecycleConfiguration("example", new()
///     {
///         Rules = new[]
///         {
///             new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Expiration = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
///                 {
///                     Days = 365,
///                 },
///                 Filter = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "logs/",
///                 },
///                 Id = "logs",
///             },
///             new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleArgs
///             {
///                 Expiration = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleExpirationArgs
///                 {
///                     Days = 7,
///                 },
///                 Filter = new Aws.S3Control.Inputs.BucketLifecycleConfigurationRuleFilterArgs
///                 {
///                     Prefix = "temp/",
///                 },
///                 Id = "temp",
///             },
///         },
///         Bucket = exampleAwsS3controlBucket.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3control"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := s3control.NewBucketLifecycleConfiguration(ctx, "example", &s3control.BucketLifecycleConfigurationArgs{
/// 			Rules: s3control.BucketLifecycleConfigurationRuleArray{
/// 				&s3control.BucketLifecycleConfigurationRuleArgs{
/// 					Expiration: &s3control.BucketLifecycleConfigurationRuleExpirationArgs{
/// 						Days: pulumi.Int(365),
/// 					},
/// 					Filter: &s3control.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("logs/"),
/// 					},
/// 					Id: pulumi.String("logs"),
/// 				},
/// 				&s3control.BucketLifecycleConfigurationRuleArgs{
/// 					Expiration: &s3control.BucketLifecycleConfigurationRuleExpirationArgs{
/// 						Days: pulumi.Int(7),
/// 					},
/// 					Filter: &s3control.BucketLifecycleConfigurationRuleFilterArgs{
/// 						Prefix: pulumi.String("temp/"),
/// 					},
/// 					Id: pulumi.String("temp"),
/// 				},
/// 			},
/// 			Bucket: pulumi.Any(exampleAwsS3controlBucket.Arn),
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
/// resource "aws_s3control_bucketlifecycleconfiguration" "example" {
///   rules {
///     expiration = {
///       days = 365
///     }
///     filter = {
///       prefix = "logs/"
///     }
///     id = "logs"
///   }
///   rules {
///     expiration = {
///       days = 7
///     }
///     filter = {
///       prefix = "temp/"
///     }
///     id = "temp"
///   }
///   bucket = exampleAwsS3controlBucket.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3control.BucketLifecycleConfiguration;
/// import com.pulumi.aws.s3control.BucketLifecycleConfigurationArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleExpirationArgs;
/// import com.pulumi.aws.s3control.inputs.BucketLifecycleConfigurationRuleFilterArgs;
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
///         var example = new BucketLifecycleConfiguration("example", BucketLifecycleConfigurationArgs.builder()
///             .rules(
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
///                         .days(365)
///                         .build())
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("logs/")
///                         .build())
///                     .id("logs")
///                     .build(),
///                 BucketLifecycleConfigurationRuleArgs.builder()
///                     .expiration(BucketLifecycleConfigurationRuleExpirationArgs.builder()
///                         .days(7)
///                         .build())
///                     .filter(BucketLifecycleConfigurationRuleFilterArgs.builder()
///                         .prefix("temp/")
///                         .build())
///                     .id("temp")
///                     .build())
///             .bucket(exampleAwsS3controlBucket.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:s3control:BucketLifecycleConfiguration
///     properties:
///       rules:
///         - expiration:
///             days: 365
///           filter:
///             prefix: logs/
///           id: logs
///         - expiration:
///             days: 7
///           filter:
///             prefix: temp/
///           id: temp
///       bucket: ${exampleAwsS3controlBucket.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import S3 Control Bucket Lifecycle Configurations using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration example arn:aws:s3-outposts:us-east-1:123456789012:outpost/op-12345678/bucket/example
/// ```
class BucketLifecycleConfigurationS3Control extends pulumi.CustomResource {
  /// ARN of the bucket.
  late final pulumi.Output<String> bucket;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block(s) containing lifecycle rules for the bucket. See `rule` below.
  late final pulumi.Output<List<BucketLifecycleConfigurationRuleS3Control>> rules;

  /// Creates a new [BucketLifecycleConfigurationS3Control].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BucketLifecycleConfigurationS3Control]. {@macro pulumi_s3_control_bucket_lifecycle_configuration_bucket_lifecycle_configuration_s3_control_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BucketLifecycleConfigurationS3Control(
    String name, {
    BucketLifecycleConfigurationS3ControlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationRuleS3Control>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationRuleS3Control>(guardedValue, (value) => BucketLifecycleConfigurationRuleS3Control.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [BucketLifecycleConfigurationS3Control] resource's state with the given [name] and [id].
  static BucketLifecycleConfigurationS3Control get(
    String name,
    pulumi.Input<String> id, {
    BucketLifecycleConfigurationS3ControlState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return BucketLifecycleConfigurationS3Control._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  BucketLifecycleConfigurationS3Control._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationRuleS3Control>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationRuleS3Control>(guardedValue, (value) => BucketLifecycleConfigurationRuleS3Control.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [BucketLifecycleConfigurationS3Control] resource.
  BucketLifecycleConfigurationS3Control.reference(String urn)
    : super(
        'aws:s3control/bucketLifecycleConfiguration:BucketLifecycleConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    bucket = registerOutput<String>('bucket');
    region = registerOutput<String>('region');
    rules = registerOutput<List<BucketLifecycleConfigurationRuleS3Control>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<BucketLifecycleConfigurationRuleS3Control>(guardedValue, (value) => BucketLifecycleConfigurationRuleS3Control.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
