// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_logging_access_log_file_format_json.dart';

class GetVirtualGatewaySpecLoggingAccessLogFileFormat {
  final pulumi.Input<List<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson>> jsons;
  final pulumi.Input<String> text;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLogFileFormat].
  /// [jsons] Required.
  /// [text] Required.
  GetVirtualGatewaySpecLoggingAccessLogFileFormat({
    required this.jsons,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsons': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson>, List<Map<String, dynamic>>>(jsons, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
    };
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFileFormat(
      jsons: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson>(map['jsons']!, (value) => GetVirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>()))),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}

