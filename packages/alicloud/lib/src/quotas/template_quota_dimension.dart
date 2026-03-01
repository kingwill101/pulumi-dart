// ignore_for_file: unused_element, unnecessary_cast


class TemplateQuotaDimension {
  /// The Key of quota_dimensions.
  final String? key;
  /// The Value of quota_dimensions.
  final String? value;

  /// Creates a new [TemplateQuotaDimension].
  /// [key] The Key of quota_dimensions.
  /// [value] The Value of quota_dimensions.
  TemplateQuotaDimension({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TemplateQuotaDimension.fromMap(Map<String, dynamic> map) {
    return TemplateQuotaDimension(
      key: map['key'] == null ? null : map['key'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}

