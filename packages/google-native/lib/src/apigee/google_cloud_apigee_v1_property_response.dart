// ignore_for_file: unused_element, unnecessary_cast

/// A single property entry in the Properties message.
class GoogleCloudApigeeV1PropertyResponse {
  /// The property key
  final String name;

  /// The property value
  final String value;

  /// Creates a new [GoogleCloudApigeeV1PropertyResponse].
  /// [name] The property key
  /// [value] The property value
  GoogleCloudApigeeV1PropertyResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory GoogleCloudApigeeV1PropertyResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1PropertyResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
