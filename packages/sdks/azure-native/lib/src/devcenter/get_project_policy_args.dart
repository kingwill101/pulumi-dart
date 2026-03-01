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
    required pulumi.Output<String> devCenterName,
    required pulumi.Output<String> projectPolicyName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      projectPolicyName = pulumi.Input.asInput<String>(projectPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'projectPolicyName': projectPolicyName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetProjectPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetProjectPolicyArgs(
      devCenterName: pulumi.Output.create<String>(map['devCenterName'] as String),
      projectPolicyName: pulumi.Output.create<String>(map['projectPolicyName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

