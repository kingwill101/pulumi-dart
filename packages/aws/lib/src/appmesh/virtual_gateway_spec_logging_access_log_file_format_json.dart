// ignore_for_file: unused_element, unnecessary_cast


class VirtualGatewaySpecLoggingAccessLogFileFormatJson {
  /// The specified key for the JSON. Must be between 1 and 100 characters in length.
  final String key;
  /// The specified value for the JSON. Must be between 1 and 100 characters in length.
  final String value;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLogFileFormatJson].
  /// [key] The specified key for the JSON. Must be between 1 and 100 characters in length.
  /// [value] The specified value for the JSON. Must be between 1 and 100 characters in length.
  VirtualGatewaySpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory VirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}

