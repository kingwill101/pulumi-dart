// ignore_for_file: unused_element, unnecessary_cast


class ExperimentTemplateTargetResourceTag {
  /// Tag key.
  final String key;
  /// Tag value.
  final String value;

  /// Creates a new [ExperimentTemplateTargetResourceTag].
  /// [key] Tag key.
  /// [value] Tag value.
  ExperimentTemplateTargetResourceTag({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ExperimentTemplateTargetResourceTag.fromMap(Map<String, dynamic> map) {
    return ExperimentTemplateTargetResourceTag(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

