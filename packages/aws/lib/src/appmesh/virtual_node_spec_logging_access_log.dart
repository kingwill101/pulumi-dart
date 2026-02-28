// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_logging_access_log_file.dart';

class VirtualNodeSpecLoggingAccessLog {
  /// File object to send virtual node access logs to.
  final VirtualNodeSpecLoggingAccessLogFile? file;

  /// Creates a new [VirtualNodeSpecLoggingAccessLog].
  /// [file] File object to send virtual node access logs to.
  VirtualNodeSpecLoggingAccessLog({
    this.file,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final fileValue = file;
    if (fileValue != null) {
      map['file'] = fileValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLog(
      file: map['file'] == null
          ? null
          : VirtualNodeSpecLoggingAccessLogFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>()),
    );
  }
}
