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
    required this.managementGroupId,
    required this.policyDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'policyDefinitionName': policyDefinitionName,
    };
  }

  factory GetPolicyDefinitionAtManagementGroupArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicyDefinitionAtManagementGroupArgs(
      managementGroupId: pulumi.Input.fromValue(
        map['managementGroupId'] as String,
      ),
      policyDefinitionName: pulumi.Input.fromValue(
        map['policyDefinitionName'] as String,
      ),
    );
  }
}
