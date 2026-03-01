// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_logging_access_log_file_format.dart';

class VirtualGatewaySpecLoggingAccessLogFile {
  /// The specified format for the logs.
  final VirtualGatewaySpecLoggingAccessLogFileFormat? format;

  /// File path to write access logs to. You can use `/dev/stdout` to send access logs to standard out. Must be between 1 and 255 characters in length.
  final String path;

  /// Creates a new [VirtualGatewaySpecLoggingAccessLogFile].
  /// [format] The specified format for the logs.
  /// [path] File path to write access logs to. You can use `/dev/stdout` to send access logs to standard out. Must be between 1 and 255 characters in length.
  VirtualGatewaySpecLoggingAccessLogFile({this.format, required this.path});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?format == null ? null : format!.toMap(),
      'path': path,
    };
  }

  factory VirtualGatewaySpecLoggingAccessLogFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecLoggingAccessLogFile(
      format: map['format'] == null
          ? null
          : VirtualGatewaySpecLoggingAccessLogFileFormat.fromMap(
              (map['format'] as Map).cast<String, dynamic>(),
            ),
      path: map['path'] as String,
    );
  }
}
