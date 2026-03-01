// ignore_for_file: unused_element, unnecessary_cast


class WorkflowOnExceptionStepTagStepDetailsTag {
  final String key;
  /// The value that corresponds to the key.
  final String value;

  /// Creates a new [WorkflowOnExceptionStepTagStepDetailsTag].
  /// [key] Required.
  /// [value] The value that corresponds to the key.
  WorkflowOnExceptionStepTagStepDetailsTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory WorkflowOnExceptionStepTagStepDetailsTag.fromMap(Map<String, dynamic> map) {
    return WorkflowOnExceptionStepTagStepDetailsTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

