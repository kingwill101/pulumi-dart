// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_provider_profile.dart';
import 'control_plane_endpoint_profile_control_plane_endpoint.dart';
import 'linux_profile_properties.dart';

/// ControlPlaneProfile - The control plane properties for the provisioned cluster.
class ControlPlaneProfile {
  /// AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  final pulumi.Input<List<String>>? availabilityZones;
  /// The underlying cloud infra provider properties.
  final pulumi.Input<CloudProviderProfile>? cloudProviderProfile;
  /// API server endpoint for the control plane
  final pulumi.Input<ControlPlaneEndpointProfileControlPlaneEndpoint>? controlPlaneEndpoint;
  /// Count - Number of agents to host docker containers. Allowed values must be in the range of 1 to 100 (inclusive). The default value is 1.
  final pulumi.Input<int>? count;
  /// Profile for Linux VMs in the container service cluster.
  final pulumi.Input<LinuxProfileProperties>? linuxProfile;
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

  /// Creates a new [ControlPlaneProfile].
  /// [availabilityZones] AvailabilityZones - The list of Availability zones to use for nodes. Datacenter racks modelled as zones
  /// [cloudProviderProfile] The underlying cloud infra provider properties.
  /// [controlPlaneEndpoint] API server endpoint for the control plane
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
  ControlPlaneProfile({
    this.availabilityZones,
    this.cloudProviderProfile,
    this.controlPlaneEndpoint,
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
      'cloudProviderProfile': ?pulumi.Input.mapOptionalInputValue<CloudProviderProfile, Map<String, dynamic>>(cloudProviderProfile, (value) => value.toMap()),
      'controlPlaneEndpoint': ?pulumi.Input.mapOptionalInputValue<ControlPlaneEndpointProfileControlPlaneEndpoint, Map<String, dynamic>>(controlPlaneEndpoint, (value) => value.toMap()),
      'count': ?count,
      'linuxProfile': ?pulumi.Input.mapOptionalInputValue<LinuxProfileProperties, Map<String, dynamic>>(linuxProfile, (value) => value.toMap()),
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

  factory ControlPlaneProfile.fromMap(Map<String, dynamic> map) {
    return ControlPlaneProfile(
      availabilityZones: (() { final guardedValue = map['availabilityZones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cloudProviderProfile: (() { final guardedValue = map['cloudProviderProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudProviderProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      controlPlaneEndpoint: (() { final guardedValue = map['controlPlaneEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ControlPlaneEndpointProfileControlPlaneEndpoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      linuxProfile: (() { final guardedValue = map['linuxProfile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinuxProfileProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxCount: (() { final guardedValue = map['maxCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxPods: (() { final guardedValue = map['maxPods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minCount: (() { final guardedValue = map['minCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeImageVersion: (() { final guardedValue = map['nodeImageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeLabels: (() { final guardedValue = map['nodeLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      nodeTaints: (() { final guardedValue = map['nodeTaints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmSize: (() { final guardedValue = map['vmSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

