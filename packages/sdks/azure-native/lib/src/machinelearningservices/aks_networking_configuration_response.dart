// ignore_for_file: unused_element, unnecessary_cast


/// Advance configuration for AKS networking
class AksNetworkingConfigurationResponse {
  /// An IP address assigned to the Kubernetes DNS service. It must be within the Kubernetes service address range specified in serviceCidr.
  final String? dnsServiceIP;
  /// A CIDR notation IP range assigned to the Docker bridge network. It must not overlap with any Subnet IP ranges or the Kubernetes service address range.
  final String? dockerBridgeCidr;
  /// A CIDR notation IP range from which to assign service cluster IPs. It must not overlap with any Subnet IP ranges.
  final String? serviceCidr;
  /// Virtual network subnet resource ID the compute nodes belong to
  final String? subnetId;

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
      dnsServiceIP: map['dnsServiceIP'] == null ? null : map['dnsServiceIP'] as String,
      dockerBridgeCidr: map['dockerBridgeCidr'] == null ? null : map['dockerBridgeCidr'] as String,
      serviceCidr: map['serviceCidr'] == null ? null : map['serviceCidr'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

