// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
/// Arguments for getVmwareAdminClusterIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_gkeonprem_v1_get_vmware_admin_cluster_iam_policy_args_doc}
class GetVmwareAdminClusterIamPolicyArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<int>? optionsRequestedPolicyVersion;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> vmwareAdminClusterId;

  /// Creates a new [GetVmwareAdminClusterIamPolicyArgs].
  /// [location] Required.
  /// [optionsRequestedPolicyVersion] Optional.
  /// [project] Optional.
  /// [vmwareAdminClusterId] Required.
  GetVmwareAdminClusterIamPolicyArgs({
    required String location,
    int? optionsRequestedPolicyVersion,
    String? project,
    required String vmwareAdminClusterId,
  }) : location = pulumi.Input.asInput<String>(location),
       optionsRequestedPolicyVersion = pulumi.Input.asOptionalInput<int>(
         optionsRequestedPolicyVersion,
       ),
       project = pulumi.Input.asOptionalInput<String>(project),
       vmwareAdminClusterId = pulumi.Input.asInput<String>(
         vmwareAdminClusterId,
       );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'optionsRequestedPolicyVersion': ?optionsRequestedPolicyVersion,
      'project': ?project,
      'vmwareAdminClusterId': vmwareAdminClusterId,
    };
  }

  factory GetVmwareAdminClusterIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetVmwareAdminClusterIamPolicyArgs(
      location: map['location'] as String,
      optionsRequestedPolicyVersion:
          map['optionsRequestedPolicyVersion'] == null
          ? null
          : map['optionsRequestedPolicyVersion'] as int,
      project: map['project'] == null ? null : map['project'] as String,
      vmwareAdminClusterId: map['vmwareAdminClusterId'] as String,
    );
  }
}
