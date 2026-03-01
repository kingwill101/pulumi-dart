// ignore_for_file: unused_element, unnecessary_cast


class GetInstanceClassesInstanceClassStorageRange {
  /// DB Instance available storage max value.
  final String max;
  /// DB Instance available storage min value.
  final String min;
  /// DB Instance available storage increase step.
  final String step;

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
      max: map['max'] as String,
      min: map['min'] as String,
      step: map['step'] as String,
    );
  }
}

