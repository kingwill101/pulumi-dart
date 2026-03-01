// ignore_for_file: unused_element, unnecessary_cast


class GetTemplateApplicationsApplicationDimension {
  /// Quota dimension Key.
  final String key;
  /// Quota dimension Value.
  final String value;

  /// Creates a new [GetTemplateApplicationsApplicationDimension].
  /// [key] Quota dimension Key.
  /// [value] Quota dimension Value.
  GetTemplateApplicationsApplicationDimension({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetTemplateApplicationsApplicationDimension.fromMap(Map<String, dynamic> map) {
    return GetTemplateApplicationsApplicationDimension(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

