// ignore_for_file: unused_element, unnecessary_cast

class LogMetricFilterMetricTransformation {
  /// The value to emit when a filter pattern does not match a log event. Conflicts with `dimensions`.
  final String? defaultValue;

  /// Map of fields to use as dimensions for the metric. Up to 3 dimensions are allowed. Conflicts with `default_value`.
  final Map<String, String>? dimensions;

  /// The name of the CloudWatch metric to which the monitored log information should be published (e.g., `ErrorCount`)
  final String name;

  /// The destination namespace of the CloudWatch metric.
  final String namespace;

  /// The unit to assign to the metric. If you omit this, the unit is set as `None`.
  final String? unit;

  /// What to publish to the metric. For example, if you're counting the occurrences of a particular term like "Error", the value will be "1" for each occurrence. If you're counting the bytes transferred the published value will be the value in the log event.
  final String value;

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
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final dimensionsValue = dimensions;
    if (dimensionsValue != null) {
      map['dimensions'] = dimensionsValue;
    }
    map['name'] = name;
    map['namespace'] = namespace;
    final unitValue = unit;
    if (unitValue != null) {
      map['unit'] = unitValue;
    }
    map['value'] = value;
    return map;
  }

  factory LogMetricFilterMetricTransformation.fromMap(
      Map<String, dynamic> map) {
    return LogMetricFilterMetricTransformation(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      dimensions: map['dimensions'] == null
          ? null
          : (map['dimensions'] as Map).cast<String, String>(),
      name: map['name'] as String,
      namespace: map['namespace'] as String,
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] as String,
    );
  }
}
