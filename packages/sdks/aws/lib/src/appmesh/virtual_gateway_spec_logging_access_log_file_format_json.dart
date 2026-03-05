// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecLoggingAccessLogFileFormatJson {
  /// The specified key for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<String> key;
  /// The specified value for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<String> value;

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
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

