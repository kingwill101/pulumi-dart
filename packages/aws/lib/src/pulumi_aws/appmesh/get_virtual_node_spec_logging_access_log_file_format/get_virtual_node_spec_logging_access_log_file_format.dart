// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_logging_access_log_file_format_json/get_virtual_node_spec_logging_access_log_file_format_json.dart';

class GetVirtualNodeSpecLoggingAccessLogFileFormat {
  final List<GetVirtualNodeSpecLoggingAccessLogFileFormatJson> jsons;
  final String text;

  GetVirtualNodeSpecLoggingAccessLogFileFormat({
    required this.jsons,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jsons'] = Input.encodeList<
        GetVirtualNodeSpecLoggingAccessLogFileFormatJson,
        Map<String, dynamic>>(jsons, (value) => value.toMap());
    map['text'] = text;
    return map;
  }

  factory GetVirtualNodeSpecLoggingAccessLogFileFormat.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLogFileFormat(
      jsons: Input.decodeList<GetVirtualNodeSpecLoggingAccessLogFileFormatJson>(
          map['jsons'],
          (value) => GetVirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(
              (value as Map).cast<String, dynamic>())),
      text: map['text'] as String,
    );
  }
}
