// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv6Address
class InstanceIpv6AddressEc2NetworkInterfaceResponse {
  /// Property ipv6Address
  final pulumi.Input<String?>? ipv6Address;

  /// Creates a new [InstanceIpv6AddressEc2NetworkInterfaceResponse].
  /// [ipv6Address] Property ipv6Address
  const InstanceIpv6AddressEc2NetworkInterfaceResponse({
    this.ipv6Address,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Address': ?ipv6Address,
    };
  }

  factory InstanceIpv6AddressEc2NetworkInterfaceResponse.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6AddressEc2NetworkInterfaceResponse(
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
