// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateActionParameter {
  /// Parameter name.
  final String key;

  /// Parameter value.
  ///
  /// For a list of parameters supported by each action, see [AWS FIS actions reference](https://docs.aws.amazon.com/fis/latest/userguide/fis-actions-reference.html).
  final String value;

  ExperimentTemplateActionParameter({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ExperimentTemplateActionParameter.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateActionParameter(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
