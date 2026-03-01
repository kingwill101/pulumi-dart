// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecLoggingAccessLogFileFormatJson {
  final String key;
  final String value;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLogFileFormatJson].
  /// [key] Required.
  /// [value] Required.
  GetVirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': key, 'value': value};
  }

  factory GetVirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
