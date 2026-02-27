// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_virtual_node_spec_logging_access_log_file/get_virtual_node_spec_logging_access_log_file.dart';

class GetVirtualNodeSpecLoggingAccessLog {
  final List<GetVirtualNodeSpecLoggingAccessLogFile> files;

  GetVirtualNodeSpecLoggingAccessLog({
    required this.files,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['files'] = pulumi.Input.encodeList<
        GetVirtualNodeSpecLoggingAccessLogFile,
        Map<String, dynamic>>(files, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecLoggingAccessLog.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLog(
      files: pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFile>(
          map['files'],
          (value) => GetVirtualNodeSpecLoggingAccessLogFile.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
