// ignore_for_file: unused_element, unnecessary_cast

import 'agent_pool_provisioning_status_response_status.dart';
import 'agent_pool_response_extended_location.dart';
import 'cloud_provider_profile_response.dart';
import 'system_data_response.dart';

/// Result data returned by getAgentPool.
class GetAgentPoolResult {
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  final List<String>? availabilityZones;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The underlying cloud infra provider properties.
  final CloudProviderProfileResponse? cloudProviderProfile;
  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final int? count;
  final AgentPoolResponseExtendedLocation? extendedLocation;
  /// Resource Id
  final String id;
  /// The resource location
  final String? location;
  /// The maximum number of nodes for auto-scaling
  final int? maxCount;
  /// The maximum number of pods that can run on a node.
  final int? maxPods;
  /// The minimum number of nodes for auto-scaling
  final int? minCount;
  /// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  final String? mode;
  /// Resource Name
  final String name;
  /// The version of node image
  final String? nodeImageVersion;
  /// NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  final Map<String, String>? nodeLabels;
  /// NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final List<String>? nodeTaints;
  /// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  final String? osType;
  final String provisioningState;
  /// HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
  final AgentPoolProvisioningStatusResponseStatus? status;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse systemData;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource Type
  final String type;
  /// VmSize - The size of the agent pool VMs.
  final String? vmSize;

  /// Creates a new [GetAgentPoolResult].
  /// [availabilityZones] AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  /// [azureApiVersion] The Azure API version of the resource.
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [count] Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [extendedLocation] Optional.
  /// [id] Resource Id
  /// [location] The resource location
  /// [maxCount] The maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on a node.
  /// [minCount] The minimum number of nodes for auto-scaling
  /// [mode] Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  /// [name] Resource Name
  /// [nodeImageVersion] The version of node image
  /// [nodeLabels] NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  /// [nodeTaints] NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  /// [osType] OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  /// [provisioningState] Required.
  /// [status] HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [tags] Resource tags
  /// [type] Resource Type
  /// [vmSize] VmSize - The size of the agent pool VMs.
  GetAgentPoolResult({
    this.availabilityZones,
    required this.azureApiVersion,
    this.cloudProviderProfile,
    this.count,
    this.extendedLocation,
    required this.id,
    this.location,
    this.maxCount,
    this.maxPods,
    this.minCount,
    this.mode,
    required this.name,
    this.nodeImageVersion,
    this.nodeLabels,
    this.nodeTaints,
    this.osType,
    required this.provisioningState,
    this.status,
    required this.systemData,
    this.tags,
    required this.type,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'azureApiVersion': azureApiVersion,
      'cloudProviderProfile': ?cloudProviderProfile == null ? null : cloudProviderProfile!.toMap(),
      'count': ?count,
      'extendedLocation': ?extendedLocation == null ? null : extendedLocation!.toMap(),
      'id': id,
      'location': ?location,
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': name,
      'nodeImageVersion': ?nodeImageVersion,
      'nodeLabels': ?nodeLabels,
      'nodeTaints': ?nodeTaints,
      'osType': ?osType,
      'provisioningState': provisioningState,
      'status': ?status == null ? null : status!.toMap(),
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'vmSize': ?vmSize,
    };
  }

  factory GetAgentPoolResult.fromMap(Map<String, dynamic> map) {
    return GetAgentPoolResult(
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      azureApiVersion: map['azureApiVersion'] as String,
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : CloudProviderProfileResponse.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as int,
      extendedLocation: map['extendedLocation'] == null ? null : AgentPoolResponseExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      maxPods: map['maxPods'] == null ? null : map['maxPods'] as int,
      minCount: map['minCount'] == null ? null : map['minCount'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] as String,
      nodeImageVersion: map['nodeImageVersion'] == null ? null : map['nodeImageVersion'] as String,
      nodeLabels: map['nodeLabels'] == null ? null : (map['nodeLabels'] as Map).cast<String, String>(),
      nodeTaints: map['nodeTaints'] == null ? null : (map['nodeTaints'] as List).cast<String>(),
      osType: map['osType'] == null ? null : map['osType'] as String,
      provisioningState: map['provisioningState'] as String,
      status: map['status'] == null ? null : AgentPoolProvisioningStatusResponseStatus.fromMap((map['status'] as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

