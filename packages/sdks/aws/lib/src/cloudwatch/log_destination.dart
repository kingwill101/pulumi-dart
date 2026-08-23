import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_destination_args.dart';
import 'log_destination_state.dart';

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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cloudwatch_logdestination" "test_destination" {
///   name       = "test_destination"
///   role_arn   = iamForCloudwatch.arn
///   target_arn = kinesisForCloudwatch.arn
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
/// ### Identity Schema
///
/// #### Required
///
/// * `name` (String) Name of the destination.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Destinations using `name`. For example:
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
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
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
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
  }

  /// Gets an existing [LogDestination] resource's state with the given [name] and [id].
  static LogDestination get(
    String name,
    pulumi.Input<String> id, {
    LogDestinationState? state,
  }) {
    return LogDestination._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  LogDestination._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDestination:LogDestination',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    targetArn = registerOutput<String>('targetArn');
  }
}
