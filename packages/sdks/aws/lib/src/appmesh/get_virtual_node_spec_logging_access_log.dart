// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log_file.dart';

class GetVirtualNodeSpecLoggingAccessLog {
  /// File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecLoggingAccessLogFile>> files;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLog].
  /// [files] File object to send virtual node access logs to. See `spec.logging.access_log.file` Block for details.
  const GetVirtualNodeSpecLoggingAccessLog({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecLoggingAccessLogFile>, List<Map<String, dynamic>>>(files, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecLoggingAccessLogFile, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLog(
      files: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFile>(map['files']!, (value) => GetVirtualNodeSpecLoggingAccessLogFile.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
