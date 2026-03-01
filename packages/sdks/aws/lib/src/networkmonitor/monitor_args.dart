// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmonitor_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_networkmonitor_monitor_monitor_args_doc}
class MonitorArgs {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  final pulumi.Input<int>? aggregationPeriod;
  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> monitorName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MonitorArgs].
  /// [aggregationPeriod] The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  /// [monitorName] The name of the monitor.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MonitorArgs({
    pulumi.Output<int>? aggregationPeriod,
    required pulumi.Output<String> monitorName,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      aggregationPeriod = pulumi.Input.asOptionalInput<int>(aggregationPeriod),
      monitorName = pulumi.Input.asInput<String>(monitorName),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aggregationPeriod': ?aggregationPeriod,
      'monitorName': monitorName,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      aggregationPeriod: map['aggregationPeriod'] == null ? null : pulumi.Output.create<int>(map['aggregationPeriod'] as int),
      monitorName: pulumi.Output.create<String>(map['monitorName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

