// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log_file.dart';

class GetVirtualNodeSpecLoggingAccessLog {
  final List<GetVirtualNodeSpecLoggingAccessLogFile> files;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLog].
  /// [files] Required.
  GetVirtualNodeSpecLoggingAccessLog({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'files': pulumi.Input.encodeList<GetVirtualNodeSpecLoggingAccessLogFile, Map<String, dynamic>>(files, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLog(
      files: pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFile>(map['files'], (value) => GetVirtualNodeSpecLoggingAccessLogFile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

