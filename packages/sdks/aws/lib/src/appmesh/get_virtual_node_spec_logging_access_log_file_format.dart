// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_logging_access_log_file_format_json.dart';

class GetVirtualNodeSpecLoggingAccessLogFileFormat {
  /// Logging format for JSON. See `spec.logging.access_log.file.format.json` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecLoggingAccessLogFileFormatJson>> jsons;
  /// Logging format for text.
  final pulumi.Input<String> text;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLogFileFormat].
  /// [jsons] Logging format for JSON. See `spec.logging.access_log.file.format.json` Block for details.
  /// [text] Logging format for text.
  const GetVirtualNodeSpecLoggingAccessLogFileFormat({
    required this.jsons,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsons': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecLoggingAccessLogFileFormatJson>, List<Map<String, dynamic>>>(jsons, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecLoggingAccessLogFileFormatJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': text,
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLogFileFormat.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLogFileFormat(
      jsons: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFileFormatJson>(map['jsons']!, (value) => GetVirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>()))),
      text: pulumi.Input.fromValue(map['text'] as String),
    );
  }
}
