// ignore_for_file: unused_element, unnecessary_cast


/// Network Fabric Controller services.
class ControllerServicesResponse {
  /// The IPv4 Address space is optional, if the value is not defined at the time of NFC creation, then the default value 10.0.0.0/19 is considered. The IPV4 address subnet is an optional attribute.
  final List<String>? ipv4AddressSpaces;
  /// The IPv6 is not supported right now.
  final List<String>? ipv6AddressSpaces;

  /// Creates a new [ControllerServicesResponse].
  /// [ipv4AddressSpaces] The IPv4 Address space is optional, if the value is not defined at the time of NFC creation, then the default value 10.0.0.0/19 is considered. The IPV4 address subnet is an optional attribute.
  /// [ipv6AddressSpaces] The IPv6 is not supported right now.
  ControllerServicesResponse({
    this.ipv4AddressSpaces,
    this.ipv6AddressSpaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4AddressSpaces': ?ipv4AddressSpaces,
      'ipv6AddressSpaces': ?ipv6AddressSpaces,
    };
  }

  factory ControllerServicesResponse.fromMap(Map<String, dynamic> map) {
    return ControllerServicesResponse(
      ipv4AddressSpaces: map['ipv4AddressSpaces'] == null ? null : (map['ipv4AddressSpaces'] as List).cast<String>(),
      ipv6AddressSpaces: map['ipv6AddressSpaces'] == null ? null : (map['ipv6AddressSpaces'] as List).cast<String>(),
    );
  }
}

