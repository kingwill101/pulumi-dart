// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for apps environment to join a Virtual Network
class VnetConfigurationResponse {
  /// CIDR notation IP range assigned to the Docker bridge, network. Must not overlap with any other provided IP ranges.
  final pulumi.Input<String>? dockerBridgeCidr;
  /// Resource ID of a subnet for infrastructure components. Must not overlap with any other provided IP ranges.
  final pulumi.Input<String>? infrastructureSubnetId;
  /// Boolean indicating the environment only has an internal load balancer. These environments do not have a public static IP resource. They must provide infrastructureSubnetId if enabling this property
  final pulumi.Input<bool>? internal;
  /// IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. Must not overlap with any other provided IP ranges.
  final pulumi.Input<String>? platformReservedCidr;
  /// An IP address from the IP range defined by platformReservedCidr that will be reserved for the internal DNS server.
  final pulumi.Input<String>? platformReservedDnsIP;

  /// Creates a new [VnetConfigurationResponse].
  /// [dockerBridgeCidr] CIDR notation IP range assigned to the Docker bridge, network. Must not overlap with any other provided IP ranges.
  /// [infrastructureSubnetId] Resource ID of a subnet for infrastructure components. Must not overlap with any other provided IP ranges.
  /// [internal] Boolean indicating the environment only has an internal load balancer. These environments do not have a public static IP resource. They must provide infrastructureSubnetId if enabling this property
  /// [platformReservedCidr] IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. Must not overlap with any other provided IP ranges.
  /// [platformReservedDnsIP] An IP address from the IP range defined by platformReservedCidr that will be reserved for the internal DNS server.
  VnetConfigurationResponse({
    this.dockerBridgeCidr,
    this.infrastructureSubnetId,
    this.internal,
    this.platformReservedCidr,
    this.platformReservedDnsIP,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dockerBridgeCidr': ?dockerBridgeCidr,
      'infrastructureSubnetId': ?infrastructureSubnetId,
      'internal': ?internal,
      'platformReservedCidr': ?platformReservedCidr,
      'platformReservedDnsIP': ?platformReservedDnsIP,
    };
  }

  factory VnetConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VnetConfigurationResponse(
      dockerBridgeCidr: map['dockerBridgeCidr'] == null ? null : (map['dockerBridgeCidr']! as String).input(),
      infrastructureSubnetId: map['infrastructureSubnetId'] == null ? null : (map['infrastructureSubnetId']! as String).input(),
      internal: map['internal'] == null ? null : (map['internal']! as bool).input(),
      platformReservedCidr: map['platformReservedCidr'] == null ? null : (map['platformReservedCidr']! as String).input(),
      platformReservedDnsIP: map['platformReservedDnsIP'] == null ? null : (map['platformReservedDnsIP']! as String).input(),
    );
  }
}

