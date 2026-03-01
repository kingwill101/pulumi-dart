// ignore_for_file: unused_element, unnecessary_cast


class TrafficManagerNestedEndpointCustomHeader {
  /// The name of the custom header.
  final String name;
  /// The value of custom header. Applicable for HTTP and HTTPS protocol.
  final String value;

  /// Creates a new [TrafficManagerNestedEndpointCustomHeader].
  /// [name] The name of the custom header.
  /// [value] The value of custom header. Applicable for HTTP and HTTPS protocol.
  TrafficManagerNestedEndpointCustomHeader({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory TrafficManagerNestedEndpointCustomHeader.fromMap(Map<String, dynamic> map) {
    return TrafficManagerNestedEndpointCustomHeader(
      name: map['name'] as String,
      value: map['value'] as String,
    );
  }
}

