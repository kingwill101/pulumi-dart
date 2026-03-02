// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogMetricFilterMetricTransformation {
  /// The value to emit when a filter pattern does not match a log event. Conflicts with `dimensions`.
  final pulumi.Input<String>? defaultValue;
  /// Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with `default_value`.
  final pulumi.Input<Map<String, String>>? dimensions;
  /// The name of the CloudWatch metric to which the monitored log information should be published (e.g., `ErrorCount`)
  final pulumi.Input<String> name;
  /// The destination namespace of the CloudWatch metric.
  final pulumi.Input<String> namespace;
  /// The unit to assign to the metric. If you omit this, the unit is set as `None`.
  final pulumi.Input<String>? unit;
  /// What to publish to the metric. For example, if you're counting the occurrences of a particular term like "Error", the value will be "1" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event.
  final pulumi.Input<String> value;

  /// Creates a new [LogMetricFilterMetricTransformation].
  /// [defaultValue] The value to emit when a filter pattern does not match a log event. Conflicts with `dimensions`.
  /// [dimensions] Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with `default_value`.
  /// [name] The name of the CloudWatch metric to which the monitored log information should be published (e.g., `ErrorCount`)
  /// [namespace] The destination namespace of the CloudWatch metric.
  /// [unit] The unit to assign to the metric. If you omit this, the unit is set as `None`.
  /// [value] What to publish to the metric. For example, if you're counting the occurrences of a particular term like "Error", the value will be "1" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event.
  LogMetricFilterMetricTransformation({
    this.defaultValue,
    this.dimensions,
    required this.name,
    required this.namespace,
    this.unit,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultValue': ?defaultValue,
      'dimensions': ?dimensions,
      'name': name,
      'namespace': namespace,
      'unit': ?unit,
      'value': value,
    };
  }

  factory LogMetricFilterMetricTransformation.fromMap(Map<String, dynamic> map) {
    return LogMetricFilterMetricTransformation(
      defaultValue: map['defaultValue'] == null ? null : (map['defaultValue'] as String).input(),
      dimensions: map['dimensions'] == null ? null : ((map['dimensions'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      namespace: (map['namespace'] as String).input(),
      unit: map['unit'] == null ? null : (map['unit'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

