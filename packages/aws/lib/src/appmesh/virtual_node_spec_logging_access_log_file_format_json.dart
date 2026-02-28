// ignore_for_file: unused_element, unnecessary_cast

class VirtualNodeSpecLoggingAccessLogFileFormatJson {
  /// The specified key for the JSON. Must be between 1 and 100 characters in length.
  final String key;

  /// The specified value for the JSON. Must be between 1 and 100 characters in length.
  final String value;

  /// Creates a new [VirtualNodeSpecLoggingAccessLogFileFormatJson].
  /// [key] The specified key for the JSON. Must be between 1 and 100 characters in length.
  /// [value] The specified value for the JSON. Must be between 1 and 100 characters in length.
  VirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory VirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
