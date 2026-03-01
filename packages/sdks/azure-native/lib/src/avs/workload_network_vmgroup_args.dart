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
  WorkloadNetworkVMGroupArgs({
    pulumi.Output<String>? displayName,
    pulumi.Output<List<String>>? members,
    required pulumi.Output<String> privateCloudName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<double>? revision,
    pulumi.Output<String>? vmGroupId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      privateCloudName = pulumi.Input.asInput<String>(privateCloudName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      revision = pulumi.Input.asOptionalInput<double>(revision),
      vmGroupId = pulumi.Input.asOptionalInput<String>(vmGroupId);

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
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      members: map['members'] == null ? null : pulumi.Output.create<List<String>>((map['members'] as List).cast<String>()),
      privateCloudName: pulumi.Output.create<String>(map['privateCloudName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      revision: map['revision'] == null ? null : pulumi.Output.create<double>(map['revision'] as double),
      vmGroupId: map['vmGroupId'] == null ? null : pulumi.Output.create<String>(map['vmGroupId'] as String),
    );
  }
}

