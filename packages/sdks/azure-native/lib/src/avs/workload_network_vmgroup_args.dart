// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_avs_workload_network_vmgroup_args_doc}
/// The set of arguments for WorkloadNetworkVMGroup.
/// {@endtemplate}
/// {@macro pulumi_avs_workload_network_vmgroup_args_doc}
class WorkloadNetworkVMGroupArgs {
  /// Display name of the VM group.
  final pulumi.Input<String>? displayName;
  /// Virtual machine members of this group.
  final pulumi.Input<List<String>>? members;
  /// Name of the private cloud
  final pulumi.Input<String> privateCloudName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// NSX revision number.
  final pulumi.Input<double>? revision;
  /// ID of the VM group.
  final pulumi.Input<String>? vmGroupId;

  /// Creates a new [WorkloadNetworkVMGroupArgs].
  /// [displayName] Display name of the VM group.
  /// [members] Virtual machine members of this group.
  /// [privateCloudName] Name of the private cloud
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [revision] NSX revision number.
  /// [vmGroupId] ID of the VM group.
  const WorkloadNetworkVMGroupArgs({
    this.displayName,
    this.members,
    required this.privateCloudName,
    required this.resourceGroupName,
    this.revision,
    this.vmGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'members': ?members,
      'privateCloudName': privateCloudName,
      'resourceGroupName': resourceGroupName,
      'revision': ?revision,
      'vmGroupId': ?vmGroupId,
    };
  }

  factory WorkloadNetworkVMGroupArgs.fromMap(Map<String, dynamic> map) {
    return WorkloadNetworkVMGroupArgs(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      privateCloudName: pulumi.Input.fromValue(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      vmGroupId: (() { final guardedValue = map['vmGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
