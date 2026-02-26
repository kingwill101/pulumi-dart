// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration in the consumer project with which the peering has to be done.
class NetworkConfig21 {
  /// Management CIDR used by VMware management appliances.
  final String managementCidr;

  /// Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final String? vmwareEngineNetwork;

  NetworkConfig21({
    required this.managementCidr,
    this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['managementCidr'] = managementCidr;
    final vmwareEngineNetworkValue = vmwareEngineNetwork;
    if (vmwareEngineNetworkValue != null) {
      map['vmwareEngineNetwork'] = vmwareEngineNetworkValue;
    }
    return map;
  }

  factory NetworkConfig21.fromMap(Map<String, dynamic> map) {
    return NetworkConfig21(
      managementCidr: map['managementCidr'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null
          ? null
          : map['vmwareEngineNetwork'] as String,
    );
  }
}
