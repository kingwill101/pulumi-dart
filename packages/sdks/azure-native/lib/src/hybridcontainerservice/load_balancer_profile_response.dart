// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider_profile_response.dart';
import 'linux_profile_properties_response.dart';

/// LoadBalancerProfile - Profile of the cluster load balancer.
class LoadBalancerProfileResponse {
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  final pulumi.Input<List<String>>? availabilityZones;
  /// The underlying cloud infra provider properties.
  final pulumi.Input<CloudProviderProfileResponse>? cloudProviderProfile;
  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final pulumi.Input<int>? count;
  /// Profile for Linux VMs in the container service cluster.
  final pulumi.Input<LinuxProfilePropertiesResponse>? linuxProfile;
  /// The maximum number of nodes for auto-scaling
  final pulumi.Input<int>? maxCount;
  /// The maximum number of pods that can run on a node.
  final pulumi.Input<int>? maxPods;
  /// The minimum number of nodes for auto-scaling
  final pulumi.Input<int>? minCount;
  /// Mode - AgentPoolMode represents mode of an agent pool. Possible values include: 'System', 'LB', 'User'. Default is 'User'
  final pulumi.Input<String>? mode;
  /// Unique name of the agent pool profile in the context of the subscription and resource group.
  final pulumi.Input<String>? name;
  /// The version of node image
  final pulumi.Input<String>? nodeImageVersion;
  /// NodeLabels - Agent pool node labels to be persisted across all nodes in agent pool.
  final pulumi.Input<Map<String, String>>? nodeLabels;
  /// NodeTaints - Taints added to new nodes during node pool create and scale. For example, key=value:NoSchedule.
  final pulumi.Input<List<String>>? nodeTaints;
  /// OsType - OsType to be used to specify os type. Choose from Linux and Windows. Default to Linux. Possible values include: 'Linux', 'Windows'
  final pulumi.Input<String>? osType;
  /// VmSize - The size of the agent pool VMs.
  final pulumi.Input<String>? vmSize;

  /// Creates a new [LoadBalancerProfileResponse].
  /// [availabilityZones] AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [count] Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  /// [linuxProfile] Profile for Linux VMs in the container service cluster.
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
  LoadBalancerProfileResponse({
    this.availabilityZones,
    this.cloudProviderProfile,
    this.count,
    this.linuxProfile,
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
      'cloudProviderProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfileResponse, Map<String, dynamic>>(cloudProviderProfile, (value) => value.toMap()),
      'count': ?count,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<LinuxProfilePropertiesResponse, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
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

  factory LoadBalancerProfileResponse.fromMap(Map<String, dynamic> map) {
    return LoadBalancerProfileResponse(
      availabilityZones: map['availabilityZones'] == null ? null : ((map['availabilityZones']! as List).cast<String>()).input(),
      cloudProviderProfile: map['cloudProviderProfile'] == null ? null : (CloudProviderProfileResponse.fromMap((map['cloudProviderProfile']! as Map).cast<String, dynamic>())).input(),
      count: map['count'] == null ? null : (map['count']! as int).input(),
      linuxProfile: map['linuxProfile'] == null ? null : (LinuxProfilePropertiesResponse.fromMap((map['linuxProfile']! as Map).cast<String, dynamic>())).input(),
      maxCount: map['maxCount'] == null ? null : (map['maxCount']! as int).input(),
      maxPods: map['maxPods'] == null ? null : (map['maxPods']! as int).input(),
      minCount: map['minCount'] == null ? null : (map['minCount']! as int).input(),
      mode: map['mode'] == null ? null : (map['mode']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      nodeImageVersion: map['nodeImageVersion'] == null ? null : (map['nodeImageVersion']! as String).input(),
      nodeLabels: map['nodeLabels'] == null ? null : ((map['nodeLabels']! as Map).cast<String, String>()).input(),
      nodeTaints: map['nodeTaints'] == null ? null : ((map['nodeTaints']! as List).cast<String>()).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      vmSize: map['vmSize'] == null ? null : (map['vmSize']! as String).input(),
    );
  }
}

