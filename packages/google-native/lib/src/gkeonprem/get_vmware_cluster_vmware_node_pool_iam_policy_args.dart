// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
/// Arguments for getVmwareClusterVmwareNodePoolIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_cluster_vmware_node_pool_iam_policy_args_doc}
class GetVmwareClusterVmwareNodePoolIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareClusterId;
  final pulumi.Input<String> vmwareNodePoolId;

  /// Creates a new [GetVmwareClusterVmwareNodePoolIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [vmwareClusterId] Required.
  /// [vmwareNodePoolId] Required.
  GetVmwareClusterVmwareNodePoolIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String vmwareClusterId,
    required String vmwareNodePoolId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       vmwareClusterId = pulumi.Input.asInput<String>(vmwareClusterId),
       vmwareNodePoolId = pulumi.Input.asInput<String>(vmwareNodePoolId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'vmwareClusterId': vmwareClusterId,
      'vmwareNodePoolId': vmwareNodePoolId,
    };
  }

  factory GetVmwareClusterVmwareNodePoolIamPolicyArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVmwareClusterVmwareNodePoolIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      vmwareClusterId: map['vmwareClusterId'] as String,
      vmwareNodePoolId: map['vmwareNodePoolId'] as String,
    );
  }
}
