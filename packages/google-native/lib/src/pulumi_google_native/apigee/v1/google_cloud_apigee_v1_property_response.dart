// ignore_for_file: unused_element, unnecessary_cast

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1PropertyResponse {
  /// The property key
  final String name;

  /// The property value
  final String value;

  GoogleCloudApigeeV1PropertyResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudApigeeV1PropertyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1PropertyResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
