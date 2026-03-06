// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TaskSetScale {
  /// The unit of measure for the scale value. Default: `PERCENT`.
  final pulumi.Input<String>? unit;
  /// The value, specified as a percent total of a service's `desiredCount`, to scale the task set. Defaults to `0` if not specified. Accepted values are numbers between 0.0 and 100.0.
  final pulumi.Input<double>? value;

  /// Creates a new [TaskSetScale].
  /// [unit] The unit of measure for the scale value. Default: `PERCENT`.
  /// [value] The value, specified as a percent total of a service's `desiredCount`, to scale the task set. Defaults to `0` if not specified. Accepted values are numbers between 0.0 and 100.0.
  const TaskSetScale({
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
      unit: (() { final guardedValue = map['unit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

