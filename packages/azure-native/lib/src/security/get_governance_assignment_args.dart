// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_security_get_governance_assignment_args_doc}
/// Arguments for getGovernanceAssignment.
/// {@endtemplate}
/// {@macro pulumi_security_get_governance_assignment_args_doc}
class GetGovernanceAssignmentArgs {
  /// The Assessment Key - A unique key for the assessment type
  final pulumi.Input<String> assessmentName;
  /// The governance assignment key - the assessment key of the required governance assignment
  final pulumi.Input<String> assignmentKey;
  /// The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  final pulumi.Input<String> scope;

  /// Creates a new [GetGovernanceAssignmentArgs].
  /// [assessmentName] The Assessment Key - A unique key for the assessment type
  /// [assignmentKey] The governance assignment key - the assessment key of the required governance assignment
  /// [scope] The scope of the Governance assignments. Valid scopes are: subscription (format: 'subscriptions/{subscriptionId}'), or security connector (format: 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Security/securityConnectors/{securityConnectorName})'
  GetGovernanceAssignmentArgs({
    required String assessmentName,
    required String assignmentKey,
    required String scope,
  }) :
      assessmentName = pulumi.Input.asInput<String>(assessmentName),
      assignmentKey = pulumi.Input.asInput<String>(assignmentKey),
      scope = pulumi.Input.asInput<String>(scope);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'assignmentKey': assignmentKey,
      'scope': scope,
    };
  }

  factory GetGovernanceAssignmentArgs.fromMap(Map<String, dynamic> map) {
    return GetGovernanceAssignmentArgs(
      assessmentName: map['assessmentName'] as String,
      assignmentKey: map['assignmentKey'] as String,
      scope: map['scope'] as String,
    );
  }
}

