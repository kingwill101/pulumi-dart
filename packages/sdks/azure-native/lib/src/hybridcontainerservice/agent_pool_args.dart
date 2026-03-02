// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_pool_extended_location.dart';
import 'agent_pool_provisioning_status_status.dart';
import 'cloud_provider_profile.dart';

/// {@template pulumi_hybridcontainerservice_agent_pool_args_doc}
/// The set of arguments for AgentPool.
/// {@endtemplate}
/// {@macro pulumi_hybridcontainerservice_agent_pool_args_doc}
class AgentPoolArgs {
  /// Parameter for the name of the agent pool in the provisioned cluster
  final pulumi.Input<String>? agentPoolName;
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  final pulumi.Input<List<String>>? availabilityZones;
  /// The underlying cloud infra provider properties.
  final pulumi.Input<CloudProviderProfile>? cloudProviderProfile;
  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final pulumi.Input<int>? count;
  final pulumi.Input<AgentPoolExtendedLocation>? extendedLocation;
  /// The resource location
  final pulumi.Input<String>? location;
  /// The maximum number of nodes for auto-scaling
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on a node.
  final pulumi.Input<int>? maxPods;
  /// The minimum number of nodes for auto-scaling
  final pulumi.Input<int>? minCount;
  /// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  final pulumi.Input<String>? mode;
  /// The version of node image
  final pulumi.Input<String>? nodeImageVersion;
  /// NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final pulumi.Input<List<String>>? nodeTaints;
  /// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  final pulumi.Input<String>? osType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Parameter for the name of the provisioned cluster
  final pulumi.Input<String> resourceName;
  /// HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
  final pulumi.Input<AgentPoolProvisioningStatusStatus>? status;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;
  /// VmSize - The size of the agent pool VMs.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [AgentPoolArgs].
  /// [agentPoolName] Parameter for the name of the agent pool in the provisioned cluster
  /// [availabilityZones] AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [count] Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [extendedLocation] Optional.
  /// [location] The resource location
  /// [maxCount] The maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on a node.
  /// [minCount] The minimum number of nodes for auto-scaling
  /// [mode] Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  /// [nodeImageVersion] The version of node image
  /// [nodeLabels] NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  /// [nodeTaints] NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  /// [osType] OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourceName] Parameter for the name of the provisioned cluster
  /// [status] HybridAKSNodePoolStatus defines the observed state of HybridAKSNodePool
  /// [tags] Resource tags
  /// [vmSize] VmSize - The size of the agent pool VMs.
  AgentPoolArgs({
    this.agentPoolName,
    this.availabilityZones,
    this.cloudProviderProfile,
    this.count,
    this.extendedLocation,
    this.location,
    this.maxCount,
    this.maxPods,
    this.minCount,
    this.mode,
    this.nodeImageVersion,
    this.nodeLabels,
    this.nodeTaints,
    this.osType,
    required this.resourceGroupName,
    required this.resourceName,
    this.status,
    this.tags,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentPoolName': ?agentPoolName,
      'availabilityZones': ?availabilityZones,
      'cloudProviderProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfile, Map<String, dynamic>>(cloudProviderProfile, (value) => value.toMap()),
      'count': ?count,
      'extendedLocation': ?pulumi.Input.mapOptionalInputValue<AgentPoolExtendedLocation, Map<String, dynamic>>(extendedLocation, (value) => value.toMap()),
      'location': ?location,
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'nodeImageVersion': ?nodeImageVersion,
      'nodeLabels': ?nodeLabels,
      'nodeTaints': ?nodeTaints,
      'osType': ?osType,
      'resourceGroupName': resourceGroupName,
      'resourceName': resourceName,
      'status': ?pulumi.Input.mapOptionalInputValue<AgentPoolProvisioningStatusStatus, Map<String, dynamic>>(status, (value) => value.toMap()),
      'tags': ?tags,
      'vmSize': ?vmSize,
    };
  }

  factory AgentPoolArgs.fromMap(Map<String, dynamic> map) {
    return AgentPoolArgs(
      agentPoolName: map['agentPoolName'] == null ? null : (map['agentPoolName'] as String).input(),
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones'] as List).cast<String>()).input(),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : (CloudProviderProfile.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (map['count'] as int).input(),
      extendedLocation: map['extendedLocation'] == null ? null : (AgentPoolExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount'] as int).input(),
      maxPods: map['maxPods'] == null ? null : (map['maxPods'] as int).input(),
      minCount: map['minCount'] == null ? null : (map['minCount'] as int).input(),
      mode: map['mode'] == null ? null : (map['mode'] as String).input(),
      nodeImageVersion: map['nodeImageVersion'] == null ? null : (map['nodeImageVersion'] as String).input(),
      nodeLabels: map['nodeLabels'] == null ? null : ((map['nodeLabels'] as Map).cast<String, String>()).input(),
      nodeTaints: map['nodeTaints'] == null ? null : ((map['nodeTaints'] as List).cast<String>()).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      resourceName: (map['resourceName'] as String).input(),
      status: map['status'] == null ? null : (AgentPoolProvisioningStatusStatus.fromMap((map['status'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize'] as String).input(),
    );
  }
}

