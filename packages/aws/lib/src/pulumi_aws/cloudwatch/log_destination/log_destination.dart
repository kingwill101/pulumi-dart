import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_destination_args.dart';

/// Provides a CloudWatch Logs destination resource.
///
/// ## Example Usage
///
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
