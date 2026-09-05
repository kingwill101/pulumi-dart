// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogMetricFilterMetricTransformation {
  /// The value to emit when a filter pattern does not match a log event. Conflicts with `dimensions`.
  final pulumi.Input<String?>? defaultValue;
  /// Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with `defaultValue`.
  final pulumi.Input<Map<String, String>?>? dimensions;
  /// The name of the CloudWatch metric to which the monitored log information should be published (e.g., `ErrorCount`)
  final pulumi.Input<String> name;
  /// The destination namespace of the CloudWatch metric.
  final pulumi.Input<String> namespace;
  /// The unit to assign to the metric. If you omit this, the unit is set as `None`.
  final pulumi.Input<String?>? unit;
  /// What to publish to the metric. For example, if you're counting the occurrences of a particular term like "Error", the value will be "1" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event.
  final pulumi.Input<String> value;

  /// Creates a new [LogMetricFilterMetricTransformation].
  /// [defaultValue] The value to emit when a filter pattern does not match a log event. Conflicts with `dimensions`.
  /// [dimensions] Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with `defaultValue`.
  /// [name] The name of the CloudWatch metric to which the monitored log information should be published (e.g., `ErrorCount`)
  /// [namespace] The destination namespace of the CloudWatch metric.
  /// [unit] The unit to assign to the metric. If you omit this, the unit is set as `None`.
  /// [value] What to publish to the metric. For example, if you're counting the occurrences of a particular term like "Error", the value will be "1" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event.
  const LogMetricFilterMetricTransformation({
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
      defaultValue: (() { final guardedValue = map['defaultValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dimensions: (() { final guardedValue = map['dimensions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
