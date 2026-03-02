// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVirtualNodeSpecLoggingAccessLogFileFormatJson {
  final pulumi.Input<String> key;
  final pulumi.Input<String> value;

  /// Creates a new [GetVirtualNodeSpecLoggingAccessLogFileFormatJson].
  /// [key] Required.
  /// [value] Required.
  GetVirtualNodeSpecLoggingAccessLogFileFormatJson({
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
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

