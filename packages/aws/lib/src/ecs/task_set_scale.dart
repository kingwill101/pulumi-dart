// ignore_for_file: unused_element, unnecessary_cast


class TaskSetScale {
  /// The unit of measure for the scale value. Default: `PERCENT`.
  final String? unit;
  /// The value, specified as a percent total of a service's `desiredCount`, to scale the task set. Defaults to `0` if not specified. Accepted values are numbers between 0.0 and 100.0.
  final double? value;

  /// Creates a new [TaskSetScale].
  /// [unit] The unit of measure for the scale value. Default: `PERCENT`.
  /// [value] The value, specified as a percent total of a service's `desiredCount`, to scale the task set. Defaults to `0` if not specified. Accepted values are numbers between 0.0 and 100.0.
  TaskSetScale({
    this.unit,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'unit': ?unit,
      'value': ?value,
    };
  }

  factory TaskSetScale.fromMap(Map<String, dynamic> map) {
    return TaskSetScale(
      unit: map['unit'] == null ? null : map['unit'] as String,
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}

