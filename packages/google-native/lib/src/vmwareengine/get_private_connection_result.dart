// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrivateConnection.
class GetPrivateConnectionResult {
  /// Creation time of this resource.
  final String createTime;
  /// Optional. User-provided description for this private connection.
  final String description;
  /// The resource name of the private connection. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateConnections/my-connection`
  final String name;
  /// VPC network peering id between given network VPC and VMwareEngineNetwork.
  final String peeringId;
  /// Peering state between service network and VMware Engine network.
  final String peeringState;
  /// Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is supported.
  final String routingMode;
  /// Service network to create private connection. Specify the name in the following form: `projects/{project}/global/networks/{network_id}` For type = PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g. projects/project-tp/global/networks/servicenetworking. For type = NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g. projects/project-tp/global/networks/netapp-tenant-vpc. For type = DELL_POWERSCALE, this field represent Dell service VPC, e.g. projects/project-tp/global/networks/dell-tenant-vpc. For type= THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any other producer VPC to which the VMware Engine Network needs to be connected, e.g. projects/project/global/networks/vpc.
  final String serviceNetwork;
  /// State of the private connection.
  final String state;
  /// Private connection type.
  final String type;
  /// System-generated unique identifier for the resource.
  final String uid;
  /// Last update time of this resource.
  final String updateTime;
  /// The relative resource name of Legacy VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}`, `{location}` will be same as specified in private connection resource name and `{vmware_engine_network_id}` will be in the form of `{location}`-default e.g. projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  final String vmwareEngineNetwork;
  /// The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  final String vmwareEngineNetworkCanonical;

  /// Creates a new [GetPrivateConnectionResult].
  /// [createTime] Creation time of this resource.
  /// [description] Optional. User-provided description for this private connection.
  /// [name] The resource name of the private connection. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateConnections/my-connection`
  /// [peeringId] VPC network peering id between given network VPC and VMwareEngineNetwork.
  /// [peeringState] Peering state between service network and VMware Engine network.
  /// [routingMode] Optional. Routing Mode. Default value is set to GLOBAL. For type = PRIVATE_SERVICE_ACCESS, this field can be set to GLOBAL or REGIONAL, for other types only GLOBAL is supported.
  /// [serviceNetwork] Service network to create private connection. Specify the name in the following form: `projects/{project}/global/networks/{network_id}` For type = PRIVATE_SERVICE_ACCESS, this field represents servicenetworking VPC, e.g. projects/project-tp/global/networks/servicenetworking. For type = NETAPP_CLOUD_VOLUME, this field represents NetApp service VPC, e.g. projects/project-tp/global/networks/netapp-tenant-vpc. For type = DELL_POWERSCALE, this field represent Dell service VPC, e.g. projects/project-tp/global/networks/dell-tenant-vpc. For type= THIRD_PARTY_SERVICE, this field could represent a consumer VPC or any other producer VPC to which the VMware Engine Network needs to be connected, e.g. projects/project/global/networks/vpc.
  /// [state] State of the private connection.
  /// [type] Private connection type.
  /// [uid] System-generated unique identifier for the resource.
  /// [updateTime] Last update time of this resource.
  /// [vmwareEngineNetwork] The relative resource name of Legacy VMware Engine network. Specify the name in the following form: `projects/{project}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}` where `{project}`, `{location}` will be same as specified in private connection resource name and `{vmware_engine_network_id}` will be in the form of `{location}`-default e.g. projects/project/locations/us-central1/vmwareEngineNetworks/us-central1-default.
  /// [vmwareEngineNetworkCanonical] The canonical name of the VMware Engine network in the form: `projects/{project_number}/locations/{location}/vmwareEngineNetworks/{vmware_engine_network_id}`
  GetPrivateConnectionResult({
    required this.createTime,
    required this.description,
    required this.name,
    required this.peeringId,
    required this.peeringState,
    required this.routingMode,
    required this.serviceNetwork,
    required this.state,
    required this.type,
    required this.uid,
    required this.updateTime,
    required this.vmwareEngineNetwork,
    required this.vmwareEngineNetworkCanonical,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'name': name,
      'peeringId': peeringId,
      'peeringState': peeringState,
      'routingMode': routingMode,
      'serviceNetwork': serviceNetwork,
      'state': state,
      'type': type,
      'uid': uid,
      'updateTime': updateTime,
      'vmwareEngineNetwork': vmwareEngineNetwork,
      'vmwareEngineNetworkCanonical': vmwareEngineNetworkCanonical,
    };
  }

  factory GetPrivateConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetPrivateConnectionResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      peeringId: map['peeringId'] as String,
      peeringState: map['peeringState'] as String,
      routingMode: map['routingMode'] as String,
      serviceNetwork: map['serviceNetwork'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
      vmwareEngineNetwork: map['vmwareEngineNetwork'] as String,
      vmwareEngineNetworkCanonical: map['vmwareEngineNetworkCanonical'] as String,
    );
  }
}

