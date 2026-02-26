// ignore_for_file: unused_element, unnecessary_cast

/// HTTPHeader describes a custom header to be used in HTTP probes
class HTTPHeaderResponse {
  /// The header field name
  final String name;

  /// The header field value
  final String value;

  HTTPHeaderResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['value'] = value;
    return map;
  }

  factory HTTPHeaderResponse.fromMap(Map<String, dynamic> map) {
    return HTTPHeaderResponse(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}
