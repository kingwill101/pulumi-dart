// ignore_for_file: unused_element, unnecessary_cast

class GetVirtualNodeSpecLoggingAccessLogFileFormatJson {
  final String key;
  final String value;

  GetVirtualNodeSpecLoggingAccessLogFileFormatJson({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    map['value'] = value;
    return map;
  }

  factory GetVirtualNodeSpecLoggingAccessLogFileFormatJson.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecLoggingAccessLogFileFormatJson(
      key: map['key'] as String,
      value: map['value'] as String,
    );
  }
}
