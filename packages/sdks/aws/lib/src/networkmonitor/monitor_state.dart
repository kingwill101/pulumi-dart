// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  final pulumi.Input<int>? aggregationPeriod;
  /// The ARN of the monitor.
  final pulumi.Input<String>? arn;
  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [MonitorState].
  /// [aggregationPeriod] The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  /// [arn] The ARN of the monitor.
  /// [monitorName] The name of the monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  MonitorState({
    pulumi.Output<int>? aggregationPeriod,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? monitorName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      aggregationPeriod = pulumi.Input.asOptionalInput<int>(aggregationPeriod),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      monitorName = pulumi.Input.asOptionalInput<String>(monitorName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': ?aggregationPeriod,
      'arn': ?arn,
      'monitorName': ?monitorName,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      aggregationPeriod: map['aggregationPeriod'] == null ? null : pulumi.Output.create<int>(map['aggregationPeriod'] as int),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      monitorName: map['monitorName'] == null ? null : pulumi.Output.create<String>(map['monitorName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

