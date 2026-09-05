// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_logging_access_log_file_format_json.dart';

class VirtualNodeSpecLoggingAccessLogFileFormat {
  /// Logging format for JSON. See `spec.logging.access_log.file.format.json` Block for details.
  final pulumi.Input<List<VirtualNodeSpecLoggingAccessLogFileFormatJson>?>? jsons;
  /// Logging format for text. Must be between 1 and 1000 characters in length.
  final pulumi.Input<String?>? text;

  /// Creates a new [VirtualNodeSpecLoggingAccessLogFileFormat].
  /// [jsons] Logging format for JSON. See `spec.logging.access_log.file.format.json` Block for details.
  /// [text] Logging format for text. Must be between 1 and 1000 characters in length.
  const VirtualNodeSpecLoggingAccessLogFileFormat({
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
      jsons: (() { final guardedValue = map['jsons']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VirtualNodeSpecLoggingAccessLogFileFormatJson>(guardedValue, (value) => VirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap((value as Map).cast<String, dynamic>()))); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
