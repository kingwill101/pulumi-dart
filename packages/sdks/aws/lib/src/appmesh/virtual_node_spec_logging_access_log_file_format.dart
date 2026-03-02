// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_logging_access_log_file_format_json.dart';

class VirtualNodeSpecLoggingAccessLogFileFormat {
  /// The logging format for JSON.
  final pulumi.Input<List<VirtualNodeSpecLoggingAccessLogFileFormatJson>>? jsons;
  /// The logging format for text. Must be between 1 and 1000 characters in length.
  final pulumi.Input<String>? text;

  /// Creates a new [VirtualNodeSpecLoggingAccessLogFileFormat].
  /// [jsons] The logging format for JSON.
  /// [text] The logging format for text. Must be between 1 and 1000 characters in length.
  VirtualNodeSpecLoggingAccessLogFileFormat({
    this.jsons,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jsons': ?pulumi.Input.mapOptionalInputValue<List<VirtualNodeSpecLoggingAccessLogFileFormatJson>, List<Map<String, dynamic>>>(jsons, (value) => pulumi.Input.encodeList<VirtualNodeSpecLoggingAccessLogFileFormatJson, Map<String, dynamic>>(value, (value) => value.toMap())),
      'text': ?text,
    };
  }

  factory VirtualNodeSpecLoggingAccessLogFileFormat.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFileFormat(
      jsons: map['jsons'] == null ? null : (pulumi.Input.decodeList<VirtualNodeSpecLoggingAccessLogFileFormatJson>(map['jsons'], (value) => VirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>()))).input(),
      text: map['text'] == null ? null : (map['text'] as String).input(),
    );
  }
}

