// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_logging_access_log_file_format.dart';

class GetVirtualGatewaySpecLoggingAccessLogFile {
  final pulumi.Input<List<GetVirtualGatewaySpecLoggingAccessLogFileFormat>> formats;
  final pulumi.Input<String> path;

  /// Creates a new [GetVirtualGatewaySpecLoggingAccessLogFile].
  /// [formats] Required.
  /// [path] Required.
  GetVirtualGatewaySpecLoggingAccessLogFile({
    required this.formats,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formats': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecLoggingAccessLogFileFormat>, List<Map<String, dynamic>>>(formats, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'path': path,
    };
  }

  factory GetVirtualGatewaySpecLoggingAccessLogFile.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecLoggingAccessLogFile(
      formats: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecLoggingAccessLogFileFormat>(map['formats']!, (value) => GetVirtualGatewaySpecLoggingAccessLogFileFormat.fromMap((value as Map).cast<String, dynamic>()))),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

