// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_gateway_spec_logging_access_log_file_format/get_virtual_gateway_spec_logging_access_log_file_format.dart';

class GetVirtualGatewaySpecLoggingAccessLogFile {
  final List<GetVirtualGatewaySpecLoggingAccessLogFileFormat> formats;
  final String path;

  GetVirtualGatewaySpecLoggingAccessLogFile({
    required this.formats,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['formats'] = pulumi.Input.encodeList<
        GetVirtualGatewaySpecLoggingAccessLogFileFormat,
        Map<String, dynamic>>(formats, (value) => value.toMap());
    map['path'] = path;
    return map;
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFile.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFile(
      formats: pulumi.Input.decodeList<
              GetVirtualGatewaySpecLoggingAccessLogFileFormat>(
          map['formats'],
          (value) => GetVirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(
              (value as Map).cast<String, dynamic>())),
      path: map['path'] as String,
    );
  }
}
