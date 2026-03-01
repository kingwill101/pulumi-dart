// ignore_for_file: unused_element, unnecessary_cast


class GetAppTemplatesTemplateConfigList {
  /// Config key.
  final String key;
  /// Config Value.
  final String value;

  /// Creates a new [GetAppTemplatesTemplateConfigList].
  /// [key] Config key.
  /// [value] Config Value.
  GetAppTemplatesTemplateConfigList({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetAppTemplatesTemplateConfigList.fromMap(Map<String, dynamic> map) {
    return GetAppTemplatesTemplateConfigList(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

