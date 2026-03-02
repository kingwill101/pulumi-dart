// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv6Address
class InstanceIpv6AddressResponse {
  /// Property ipv6Address
  final pulumi.Input<String>? ipv6Address;
  /// <p>Determines if an IPv6 address associated with a network interface is the primary IPv6 address. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'>RunInstances</a>.</p>
  final pulumi.Input<bool>? isPrimaryIpv6;

  /// Creates a new [InstanceIpv6AddressResponse].
  /// [ipv6Address] Property ipv6Address
  /// [isPrimaryIpv6] <p>Determines if an IPv6 address associated with a network interface is the primary IPv6 address. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information, see <a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'>RunInstances</a>.</p>
  InstanceIpv6AddressResponse({
    this.ipv6Address,
    this.isPrimaryIpv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Address': ?ipv6Address,
      'isPrimaryIpv6': ?isPrimaryIpv6,
    };
  }

  factory InstanceIpv6AddressResponse.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6AddressResponse(
      ipv6Address: map['ipv6Address'] == null ? null : (map['ipv6Address']! as String).input(),
      isPrimaryIpv6: map['isPrimaryIpv6'] == null ? null : (map['isPrimaryIpv6']! as bool).input(),
    );
  }
}

