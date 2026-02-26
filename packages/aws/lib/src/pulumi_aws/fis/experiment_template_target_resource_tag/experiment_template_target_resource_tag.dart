// ignore_for_file: unused_element, unnecessary_cast

class ExperimentTemplateTargetResourceTag {
  /// Tag key.
  final String key;

  /// Tag value.
  final String value;

  ExperimentTemplateTargetResourceTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory ExperimentTemplateTargetResourceTag.fromMap(
      Map<String, dynamic> map) {
    return ExperimentTemplateTargetResourceTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
