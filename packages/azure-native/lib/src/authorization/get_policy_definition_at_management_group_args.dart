// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_definition_at_management_group_args_doc}
/// Arguments for getPolicyDefinitionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_definition_at_management_group_args_doc}
class GetPolicyDefinitionAtManagementGroupArgs {
  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;
  /// The name of the policy definition to get.
  final pulumi.Input<String> policyDefinitionName;

  /// Creates a new [GetPolicyDefinitionAtManagementGroupArgs].
  /// [managementGroupId] The ID of the management group.
  /// [policyDefinitionName] The name of the policy definition to get.
  GetPolicyDefinitionAtManagementGroupArgs({
    required String managementGroupId,
    required String policyDefinitionName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      policyDefinitionName = pulumi.Input.asInput<String>(policyDefinitionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'policyDefinitionName': policyDefinitionName,
    };
  }

  factory GetPolicyDefinitionAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetPolicyDefinitionAtManagementGroupArgs(
      managementGroupId: map['managementGroupId'] as String,
      policyDefinitionName: map['policyDefinitionName'] as String,
    );
  }
}

