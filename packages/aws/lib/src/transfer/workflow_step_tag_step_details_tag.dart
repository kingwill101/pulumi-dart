// ignore_for_file: unused_element, unnecessary_cast

class WorkflowStepTagStepDetailsTag {
  final String key;

  /// The value that corresponds to the key.
  final String value;

  /// Creates a new [WorkflowStepTagStepDetailsTag].
  /// [key] Required.
  /// [value] The value that corresponds to the key.
  WorkflowStepTagStepDetailsTag({required this.key, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory WorkflowStepTagStepDetailsTag.fromMap(Map<String, dynamic> map) {
    return WorkflowStepTagStepDetailsTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
