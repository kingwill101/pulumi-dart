// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration in the consumer project with which the peering has to be done.
class NetworkConfig {
  /// Management CIDR used by VMware management appliances.
  final String managementCidr;

  /// Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final String? vmwareEngineNetwork;

  /// Creates a new [NetworkConfig].
  /// [managementCidr] Management CIDR used by VMware management appliances.
  /// [vmwareEngineNetwork] Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  NetworkConfig({required this.managementCidr, this.vmwareEngineNetwork});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementCidr': managementCidr,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
    };
  }

  factory NetworkConfig.fromMap(Map<String, dynamic> map) {
    return NetworkConfig(
      managementCidr: map['managementCidr'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null
          ? null
          : map['vmwareEngineNetwork'] as String,
    );
  }
}
