// ignore_for_file: unused_element, unnecessary_cast

class VirtualGatewaySpecLoggingAccessLogFileFormatJson {
  /// The specified key for the JSON. Must be between 1 and 100 characters in length.
  final String key;

  /// The specified value for the JSON. Must be between 1 and 100 characters in length.
  final String value;

  VirtualGatewaySpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory VirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
