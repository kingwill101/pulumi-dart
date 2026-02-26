// ignore_for_file: unused_element, unnecessary_cast

class WorkflowStepTagStepDetailsTag {
  final String key;

  /// The value that corresponds to the key.
  final String value;

  WorkflowStepTagStepDetailsTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory WorkflowStepTagStepDetailsTag.fromMap(Map<String, dynamic> map) {
    return WorkflowStepTagStepDetailsTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
