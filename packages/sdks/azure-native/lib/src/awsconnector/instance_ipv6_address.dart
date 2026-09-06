// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of InstanceIpv6Address
class InstanceIpv6Address {
  /// Property ipv6Address
  final pulumi.Input<String?>? ipv6Address;
  /// &lt;p&gt;Determines if an IPv6 address associated with a network interface is the primary IPv6 address. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'&gt;RunInstances&lt;/a&gt;.&lt;/p&gt;
  final pulumi.Input<bool?>? isPrimaryIpv6;

  /// Creates a new [InstanceIpv6Address].
  /// [ipv6Address] Property ipv6Address
  /// [isPrimaryIpv6] &lt;p&gt;Determines if an IPv6 address associated with a network interface is the primary IPv6 address. When you enable an IPv6 GUA address to be a primary IPv6, the first IPv6 GUA will be made the primary IPv6 address until the instance is terminated or the network interface is detached. For more information, see &lt;a href='https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_RunInstances.html'&gt;RunInstances&lt;/a&gt;.&lt;/p&gt;
  const InstanceIpv6Address({
    this.ipv6Address,
    this.isPrimaryIpv6,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv6Address': ?ipv6Address,
      'isPrimaryIpv6': ?isPrimaryIpv6,
    };
  }

  factory InstanceIpv6Address.fromMap(Map<String, dynamic> map) {
    return InstanceIpv6Address(
      ipv6Address: (() { final guardedValue = map['ipv6Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrimaryIpv6: (() { final guardedValue = map['isPrimaryIpv6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
