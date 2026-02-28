// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getNetworkPeering.
class GetNetworkPeeringResult {
  /// Creation time of this resource.
  final String createTime;

  /// Optional. User-provided description for this network peering.
  final String description;

  /// Optional. True if full mesh connectivity is created and managed automatically between peered networks; false otherwise. Currently this field is always true because Google Compute Engine automatically creates and manages subnetwork routes between two VPC networks when peering state is 'ACTIVE'.
  final bool exchangeSubnetRoutes;

  /// Optional. True if custom routes are exported to the peered network; false otherwise. The default value is true.
  final bool exportCustomRoutes;

  /// Optional. True if all subnet routes with a public IP address range are exported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  final bool exportCustomRoutesWithPublicIp;

  /// Optional. True if custom routes are imported from the peered network; false otherwise. The default value is true.
  final bool importCustomRoutes;

  /// Optional. True if all subnet routes with public IP address range are imported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and are not controlled by this field.
  final bool importCustomRoutesWithPublicIp;

  /// The resource name of the network peering. Resource names are scheme-less URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/networkPeerings/my-peering`
  final String name;

  /// Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0` is provided for this field, VMware Engine uses the default value instead.
  final int peerMtu;

  /// The relative resource name of the network to peer with a standard VMware Engine network. The provided network can be a consumer VPC network or another standard VMware Engine network. If the `peer_network_type` is VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. Otherwise specify the name in the form: `projects/{project}/global/networks/{network_id}`, where `{project}` can either be a project number or a project ID.
  final String peerNetwork;

  /// The type of the network to peer with the VMware Engine network.
  final String peerNetworkType;

  /// State of the network peering. This field has a value of 'ACTIVE' when there's a matching configuration in the peer network. New values may be added to this enum when appropriate.
  final String state;

  /// Output Only. Details about the current state of the network peering.
  final String stateDetails;

  /// System-generated unique identifier for the resource.
  final String uid;

  /// Last update time of this resource.
  final String updateTime;

  /// The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  final String vmwareEngineNetwork;

  /// Creates a new [GetNetworkPeeringResult].
  /// [createTime] Creation time of this resource.
  /// [description] Optional. User-provided description for this network peering.
  /// [exchangeSubnetRoutes] Optional. True if full mesh connectivity is created and managed automatically between peered networks; false otherwise. Currently this field is always true because Google Compute Engine automatically creates and manages subnetwork routes between two VPC networks when peering state is 'ACTIVE'.
  /// [exportCustomRoutes] Optional. True if custom routes are exported to the peered network; false otherwise. The default value is true.
  /// [exportCustomRoutesWithPublicIp] Optional. True if all subnet routes with a public IP address range are exported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always exported to peers and are not controlled by this field.
  /// [importCustomRoutes] Optional. True if custom routes are imported from the peered network; false otherwise. The default value is true.
  /// [importCustomRoutesWithPublicIp] Optional. True if all subnet routes with public IP address range are imported; false otherwise. The default value is true. IPv4 special-use ranges (https://en.wikipedia.org/wiki/IPv4#Special_addresses) are always imported to peers and are not controlled by this field.
  /// [name] The resource name of the network peering. Resource names are scheme-less URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/global/networkPeerings/my-peering`
  /// [peerMtu] Optional. Maximum transmission unit (MTU) in bytes. The default value is `1500`. If a value of `0` is provided for this field, VMware Engine uses the default value instead.
  /// [peerNetwork] The relative resource name of the network to peer with a standard VMware Engine network. The provided network can be a consumer VPC network or another standard VMware Engine network. If the `peer_network_type` is VMWARE_ENGINE_NETWORK, specify the name in the form: `projects/{project}/locations/global/vmwareEngineNetworks/{vmware_engine_network_id}`. Otherwise specify the name in the form: `projects/{project}/global/networks/{network_id}`, where `{project}` can either be a project number or a project ID.
  /// [peerNetworkType] The type of the network to peer with the VMware Engine network.
  /// [state] State of the network peering. This field has a value of 'ACTIVE' when there's a matching configuration in the peer network. New values may be added to this enum when appropriate.
  /// [stateDetails] Output Only. Details about the current state of the network peering.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vmwareEngineNetwork] The relative resource name of the VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}` can either be a project number or a project ID.
  GetNetworkPeeringResult({
    required this.createTime,
    required this.description,
    required this.exchangeSubnetRoutes,
    required this.exportCustomRoutes,
    required this.exportCustomRoutesWithPublicIp,
    required this.importCustomRoutes,
    required this.importCustomRoutesWithPublicIp,
    required this.name,
    required this.peerMtu,
    required this.peerNetwork,
    required this.peerNetworkType,
    required this.state,
    required this.stateDetails,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['exchangeSubnetRoutes'] = exchangeSubnetRoutes;
    map['exportCustomRoutes'] = exportCustomRoutes;
    map['exportCustomRoutesWithPublicIp'] = exportCustomRoutesWithPublicIp;
    map['importCustomRoutes'] = importCustomRoutes;
    map['importCustomRoutesWithPublicIp'] = importCustomRoutesWithPublicIp;
    map['name'] = name;
    map['peerMtu'] = peerMtu;
    map['peerNetwork'] = peerNetwork;
    map['peerNetworkType'] = peerNetworkType;
    map['state'] = state;
    map['stateDetails'] = stateDetails;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    map['vmwareEngineNetwork'] = vmwareEngineNetwork;
    return map;
  }

  factory GetNetworkPeeringResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkPeeringResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      exchangeSubnetRoutes: map['exchangeSubnetRoutes'] as bool,
      exportCustomRoutes: map['exportCustomRoutes'] as bool,
      exportCustomRoutesWithPublicIp:
          map['exportCustomRoutesWithPublicIp'] as bool,
      importCustomRoutes: map['importCustomRoutes'] as bool,
      importCustomRoutesWithPublicIp:
          map['importCustomRoutesWithPublicIp'] as bool,
      name: map['name'] as String,
      peerMtu: map['peerMtu'] as int,
      peerNetwork: map['peerNetwork'] as String,
      peerNetworkType: map['peerNetworkType'] as String,
      state: map['state'] as String,
      stateDetails: map['stateDetails'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
    );
  }
}
