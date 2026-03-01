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
    pulumi.Output<String>? agentPoolName,
    pulumi.Output<List<String>>? availabilityZones,
    pulumi.Output<CloudProviderProfile>? cloudProviderProfile,
    pulumi.Output<int>? count,
    pulumi.Output<AgentPoolExtendedLocation>? extendedLocation,
    pulumi.Output<String>? location,
    pulumi.Output<int>? maxCount,
    pulumi.Output<int>? maxPods,
    pulumi.Output<int>? minCount,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? nodeImageVersion,
    pulumi.Output<Map<String, String>>? nodeLabels,
    pulumi.Output<List<String>>? nodeTaints,
    pulumi.Output<String>? osType,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> resourceName,
    pulumi.Output<AgentPoolProvisioningStatusStatus>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? vmSize,
  }) :
      agentPoolName = pulumi.Input.asOptionalInput<String>(agentPoolName),
      availabilityZones = pulumi.Input.asOptionalInput<List<String>>(availabilityZones),
      cloudProviderProfile = pulumi.Input.asOptionalInput<CloudProviderProfile>(cloudProviderProfile),
      count = pulumi.Input.asOptionalInput<int>(count),
      extendedLocation = pulumi.Input.asOptionalInput<AgentPoolExtendedLocation>(extendedLocation),
      location = pulumi.Input.asOptionalInput<String>(location),
      maxCount = pulumi.Input.asOptionalInput<int>(maxCount),
      maxPods = pulumi.Input.asOptionalInput<int>(maxPods),
      minCount = pulumi.Input.asOptionalInput<int>(minCount),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      nodeImageVersion = pulumi.Input.asOptionalInput<String>(nodeImageVersion),
      nodeLabels = pulumi.Input.asOptionalInput<Map<String, String>>(nodeLabels),
      nodeTaints = pulumi.Input.asOptionalInput<List<String>>(nodeTaints),
      osType = pulumi.Input.asOptionalInput<String>(osType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      status = pulumi.Input.asOptionalInput<AgentPoolProvisioningStatusStatus>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vmSize = pulumi.Input.asOptionalInput<String>(vmSize);

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
      agentPoolName: map['agentPoolName'] == null ? null : pulumi.Output.create<String>(map['agentPoolName'] as String),
      availabilityZones: map['availabilityZones'] == null ? null : pulumi.Output.create<List<String>>((map['availabilityZones'] as List).cast<String>()),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : pulumi.Output.create<CloudProviderProfile>(CloudProviderProfile.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>())),
      count: map['count'] == null ? null : pulumi.Output.create<int>(map['count'] as int),
      extendedLocation: map['extendedLocation'] == null ? null : pulumi.Output.create<AgentPoolExtendedLocation>(AgentPoolExtendedLocation.fromMap((map['extendedLocation'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      maxCount: map['maxCount'] == null ? null : pulumi.Output.create<int>(map['maxCount'] as int),
      maxPods: map['maxPods'] == null ? null : pulumi.Output.create<int>(map['maxPods'] as int),
      minCount: map['minCount'] == null ? null : pulumi.Output.create<int>(map['minCount'] as int),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      nodeImageVersion: map['nodeImageVersion'] == null ? null : pulumi.Output.create<String>(map['nodeImageVersion'] as String),
      nodeLabels: map['nodeLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['nodeLabels'] as Map).cast<String, String>()),
      nodeTaints: map['nodeTaints'] == null ? null : pulumi.Output.create<List<String>>((map['nodeTaints'] as List).cast<String>()),
      osType: map['osType'] == null ? null : pulumi.Output.create<String>(map['osType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceName: pulumi.Output.create<String>(map['resourceName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<AgentPoolProvisioningStatusStatus>(AgentPoolProvisioningStatusStatus.fromMap((map['status'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vmSize: map['vmSize'] == null ? null : pulumi.Output.create<String>(map['vmSize'] as String),
    );
  }
}

