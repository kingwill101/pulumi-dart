// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Monitor.
class MonitorArgs2 {
  /// The time, in seconds, that metrics are aggregated and sent to Amazon CloudWatch. Valid values are either 30 or 60.
  final Input<int>? aggregationPeriod;

  /// The name of the monitor.
  ///
  /// The following arguments are optional:
  final Input<String> monitorName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value tags for the monitor. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MonitorArgs2({
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

  factory MonitorArgs2.fromMap(Map<String, dynamic> map) {
    return MonitorArgs2(
      aggregationPeriod: Input.asOptionalInput<int>(map['aggregationPeriod']),
      monitorName: Input.asInput<String>(map['monitorName']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
