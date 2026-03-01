// ignore_for_file: unused_element, unnecessary_cast

import '../core/node_selector.dart';

/// ClusterCIDRSpec defines the desired state of ClusterCIDR.
class ClusterCIDRSpec {
  /// IPv4 defines an IPv4 IP block in CIDR notation(e.g. "10.0.0.0/8"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  final String? ipv4;
  /// IPv6 defines an IPv6 IP block in CIDR notation(e.g. "2001:db8::/64"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  final String? ipv6;
  /// NodeSelector defines which nodes the config is applicable to. An empty or nil NodeSelector selects all nodes. This field is immutable.
  final NodeSelector? nodeSelector;
  /// PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  final int perNodeHostBits;

  /// Creates a new [ClusterCIDRSpec].
  /// [ipv4] IPv4 defines an IPv4 IP block in CIDR notation(e.g. "10.0.0.0/8"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  /// [ipv6] IPv6 defines an IPv6 IP block in CIDR notation(e.g. "2001:db8::/64"). At least one of IPv4 and IPv6 must be specified. This field is immutable.
  /// [nodeSelector] NodeSelector defines which nodes the config is applicable to. An empty or nil NodeSelector selects all nodes. This field is immutable.
  /// [perNodeHostBits] PerNodeHostBits defines the number of host bits to be configured per node. A subnet mask determines how much of the address is used for network bits and host bits. For example an IPv4 address of 192.168.0.0/24, splits the address into 24 bits for the network portion and 8 bits for the host portion. To allocate 256 IPs, set this field to 8 (a /24 mask for IPv4 or a /120 for IPv6). Minimum value is 4 (16 IPs). This field is immutable.
  ClusterCIDRSpec({
    this.ipv4,
    this.ipv6,
    this.nodeSelector,
    required this.perNodeHostBits,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4': ?ipv4,
      'ipv6': ?ipv6,
      'nodeSelector': ?nodeSelector == null ? null : nodeSelector!.toMap(),
      'perNodeHostBits': perNodeHostBits,
    };
  }

  factory ClusterCIDRSpec.fromMap(Map<String, dynamic> map) {
    return ClusterCIDRSpec(
      ipv4: map['ipv4'] == null ? null : map['ipv4'] as String,
      ipv6: map['ipv6'] == null ? null : map['ipv6'] as String,
      nodeSelector: map['nodeSelector'] == null ? null : NodeSelector.fromMap((map['nodeSelector'] as Map).cast<String, dynamic>()),
      perNodeHostBits: map['perNodeHostBits'] as int,
    );
  }
}

