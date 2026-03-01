// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_log_destination_log_destination_args_doc}
/// The set of arguments for LogDestination.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_log_destination_log_destination_args_doc}
class LogDestinationArgs {
  /// A name for the log destination.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to put data into the target.
  final pulumi.Input<String> roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ARN of the target Amazon Kinesis stream resource for the destination.
  final pulumi.Input<String> targetArn;

  /// Creates a new [LogDestinationArgs].
  /// [name] A name for the log destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The ARN of an IAM role that grants Amazon CloudWatch Logs permissions to put data into the target.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetArn] The ARN of the target Amazon Kinesis stream resource for the destination.
  LogDestinationArgs({
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<String> roleArn,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> targetArn,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetArn = pulumi.Input.asInput<String>(targetArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
      'targetArn': targetArn,
    };
  }

  factory LogDestinationArgs.fromMap(Map<String, dynamic> map) {
    return LogDestinationArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetArn: pulumi.Output.create<String>(map['targetArn'] as String),
    );
  }
}

