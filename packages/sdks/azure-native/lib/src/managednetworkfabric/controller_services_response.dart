// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Network Fabric Controller services.
class ControllerServicesResponse {
  /// The IPv4 Address space is optional, if the value is not defined at the time of NFC creation, then the default value 10.0.0.0/19 is considered. The IPV4 address subnet is an optional attribute.
  final pulumi.Input<List<String>>? ipv4AddressSpaces;
  /// The IPv6 is not supported right now.
  final pulumi.Input<List<String>>? ipv6AddressSpaces;

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
      ipv4AddressSpaces: (() { final guardedValue = map['ipv4AddressSpaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv6AddressSpaces: (() { final guardedValue = map['ipv6AddressSpaces']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

