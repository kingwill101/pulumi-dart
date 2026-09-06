// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy.dart';

/// {@template pulumi_devcenter_project_policy_args_doc}
/// The set of arguments for ProjectPolicy.
/// {@endtemplate}
/// {@macro pulumi_devcenter_project_policy_args_doc}
class ProjectPolicyArgs {
  /// The name of the devcenter.
  final pulumi.Input<String> devCenterName;
  /// The name of the project policy.
  final pulumi.Input<String?>? projectPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource policies that are a part of this project policy.
  final pulumi.Input<List<ResourcePolicy>?>? resourcePolicies;
  /// Resources that have access to the shared resources that are a part of this project policy.
  final pulumi.Input<List<String>?>? scopes;

  /// Creates a new [ProjectPolicyArgs].
  /// [devCenterName] The name of the devcenter.
  /// [projectPolicyName] The name of the project policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourcePolicies] Resource policies that are a part of this project policy.
  /// [scopes] Resources that have access to the shared resources that are a part of this project policy.
  const ProjectPolicyArgs({
    required this.devCenterName,
    this.projectPolicyName,
    required this.resourceGroupName,
    this.resourcePolicies,
    this.scopes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterName': devCenterName,
      'projectPolicyName': ?projectPolicyName,
      'resourceGroupName': resourceGroupName,
      'resourcePolicies': ?pulumi.Input.mapOptionalInputValue<List<ResourcePolicy>, List<Map<String, dynamic>>>(resourcePolicies, (value) => pulumi.Input.encodeList<ResourcePolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': ?scopes,
    };
  }

  factory ProjectPolicyArgs.fromMap(Map<String, dynamic> map) {
    return ProjectPolicyArgs(
      devCenterName: pulumi.Input.fromValue(map['devCenterName'] as String),
      projectPolicyName: (() { final guardedValue = map['projectPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      resourcePolicies: (() { final guardedValue = map['resourcePolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ResourcePolicy>(guardedValue, (value) => ResourcePolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
