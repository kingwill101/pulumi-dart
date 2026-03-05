// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Advance configuration for AKS networking
class AksNetworkingConfigurationResponse {
  /// An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final pulumi.Input<String>? dnsServiceIP;
  /// A CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the Kubernetes service address range.
  final pulumi.Input<String>? dockerBridgeCidr;
  /// A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final pulumi.Input<String>? serviceCidr;
  /// Virtual network subnet resource ID the compute nodes belong to
  final pulumi.Input<String>? subnetId;

  /// Creates a new [AksNetworkingConfigurationResponse].
  /// [dnsServiceIP] An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  /// [dockerBridgeCidr] A CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the Kubernetes service address range.
  /// [serviceCidr] A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  /// [subnetId] Virtual network subnet resource ID the compute nodes belong to
  AksNetworkingConfigurationResponse({
    this.dnsServiceIP,
    this.dockerBridgeCidr,
    this.serviceCidr,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServiceIP': ?dnsServiceIP,
      'dockerBridgeCidr': ?dockerBridgeCidr,
      'serviceCidr': ?serviceCidr,
      'subnetId': ?subnetId,
    };
  }

  factory AksNetworkingConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return AksNetworkingConfigurationResponse(
      dnsServiceIP: (() { final guardedValue = map['dnsServiceIP']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerBridgeCidr: (() { final guardedValue = map['dockerBridgeCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceCidr: (() { final guardedValue = map['serviceCidr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

