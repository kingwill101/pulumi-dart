// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration properties for apps environment to join a Virtual Network
class VnetConfiguration {
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

  /// Creates a new [VnetConfiguration].
  /// [dockerBridgeCidr] CIDR notation IP range assigned to the Docker bridge, network. Must not overlap with any other provided IP ranges.
  /// [infrastructureSubnetId] Resource ID of a subnet for infrastructure components. Must not overlap with any other provided IP ranges.
  /// [internal] Boolean indicating the environment only has an internal load balancer. These environments do not have a public static IP resource. They must provide infrastructureSubnetId if enabling this property
  /// [platformReservedCidr] IP range in CIDR notation that can be reserved for environment infrastructure IP addresses. Must not overlap with any other provided IP ranges.
  /// [platformReservedDnsIP] An IP address from the IP range defined by platformReservedCidr that will be reserved for the internal DNS server.
  VnetConfiguration({
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

  factory VnetConfiguration.fromMap(Map<String, dynamic> map) {
    return VnetConfiguration(
      dockerBridgeCidr: (() {
        final guardedValue = map['dockerBridgeCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      infrastructureSubnetId: (() {
        final guardedValue = map['infrastructureSubnetId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      internal: (() {
        final guardedValue = map['internal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      platformReservedCidr: (() {
        final guardedValue = map['platformReservedCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platformReservedDnsIP: (() {
        final guardedValue = map['platformReservedDnsIP'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
