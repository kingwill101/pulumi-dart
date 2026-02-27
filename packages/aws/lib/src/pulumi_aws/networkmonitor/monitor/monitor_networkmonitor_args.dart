// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Monitor.
class MonitorNetworkmonitorArgs {
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

  MonitorNetworkmonitorArgs({
    this.aggregationPeriod,
    required this.monitorName,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aggregationPeriodValue = aggregationPeriod;
    if (aggregationPeriodValue != null) {
      map['aggregationPeriod'] = aggregationPeriodValue;
    }
    map['monitorName'] = monitorName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MonitorNetworkmonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorNetworkmonitorArgs(
      aggregationPeriod:
          pulumi.Input.asOptionalInput<int>(map['aggregationPeriod']),
      monitorName: pulumi.Input.asInput<String>(map['monitorName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
