// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_get_remediation_at_management_group_args_doc}
/// Arguments for getRemediationAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_get_remediation_at_management_group_args_doc}
class GetRemediationAtManagementGroupArgs {
  /// Management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  final pulumi.Input<String> managementGroupsNamespace;
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;

  /// Creates a new [GetRemediationAtManagementGroupArgs].
  /// [managementGroupId] Management group ID.
  /// [managementGroupsNamespace] The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  /// [remediationName] The name of the remediation.
  GetRemediationAtManagementGroupArgs({
    required String managementGroupId,
    required String managementGroupsNamespace,
    required String remediationName,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      managementGroupsNamespace = pulumi.Input.asInput<String>(managementGroupsNamespace),
      remediationName = pulumi.Input.asInput<String>(remediationName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'managementGroupsNamespace': managementGroupsNamespace,
      'remediationName': remediationName,
    };
  }

  factory GetRemediationAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetRemediationAtManagementGroupArgs(
      managementGroupId: map['managementGroupId'] as String,
      managementGroupsNamespace: map['managementGroupsNamespace'] as String,
      remediationName: map['remediationName'] as String,
    );
  }
}

