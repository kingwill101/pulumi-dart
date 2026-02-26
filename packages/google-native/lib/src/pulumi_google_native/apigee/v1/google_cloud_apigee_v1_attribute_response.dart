// ignore_for_file: unused_element, unnecessary_cast

/// Key-value pair to store extra metadata.
class GoogleCloudApigeeV1AttributeResponse {
  /// API key of the attribute.
  final String name;

  /// Value of the attribute.
  final String value;

  GoogleCloudApigeeV1AttributeResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudApigeeV1AttributeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1AttributeResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
