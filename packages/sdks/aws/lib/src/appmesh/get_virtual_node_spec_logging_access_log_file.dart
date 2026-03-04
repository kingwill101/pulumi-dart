// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log_file_format.dart';

class GetVirtualNodeSpecLoggingAccessLogFile {
  final pulumi.Input<List<GetVirtualNodeSpecLoggingAccessLogFileFormat>>
  formats;
  final pulumi.Input<String> path;

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
          pulumi.Input.mapInputValue<
            List<GetVirtualNodeSpecLoggingAccessLogFileFormat>,
            List<Map<String, dynamic>>
          >(
            formats,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualNodeSpecLoggingAccessLogFileFormat,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'path': path,
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLogFile.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecLoggingAccessLogFile(
      formats: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFileFormat>(
          map['formats']!,
          (value) => GetVirtualNodeSpecLoggingAccessLogFileFormat.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      path: pulumi.Input.fromValue(map['path'] as String),
    );
  }
}
