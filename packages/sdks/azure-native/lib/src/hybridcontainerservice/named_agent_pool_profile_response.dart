// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_provider_profile_response.dart';

/// Agent pool profile along with a name parameter
class NamedAgentPoolProfileResponse {
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  final List<String>? availabilityZones;
  /// The underlying cloud infra provider properties.
  final CloudProviderProfileResponse? cloudProviderProfile;
  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final int? count;
  /// The maximum number of nodes for auto-scaling
  final int? maxCount;
  /// The maximum number of pods that can run on a node.
  final int? maxPods;
  /// The minimum number of nodes for auto-scaling
  final int? minCount;
  /// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  final String? mode;
  /// Unique name of the agent pool profile in the context of the subscription and resource group.
  final String? name;
  /// The version of node image
  final String? nodeImageVersion;
  /// NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  final Map<String, String>? nodeLabels;
  /// NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final List<String>? nodeTaints;
  /// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  final String? osType;
  /// VmSize - The size of the agent pool VMs.
  final String? vmSize;

  /// Creates a new [NamedAgentPoolProfileResponse].
  /// [availabilityZones] AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [count] Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [maxCount] The maximum number of nodes for auto-scaling
  /// [maxPods] The maximum number of pods that can run on a node.
  /// [minCount] The minimum number of nodes for auto-scaling
  /// [mode] Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  /// [name] Unique name of the agent pool profile in the context of the subscription and resource group.
  /// [nodeImageVersion] The version of node image
  /// [nodeLabels] NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  /// [nodeTaints] NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  /// [osType] OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  /// [vmSize] VmSize - The size of the agent pool VMs.
  NamedAgentPoolProfileResponse({
    this.availabilityZones,
    this.cloudProviderProfile,
    this.count,
    this.maxCount,
    this.maxPods,
    this.minCount,
    this.mode,
    this.name,
    this.nodeImageVersion,
    this.nodeLabels,
    this.nodeTaints,
    this.osType,
    this.vmSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZones': ?availabilityZones,
      'cloudProviderProfile': ?cloudProviderProfile == null ? null : cloudProviderProfile!.toMap(),
      'count': ?count,
      'maxCount': ?maxCount,
      'maxPods': ?maxPods,
      'minCount': ?minCount,
      'mode': ?mode,
      'name': ?name,
      'nodeImageVersion': ?nodeImageVersion,
      'nodeLabels': ?nodeLabels,
      'nodeTaints': ?nodeTaints,
      'osType': ?osType,
      'vmSize': ?vmSize,
    };
  }

  factory NamedAgentPoolProfileResponse.fromMap(Map<String, dynamic> map) {
    return NamedAgentPoolProfileResponse(
      availabilityZones: map['availabilityZones'] == null ? null : (map['availabilityZones'] as List).cast<String>(),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : CloudProviderProfileResponse.fromMap((map['cloudProviderProfile'] as Map).cast<String, dynamic>()),
      count: map['count'] == null ? null : map['count'] as int,
      maxCount: map['maxCount'] == null ? null : map['maxCount'] as int,
      maxPods: map['maxPods'] == null ? null : map['maxPods'] as int,
      minCount: map['minCount'] == null ? null : map['minCount'] as int,
      mode: map['mode'] == null ? null : map['mode'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nodeImageVersion: map['nodeImageVersion'] == null ? null : map['nodeImageVersion'] as String,
      nodeLabels: map['nodeLabels'] == null ? null : (map['nodeLabels'] as Map).cast<String, String>(),
      nodeTaints: map['nodeTaints'] == null ? null : (map['nodeTaints'] as List).cast<String>(),
      osType: map['osType'] == null ? null : map['osType'] as String,
      vmSize: map['vmSize'] == null ? null : map['vmSize'] as String,
    );
  }
}

