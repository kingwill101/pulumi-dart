// ignore_for_file: unused_element, unnecessary_cast

/// An HTTP header.
class GoogleCloudApigeeV1SecurityActionHttpHeaderResponse {
  /// The header name to be sent to the target.
  final String name;

  /// The header value to be sent to the target.
  final String value;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionHttpHeaderResponse].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  GoogleCloudApigeeV1SecurityActionHttpHeaderResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory GoogleCloudApigeeV1SecurityActionHttpHeaderResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1SecurityActionHttpHeaderResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
