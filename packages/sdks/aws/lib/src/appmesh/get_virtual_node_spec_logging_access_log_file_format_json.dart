// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecLoggingAccessLogFileFormatJson {
  /// Key for the JSON.
  final pulumi.Input<String> key;
  /// Value for the JSON.
  final pulumi.Input<String> value;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLogFileFormatJson].
  /// [key] Key for the JSON.
  /// [value] Value for the JSON.
  const GetVirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetVirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLogFileFormatJson(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
