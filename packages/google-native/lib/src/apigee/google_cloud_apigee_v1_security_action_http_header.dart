// ignore_for_file: unused_element, unnecessary_cast

/// An HTTP header.
class GoogleCloudApigeeV1SecurityActionHttpHeader {
  /// The header name to be sent to the target.
  final String? name;

  /// The header value to be sent to the target.
  final String? value;

  /// Creates a new [GoogleCloudApigeeV1SecurityActionHttpHeader].
  /// [name] The header name to be sent to the target.
  /// [value] The header value to be sent to the target.
  GoogleCloudApigeeV1SecurityActionHttpHeader({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory GoogleCloudApigeeV1SecurityActionHttpHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudApigeeV1SecurityActionHttpHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
