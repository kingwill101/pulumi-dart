// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log_file_format.dart';

class GetVirtualNodeSpecLoggingAccessLogFile {
  final List<GetVirtualNodeSpecLoggingAccessLogFileFormat> formats;
  final String path;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLogFile].
  /// [formats] Required.
  /// [path] Required.
  GetVirtualNodeSpecLoggingAccessLogFile({
    required this.formats,
    required this.path,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'formats':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecLoggingAccessLogFileFormat,
            Map<String, dynamic>
          >(formats, (value) => value.toMap()),
      'path': path,
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLogFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecLoggingAccessLogFile(
      formats:
          pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFileFormat>(
            map['formats'],
            (value) => GetVirtualNodeSpecLoggingAccessLogFileFormat.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      path: map['path'] as String,
    );
  }
}
