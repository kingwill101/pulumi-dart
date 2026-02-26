// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_logging_access_log_file_format_json/get_virtual_gateway_spec_logging_access_log_file_format_json.dart';

class GetVirtualGatewaySpecLoggingAccessLogFileFormat {
  final List<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson> jsons;
  final String text;

  GetVirtualGatewaySpecLoggingAccessLogFileFormat({
    required this.jsons,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsons'] = Input.encodeList<
        GetVirtualGatewaySpecLoggingAccessLogFileFormatJson,
        Map<String, dynamic>>(jsons, (value) => value.toMap());
    map['text'] = text;
    return map;
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFileFormat(
      jsons:
          Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormatJson>(
              map['jsons'],
              (value) =>
                  GetVirtualGatewaySpecLoggingAccessLogFileFormatJson.fromMap(
                      (value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
