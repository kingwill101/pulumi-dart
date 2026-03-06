// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_billing_role_assignment_by_enrollment_account_args_doc}
/// Arguments for getBillingRoleAssignmentByEnrollmentAccount.
/// {@endtemplate}
/// {@macro pulumi_billing_get_billing_role_assignment_by_enrollment_account_args_doc}
class GetBillingRoleAssignmentByEnrollmentAccountArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a role assignment.
  final pulumi.Input<String> billingRoleAssignmentName;
  /// The name of the enrollment account.
  final pulumi.Input<String> enrollmentAccountName;

  /// Creates a new [GetBillingRoleAssignmentByEnrollmentAccountArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingRoleAssignmentName] The ID that uniquely identifies a role assignment.
  /// [enrollmentAccountName] The name of the enrollment account.
  const GetBillingRoleAssignmentByEnrollmentAccountArgs({
    required this.billingAccountName,
    required this.billingRoleAssignmentName,
    required this.enrollmentAccountName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': billingRoleAssignmentName,
      'enrollmentAccountName': enrollmentAccountName,
    };
  }

  factory GetBillingRoleAssignmentByEnrollmentAccountArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingRoleAssignmentByEnrollmentAccountArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingRoleAssignmentName: pulumi.Input.fromValue(map['billingRoleAssignmentName'] as String),
      enrollmentAccountName: pulumi.Input.fromValue(map['enrollmentAccountName'] as String),
    );
  }
}

