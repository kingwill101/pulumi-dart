// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_authorization_get_policy_set_definition_at_management_group_args_doc}
/// Arguments for getPolicySetDefinitionAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_authorization_get_policy_set_definition_at_management_group_args_doc}
class GetPolicySetDefinitionAtManagementGroupArgs {
  /// Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  final pulumi.Input<String>? expand;

  /// The ID of the management group.
  final pulumi.Input<String> managementGroupId;

  /// The name of the policy set definition to get.
  final pulumi.Input<String> policySetDefinitionName;

  /// Creates a new [GetPolicySetDefinitionAtManagementGroupArgs].
  /// [expand] Comma-separated list of additional properties to be included in the response. Supported values are 'LatestDefinitionVersion, EffectiveDefinitionVersion'.
  /// [managementGroupId] The ID of the management group.
  /// [policySetDefinitionName] The name of the policy set definition to get.
  GetPolicySetDefinitionAtManagementGroupArgs({
    this.expand,
    required this.managementGroupId,
    required this.policySetDefinitionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expand': ?expand,
      'managementGroupId': managementGroupId,
      'policySetDefinitionName': policySetDefinitionName,
    };
  }

  factory GetPolicySetDefinitionAtManagementGroupArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetPolicySetDefinitionAtManagementGroupArgs(
      expand: (() {
        final guardedValue = map['expand'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      managementGroupId: pulumi.Input.fromValue(
        map['managementGroupId'] as String,
      ),
      policySetDefinitionName: pulumi.Input.fromValue(
        map['policySetDefinitionName'] as String,
      ),
    );
  }
}
