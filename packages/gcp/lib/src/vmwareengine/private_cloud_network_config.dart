// ignore_for_file: unused_element, unnecessary_cast

class PrivateCloudNetworkConfig {
  /// (Output)
  /// DNS Server IP of the Private Cloud.
  final String? dnsServerIp;

  /// Management CIDR used by VMware management appliances.
  final String managementCidr;

  /// (Output)
  /// The IP address layout version of the management IP address range.
  /// Possible versions include:
  /// * managementIpAddressLayoutVersion=1: Indicates the legacy IP address layout used by some existing private clouds. This is no longer supported for new private clouds
  /// as it does not support all features.
  /// * managementIpAddressLayoutVersion=2: Indicates the latest IP address layout
  /// used by all newly created private clouds. This version supports all current features.
  final int? managementIpAddressLayoutVersion;

  /// The relative resource name of the VMware Engine network attached to the private cloud.
  /// Specify the name in the following form: projects/{project}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  /// where {project} can either be a project number or a project ID.
  final String? vmwareEngineNetwork;

  /// (Output)
  /// The canonical name of the VMware Engine network in
  /// the form: projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmwareEngineNetworkId}
  final String? vmwareEngineNetworkCanonical;

  /// Creates a new [PrivateCloudNetworkConfig].
  /// [dnsServerIp] (Output)
  /// [managementCidr] Management CIDR used by VMware management appliances.
  /// [managementIpAddressLayoutVersion] (Output)
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network attached to the private cloud.
  /// [vmwareEngineNetworkCanonical] (Output)
  PrivateCloudNetworkConfig({
    this.dnsServerIp,
    required this.managementCidr,
    this.managementIpAddressLayoutVersion,
    this.vmwareEngineNetwork,
    this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dnsServerIp': ?dnsServerIp,
      'managementCidr': managementCidr,
      'managementIpAddressLayoutVersion': ?managementIpAddressLayoutVersion,
      'vmwareEngineNetwork': ?vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': ?vmwareEngineNetworkCanonical,
    };
  }

  factory PrivateCloudNetworkConfig.fromMap(Map<String, dynamic> map) {
    return PrivateCloudNetworkConfig(
      dnsServerIp: map['dnsServerIp'] == null
          ? null
          : map['dnsServerIp'] as String,
      managementCidr: map['managementCidr'] as String,
      managementIpAddressLayoutVersion:
          map['managementIpAddressLayoutVersion'] == null
          ? null
          : map['managementIpAddressLayoutVersion'] as int,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] == null
          ? null
          : map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] == null
          ? null
          : map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}
