// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_logging_access_log_file_format_json.dart';

class GetVirtualGatewaySpecLoggingAccessLogFileFormat {
  final List<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson> jsons;
  final String text;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLogFileFormat].
  /// [jsons] Required.
  /// [text] Required.
  GetVirtualGatewaySpecLoggingAccessLogFileFormat({
    required this.jsons,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsons': pulumi.Input.encodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson, Map<String, dynamic>>(jsons, (value) => value.toMap()),
      'text': text,
    };
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFileFormat(
      jsons: pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson>(map['jsons'], (value) => GetVirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}

