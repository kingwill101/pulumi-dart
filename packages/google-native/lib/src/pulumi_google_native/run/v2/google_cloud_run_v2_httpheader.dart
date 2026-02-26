// ignore_for_file: unused_element, unnecessary_cast

/// HTTPHeader describes a custom header to be used in HTTP probes
class GoogleCloudRunV2HTTPHeader {
  /// The header field name
  final String name;

  /// The header field value
  final String? value;

  GoogleCloudRunV2HTTPHeader({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GoogleCloudRunV2HTTPHeader.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2HTTPHeader(
      name: map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
