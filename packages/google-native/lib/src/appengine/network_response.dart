// ignore_for_file: unused_element, unnecessary_cast

/// Extra network settings. Only applicable in the App Engine flexible environment.
class NetworkResponse {
  /// List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  final List<String> forwardedPorts;

  /// The IP mode for instances. Only applicable in the App Engine flexible environment.
  final String instanceIpMode;

  /// Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  final String instanceTag;

  /// Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  final String name;

  /// Enable session affinity. Only applicable in the App Engine flexible environment.
  final bool sessionAffinity;

  /// Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  final String subnetworkName;

  /// Creates a new [NetworkResponse].
  /// [forwardedPorts] List of ports, or port pairs, to forward from the virtual machine to the application container. Only applicable in the App Engine flexible environment.
  /// [instanceIpMode] The IP mode for instances. Only applicable in the App Engine flexible environment.
  /// [instanceTag] Tag to apply to the instance during creation. Only applicable in the App Engine flexible environment.
  /// [name] Google Compute Engine network where the virtual machines are created. Specify the short name, not the resource path.Defaults to default.
  /// [sessionAffinity] Enable session affinity. Only applicable in the App Engine flexible environment.
  /// [subnetworkName] Google Cloud Platform sub-network where the virtual machines are created. Specify the short name, not the resource path.If a subnetwork name is specified, a network name will also be required unless it is for the default network. If the network that the instance is being created in is a Legacy network, then the IP address is allocated from the IPv4Range. If the network that the instance is being created in is an auto Subnet Mode Network, then only network name should be specified (not the subnetwork_name) and the IP address is created from the IPCidrRange of the subnetwork that exists in that zone for that network. If the network that the instance is being created in is a custom Subnet Mode Network, then the subnetwork_name must be specified and the IP address is created from the IPCidrRange of the subnetwork.If specified, the subnetwork must exist in the same region as the App Engine flexible environment application.
  NetworkResponse({
    required this.forwardedPorts,
    required this.instanceIpMode,
    required this.instanceTag,
    required this.name,
    required this.sessionAffinity,
    required this.subnetworkName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardedPorts': forwardedPorts,
      'instanceIpMode': instanceIpMode,
      'instanceTag': instanceTag,
      'name': name,
      'sessionAffinity': sessionAffinity,
      'subnetworkName': subnetworkName,
    };
  }

  factory NetworkResponse.fromMap(Map<String, dynamic> map) {
    return NetworkResponse(
      forwardedPorts: (map['forwardedPorts'] as List).cast<String>(),
      instanceIpMode: map['instanceIpMode'] as String,
      instanceTag: map['instanceTag'] as String,
      name: map['name'] as String,
      sessionAffinity: map['sessionAffinity'] as bool,
      subnetworkName: map['subnetworkName'] as String,
    );
  }
}
