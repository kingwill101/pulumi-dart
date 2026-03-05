// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetInstanceClassesInstanceClassStorageRange {
  /// DB Instance available storage max value.
  final pulumi.Input<String> max;
  /// DB Instance available storage min value.
  final pulumi.Input<String> min;
  /// DB Instance available storage increase step.
  final pulumi.Input<String> step;

  /// Creates a new [GetInstanceClassesInstanceClassStorageRange].
  /// [max] DB Instance available storage max value.
  /// [min] DB Instance available storage min value.
  /// [step] DB Instance available storage increase step.
  GetInstanceClassesInstanceClassStorageRange({
    required this.max,
    required this.min,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': max,
      'min': min,
      'step': step,
    };
  }

  factory GetInstanceClassesInstanceClassStorageRange.fromMap(Map<String, dynamic> map) {
    return GetInstanceClassesInstanceClassStorageRange(
      max: pulumi.Input.fromValue(map['max'] as String),
      min: pulumi.Input.fromValue(map['min'] as String),
      step: pulumi.Input.fromValue(map['step'] as String),
    );
  }
}

