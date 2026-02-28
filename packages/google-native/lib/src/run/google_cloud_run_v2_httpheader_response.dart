// ignore_for_file: unused_element, unnecessary_cast

/// HTTPHeader describes a custom header to be used in HTTP probes
class GoogleCloudRunV2HTTPHeaderResponse {
  /// The header field name
  final String name;

  /// The header field value
  final String value;

  /// Creates a new [GoogleCloudRunV2HTTPHeaderResponse].
  /// [name] The header field name
  /// [value] The header field value
  GoogleCloudRunV2HTTPHeaderResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudRunV2HTTPHeaderResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRunV2HTTPHeaderResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
