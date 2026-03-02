// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualNodeSpecServiceDiscoveryDns {
  /// DNS host name for your virtual node.
  final pulumi.Input<String> hostname;
  /// The preferred IP version that this virtual node uses. Valid values: `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, `IPv6_ONLY`.
  final pulumi.Input<String>? ipPreference;
  /// The DNS response type for the virtual node. Valid values: `LOADBALANCER`, `ENDPOINTS`.
  final pulumi.Input<String>? responseType;

  /// Creates a new [VirtualNodeSpecServiceDiscoveryDns].
  /// [hostname] DNS host name for your virtual node.
  /// [ipPreference] The preferred IP version that this virtual node uses. Valid values: `IPv6_PREFERRED`, `IPv4_PREFERRED`, `IPv4_ONLY`, `IPv6_ONLY`.
  /// [responseType] The DNS response type for the virtual node. Valid values: `LOADBALANCER`, `ENDPOINTS`.
  VirtualNodeSpecServiceDiscoveryDns({
    required this.hostname,
    this.ipPreference,
    this.responseType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'ipPreference': ?ipPreference,
      'responseType': ?responseType,
    };
  }

  factory VirtualNodeSpecServiceDiscoveryDns.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecServiceDiscoveryDns(
      hostname: (map['hostname'] as String).input(),
      ipPreference: map['ipPreference'] == null ? null : (map['ipPreference'] as String).input(),
      responseType: map['responseType'] == null ? null : (map['responseType'] as String).input(),
    );
  }
}

