// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecLoggingAccessLogFileFormatJson {
  /// Key for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<String> key;
  /// Value for the JSON. Must be between 1 and 100 characters in length.
  final pulumi.Input<String> value;

  /// Creates a new [VirtualNodeSpecLoggingAccessLogFileFormatJson].
  /// [key] Key for the JSON. Must be between 1 and 100 characters in length.
  /// [value] Value for the JSON. Must be between 1 and 100 characters in length.
  const VirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory VirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecLoggingAccessLogFileFormatJson(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
