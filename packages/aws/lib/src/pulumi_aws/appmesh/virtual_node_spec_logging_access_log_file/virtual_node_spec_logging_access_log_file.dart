// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_logging_access_log_file_format/virtual_node_spec_logging_access_log_file_format.dart';

class VirtualNodeSpecLoggingAccessLogFile {
  /// The specified format for the logs.
  final VirtualNodeSpecLoggingAccessLogFileFormat? format;

  /// File path to write access logs to. You can use `/dev/stdout` to send access logs to standard out. Must be between 1 and 255 characters in length.
  final String path;

  VirtualNodeSpecLoggingAccessLogFile({
    this.format,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final formatValue = format;
    if (formatValue != null) {
      map['format'] = formatValue.toMap();
    }
    map['path'] = path;
    return map;
  }

  factory VirtualNodeSpecLoggingAccessLogFile.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFile(
      format: map['format'] == null
          ? null
          : VirtualNodeSpecLoggingAccessLogFileFormat.fromMap(
              (map['format'] as Map).cast<String, dynamic>()),
      path: map['path'] as String,
    );
  }
}
