// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_logging_access_log_file.dart';

class VirtualNodeSpecLoggingAccessLog {
  /// File object to send virtual node access logs to.
  final VirtualNodeSpecLoggingAccessLogFile? file;

  /// Creates a new [VirtualNodeSpecLoggingAccessLog].
  /// [file] File object to send virtual node access logs to.
  VirtualNodeSpecLoggingAccessLog({this.file});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'file': ?file == null ? null : file!.toMap()};
  }

  factory VirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLog(
      file: map['file'] == null
          ? null
          : VirtualNodeSpecLoggingAccessLogFile.fromMap(
              (map['file'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
