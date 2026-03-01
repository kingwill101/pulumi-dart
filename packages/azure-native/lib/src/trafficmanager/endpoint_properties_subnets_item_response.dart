// ignore_for_file: unused_element, unnecessary_cast


/// Subnet first address, scope, and/or last address.
class EndpointPropertiesSubnetsItemResponse {
  /// First address in the subnet.
  final String? first;
  /// Last address in the subnet.
  final String? last;
  /// Block size (number of leading bits in the subnet mask).
  final int? scope;

  /// Creates a new [EndpointPropertiesSubnetsItemResponse].
  /// [first] First address in the subnet.
  /// [last] Last address in the subnet.
  /// [scope] Block size (number of leading bits in the subnet mask).
  EndpointPropertiesSubnetsItemResponse({
    this.first,
    this.last,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'first': ?first,
      'last': ?last,
      'scope': ?scope,
    };
  }

  factory EndpointPropertiesSubnetsItemResponse.fromMap(Map<String, dynamic> map) {
    return EndpointPropertiesSubnetsItemResponse(
      first: map['first'] == null ? null : map['first'] as String,
      last: map['last'] == null ? null : map['last'] as String,
      scope: map['scope'] == null ? null : map['scope'] as int,
    );
  }
}

