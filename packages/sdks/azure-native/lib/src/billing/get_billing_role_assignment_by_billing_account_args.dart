// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_billing_role_assignment_by_billing_account_args_doc}
/// Arguments for getBillingRoleAssignmentByBillingAccount.
/// {@endtemplate}
/// {@macro pulumi_billing_get_billing_role_assignment_by_billing_account_args_doc}
class GetBillingRoleAssignmentByBillingAccountArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a role assignment.
  final pulumi.Input<String> billingRoleAssignmentName;

  /// Creates a new [GetBillingRoleAssignmentByBillingAccountArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingRoleAssignmentName] The ID that uniquely identifies a role assignment.
  GetBillingRoleAssignmentByBillingAccountArgs({
    required this.billingAccountName,
    required this.billingRoleAssignmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': billingRoleAssignmentName,
    };
  }

  factory GetBillingRoleAssignmentByBillingAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingRoleAssignmentByBillingAccountArgs(
      billingAccountName: (map['billingAccountName'] as String).input(),
      billingRoleAssignmentName: (map['billingRoleAssignmentName'] as String).input(),
    );
  }
}

