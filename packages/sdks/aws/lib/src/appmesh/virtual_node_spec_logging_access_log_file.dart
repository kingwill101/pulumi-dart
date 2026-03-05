// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_logging_access_log_file_format.dart';

class VirtualNodeSpecLoggingAccessLogFile {
  /// The specified format for the logs.
  final pulumi.Input<VirtualNodeSpecLoggingAccessLogFileFormat>? format;
  /// File path to write access logs to. You can use `/dev/stdout` to send access logs to standard out. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> path;

  /// Creates a new [VirtualNodeSpecLoggingAccessLogFile].
  /// [format] The specified format for the logs.
  /// [path] File path to write access logs to. You can use `/dev/stdout` to send access logs to standard out. Must be between 1 and 255 characters in length.
  VirtualNodeSpecLoggingAccessLogFile({
    this.format,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'format': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecLoggingAccessLogFileFormat, Map<String, dynamic>>(format, (value) => value.toMap()),
      'path': path,
    };
  }

  factory VirtualNodeSpecLoggingAccessLogFile.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFile(
      format: (() { final guardedValue = map['format']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecLoggingAccessLogFileFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}

