// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualGatewaySpecLoggingAccessLogFileFormatJson {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLogFileFormatJson].
  /// [key] Required.
  /// [value] Required.
  GetVirtualGatewaySpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFileFormatJson(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

