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
    String? name,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
    required String targetArn,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        roleArn = pulumi.Input.asInput<String>(roleArn),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        targetArn = pulumi.Input.asInput<String>(targetArn);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetArn'] = targetArn;
    return map;
  }

  factory LogDestinationArgs.fromMap(Map<String, dynamic> map) {
    return LogDestinationArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      targetArn: map['targetArn'] as String,
    );
  }
}
