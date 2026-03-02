// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_project_policy_args_doc}
/// Arguments for getProjectPolicy.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_project_policy_args_doc}
class GetProjectPolicyArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the project policy.
  final pulumi.Input<String> projectPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetProjectPolicyArgs].
  /// [devCenterName] The name of the devcenter.
  /// [projectPolicyName] The name of the project policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetProjectPolicyArgs({
    required this.devCenterName,
    required this.projectPolicyName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'projectPolicyName': projectPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectPolicyArgs(
      devCenterName: (map['devCenterName'] as String).input(),
      projectPolicyName: (map['projectPolicyName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

