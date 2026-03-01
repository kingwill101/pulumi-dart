import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_destination_args.dart';

/// Provides a CloudWatch Logs destination resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testDestination = new aws.cloudwatch.LogDestination("test_destination", {
///     name: "test_destination",
///     roleArn: iamForCloudwatch.arn,
///     targetArn: kinesisForCloudwatch.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_destination = aws.cloudwatch.LogDestination("test_destination",
///     name="test_destination",
///     role_arn=iam_for_cloudwatch["arn"],
///     target_arn=kinesis_for_cloudwatch["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var testDestination = new Aws.CloudWatch.LogDestination("test_destination", new()
///     {
///         Name = "test_destination",
///         RoleArn = iamForCloudwatch.Arn,
///         TargetArn = kinesisForCloudwatch.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewLogDestination(ctx, "test_destination", &cloudwatch.LogDestinationArgs{
/// 			Name:      pulumi.String("test_destination"),
/// 			RoleArn:   pulumi.Any(iamForCloudwatch.Arn),
/// 			TargetArn: pulumi.Any(kinesisForCloudwatch.Arn),
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
/// import com.pulumi.aws.cloudwatch.LogDestination;
/// import com.pulumi.aws.cloudwatch.LogDestinationArgs;
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
///         var testDestination = new LogDestination("testDestination", LogDestinationArgs.builder()
///             .name("test_destination")
///             .roleArn(iamForCloudwatch.arn())
///             .targetArn(kinesisForCloudwatch.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testDestination:
///     type: aws:cloudwatch:LogDestination
///     name: test_destination
///     properties:
///       name: test_destination
///       roleArn: ${iamForCloudwatch.arn}
///       targetArn: ${kinesisForCloudwatch.arn}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs destinations using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDestination:LogDestination test_destination test_destination
/// ```
class LogDestination extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) specifying the log destination.
  late final pulumi.Output<String> arn;

  /// A name for the log destination.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to put data into the target.
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ARN of the target Amazon Kinesis stream resource for the destination.
  late final pulumi.Output<String> targetArn;

  /// Creates a new [LogDestination].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogDestination]. {@macro pulumi_cloudwatch_log_destination_log_destination_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogDestination(
    String name, {
    LogDestinationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:cloudwatch/logDestination:LogDestination',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetArn = registerOutput<String>('targetArn');
  }
}
