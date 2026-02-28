// ignore_for_file: unused_element, unnecessary_cast

/// Network configuration in the consumer project with which the peering has to be done.
class NetworkConfigResponse {
  /// DNS Server IP of the Private Cloud. All DNS queries can be forwarded to this address for name resolution of Private Cloud's management entities like vCenter, NSX-T Manager and ESXi hosts.
  final String dnsServerIp;

  /// Management CIDR used by VMware management appliances.
  final String managementCidr;

  /// The IP address layout version of the management IP address range. Possible versions include: * `managementIpAddressLayoutVersion=1`: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds as it does not support all features. * `managementIpAddressLayoutVersion=2`: Indicates the latest IP address layout used by all newly created private clouds. This version supports all current features.
  final int managementIpAddressLayoutVersion;

  /// Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final String vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  final String vmwareEngineNetworkCanonical;

  /// Creates a new [NetworkConfigResponse].
  /// [dnsServerIp] DNS Server IP of the Private Cloud. All DNS queries can be forwarded to this address for name resolution of Private Cloud's management entities like vCenter, NSX-T Manager and ESXi hosts.
  /// [managementCidr] Management CIDR used by VMware management appliances.
  /// [managementIpAddressLayoutVersion] The IP address layout version of the management IP address range. Possible versions include: * `managementIpAddressLayoutVersion=1`: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds as it does not support all features. * `managementIpAddressLayoutVersion=2`: Indicates the latest IP address layout used by all newly created private clouds. This version supports all current features.
  /// [vmwareEngineNetwork] Optional. The relative resource name of the VMware Engine network attached to the private cloud. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  NetworkConfigResponse({
    required this.dnsServerIp,
    required this.managementCidr,
    required this.managementIpAddressLayoutVersion,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dnsServerIp'] = dnsServerIp;
    map['managementCidr'] = managementCidr;
    map['managementIpAddressLayoutVersion'] = managementIpAddressLayoutVersion;
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    map['vmwareEngineNetworkCanonical'] = vmwareEngineNetworkCanonical;
    return map;
  }

  factory NetworkConfigResponse.fromMap(Map<String, dynamic> map) {
    return NetworkConfigResponse(
      dnsServerIp: map['dnsServerIp'] as String,
      managementCidr: map['managementCidr'] as String,
      managementIpAddressLayoutVersion:
          map['managementIpAddressLayoutVersion'] as int,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical:
          map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}
