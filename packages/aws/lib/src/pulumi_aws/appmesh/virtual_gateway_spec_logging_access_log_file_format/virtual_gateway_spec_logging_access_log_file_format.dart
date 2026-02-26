// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../virtual_gateway_spec_logging_access_log_file_format_json/virtual_gateway_spec_logging_access_log_file_format_json.dart';

class VirtualGatewaySpecLoggingAccessLogFileFormat {
  /// The logging format for JSON.
  final List<VirtualGatewaySpecLoggingAccessLogFileFormatJson>? jsons;

  /// The logging format for text. Must be between 1 and 1000 characters in length.
  final String? text;

  VirtualGatewaySpecLoggingAccessLogFileFormat({
    this.jsons,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonsValue = jsons;
    if (jsonsValue != null) {
      map['jsons'] = Input.encodeList<
          VirtualGatewaySpecLoggingAccessLogFileFormatJson,
          Map<String, dynamic>>(jsonsValue, (value) => value.toMap());
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory VirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLogFileFormat(
      jsons: map['jsons'] == null
          ? null
          : Input.decodeList<VirtualGatewaySpecLoggingAccessLogFileFormatJson>(
              map['jsons'],
              (value) =>
                  VirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(
                      (value as Map).cast<String, dynamic>())),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
