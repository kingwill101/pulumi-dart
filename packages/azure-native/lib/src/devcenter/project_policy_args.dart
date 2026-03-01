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
  final pulumi.Input<String>? projectPolicyName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource policies that are a part of this project policy.
  final pulumi.Input<List<ResourcePolicy>>? resourcePolicies;
  /// Resources that have access to the shared resources that are a part of this project policy.
  final pulumi.Input<List<String>>? scopes;

  /// Creates a new [ProjectPolicyArgs].
  /// [devCenterName] The name of the devcenter.
  /// [projectPolicyName] The name of the project policy.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [resourcePolicies] Resource policies that are a part of this project policy.
  /// [scopes] Resources that have access to the shared resources that are a part of this project policy.
  ProjectPolicyArgs({
    required String devCenterName,
    String? projectPolicyName,
    required String resourceGroupName,
    List<ResourcePolicy>? resourcePolicies,
    List<String>? scopes,
  }) :
      devCenterName = pulumi.Input.asInput<String>(devCenterName),
      projectPolicyName = pulumi.Input.asOptionalInput<String>(projectPolicyName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      resourcePolicies = pulumi.Input.asOptionalInput<List<ResourcePolicy>>(resourcePolicies),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes);

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
      devCenterName: map['devCenterName'] as String,
      projectPolicyName: map['projectPolicyName'] == null ? null : map['projectPolicyName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourcePolicies: map['resourcePolicies'] == null ? null : pulumi.Input.decodeList<ResourcePolicy>(map['resourcePolicies'], (value) => ResourcePolicy.fromMap((value as Map).cast<String, dynamic>())),
      scopes: map['scopes'] == null ? null : (map['scopes'] as List).cast<String>(),
    );
  }
}

