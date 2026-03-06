// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_logging_access_log_file_format_json.dart';

class VirtualGatewaySpecLoggingAccessLogFileFormat {
  /// The logging format for JSON.
  final pulumi.Input<List<VirtualGatewaySpecLoggingAccessLogFileFormatJson>>? jsons;
  /// The logging format for text. Must be between 1 and 1000 characters in length.
  final pulumi.Input<String>? text;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLogFileFormat].
  /// [jsons] The logging format for JSON.
  /// [text] The logging format for text. Must be between 1 and 1000 characters in length.
  const VirtualGatewaySpecLoggingAccessLogFileFormat({
    this.jsons,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsons': ?pulumi.Input.mapOptionalInputValue<List<VirtualGatewaySpecLoggingAccessLogFileFormatJson>, List<Map<String, dynamic>>>(jsons, (value) => pulumi.Input.encodeList<VirtualGatewaySpecLoggingAccessLogFileFormatJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
    };
  }

  factory VirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecLoggingAccessLogFileFormat(
      jsons: (() { final guardedValue = map['jsons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualGatewaySpecLoggingAccessLogFileFormatJson>(guardedValue, (value) => VirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

