// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_policyinsights_list_remediation_deployments_at_management_group_args_doc}
/// Arguments for listRemediationDeploymentsAtManagementGroup.
/// {@endtemplate}
/// {@macro pulumi_policyinsights_list_remediation_deployments_at_management_group_args_doc}
class ListRemediationDeploymentsAtManagementGroupArgs {
  /// Management group ID.
  final pulumi.Input<String> managementGroupId;
  /// The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  final pulumi.Input<String> managementGroupsNamespace;
  /// The name of the remediation.
  final pulumi.Input<String> remediationName;
  /// Maximum number of records to return.
  final pulumi.Input<int>? top;

  /// Creates a new [ListRemediationDeploymentsAtManagementGroupArgs].
  /// [managementGroupId] Management group ID.
  /// [managementGroupsNamespace] The namespace for Microsoft Management RP; only "Microsoft.Management" is allowed.
  /// [remediationName] The name of the remediation.
  /// [top] Maximum number of records to return.
  ListRemediationDeploymentsAtManagementGroupArgs({
    required String managementGroupId,
    required String managementGroupsNamespace,
    required String remediationName,
    int? top,
  }) :
      managementGroupId = pulumi.Input.asInput<String>(managementGroupId),
      managementGroupsNamespace = pulumi.Input.asInput<String>(managementGroupsNamespace),
      remediationName = pulumi.Input.asInput<String>(remediationName),
      top = pulumi.Input.asOptionalInput<int>(top);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroupId': managementGroupId,
      'managementGroupsNamespace': managementGroupsNamespace,
      'remediationName': remediationName,
      'top': ?top,
    };
  }

  factory ListRemediationDeploymentsAtManagementGroupArgs.fromMap(Map<String, dynamic> map) {
    return ListRemediationDeploymentsAtManagementGroupArgs(
      managementGroupId: map['managementGroupId'] as String,
      managementGroupsNamespace: map['managementGroupsNamespace'] as String,
      remediationName: map['remediationName'] as String,
      top: map['top'] == null ? null : map['top'] as int,
    );
  }
}

