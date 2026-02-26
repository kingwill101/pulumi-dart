// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../virtual_node_spec_logging_access_log_file_format_json/virtual_node_spec_logging_access_log_file_format_json.dart';

class VirtualNodeSpecLoggingAccessLogFileFormat {
  /// The logging format for JSON.
  final List<VirtualNodeSpecLoggingAccessLogFileFormatJson>? jsons;

  /// The logging format for text. Must be between 1 and 1000 characters in length.
  final String? text;

  VirtualNodeSpecLoggingAccessLogFileFormat({
    this.jsons,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final jsonsValue = jsons;
    if (jsonsValue != null) {
      map['jsons'] = Input.encodeList<
          VirtualNodeSpecLoggingAccessLogFileFormatJson,
          Map<String, dynamic>>(jsonsValue, (value) => value.toMap());
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory VirtualNodeSpecLoggingAccessLogFileFormat.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFileFormat(
      jsons: map['jsons'] == null
          ? null
          : Input.decodeList<VirtualNodeSpecLoggingAccessLogFileFormatJson>(
              map['jsons'],
              (value) => VirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(
                  (value as Map).cast<String, dynamic>())),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
