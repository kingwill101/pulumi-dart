// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualGatewaySpecLoggingAccessLogFileFormatJson {
  final String key;
  final String value;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLogFileFormatJson].
  /// [key] Required.
  /// [value] Required.
  GetVirtualGatewaySpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
