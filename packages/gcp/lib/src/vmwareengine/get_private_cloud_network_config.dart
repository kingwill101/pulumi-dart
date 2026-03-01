// ignore_for_file: unused_element, unnecessary_cast

class GetPrivateCloudNetworkConfig {
  /// DNS Server IP of the Private Cloud.
  final String dnsServerIp;

  /// Management CIDR used by VMware management appliances.
  final String managementCidr;

  /// The IP address layout version of the management IP address range.
  /// Possible versions include:
  /// * managementIpAddressLayoutVersion=1: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds
  /// as it does not support all features.
  /// * managementIpAddressLayoutVersion=2: Indicates the latest IP address layout
  /// used by all newly created private clouds. This version supports all current features.
  final int managementIpAddressLayoutVersion;

  /// The relative resource name of the VMware Engine network attached to the private cloud.
  /// Specify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  /// where {project} can either be a project number or a project ID.
  final String vmwareEngineNetwork;

  /// The canonical name of the VMware Engine network in
  /// the form: projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  final String vmwareEngineNetworkCanonical;

  /// Creates a new [GetPrivateCloudNetworkConfig].
  /// [dnsServerIp] DNS Server IP of the Private Cloud.
  /// [managementCidr] Management CIDR used by VMware management appliances.
  /// [managementIpAddressLayoutVersion] The IP address layout version of the management IP address range.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network attached to the private cloud.
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in
  GetPrivateCloudNetworkConfig({
    required this.dnsServerIp,
    required this.managementCidr,
    required this.managementIpAddressLayoutVersion,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServerIp': dnsServerIp,
      'managementCidr': managementCidr,
      'managementIpAddressLayoutVersion': managementIpAddressLayoutVersion,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical,
    };
  }

  factory GetPrivateCloudNetworkConfig.fromMap(Map<String, dynamic> map) {
    return GetPrivateCloudNetworkConfig(
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
