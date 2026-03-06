// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_logging_access_log_file.dart';

class VirtualNodeSpecLoggingAccessLog {
  /// File object to send virtual node access logs to.
  final pulumi.Input<VirtualNodeSpecLoggingAccessLogFile>? file;

  /// Creates a new [VirtualNodeSpecLoggingAccessLog].
  /// [file] File object to send virtual node access logs to.
  const VirtualNodeSpecLoggingAccessLog({
    this.file,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'file': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecLoggingAccessLogFile, Map<String, dynamic>>(file, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLog(
      file: (() { final guardedValue = map['file']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecLoggingAccessLogFile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

