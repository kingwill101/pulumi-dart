// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_billing_get_billing_role_assignment_by_department_args_doc}
/// Arguments for getBillingRoleAssignmentByDepartment.
/// {@endtemplate}
/// {@macro pulumi_billing_get_billing_role_assignment_by_department_args_doc}
class GetBillingRoleAssignmentByDepartmentArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a role assignment.
  final pulumi.Input<String> billingRoleAssignmentName;
  /// The name of the department.
  final pulumi.Input<String> departmentName;

  /// Creates a new [GetBillingRoleAssignmentByDepartmentArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingRoleAssignmentName] The ID that uniquely identifies a role assignment.
  /// [departmentName] The name of the department.
  const GetBillingRoleAssignmentByDepartmentArgs({
    required this.billingAccountName,
    required this.billingRoleAssignmentName,
    required this.departmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': billingRoleAssignmentName,
      'departmentName': departmentName,
    };
  }

  factory GetBillingRoleAssignmentByDepartmentArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingRoleAssignmentByDepartmentArgs(
      billingAccountName: pulumi.Input.fromValue(map['billingAccountName'] as String),
      billingRoleAssignmentName: pulumi.Input.fromValue(map['billingRoleAssignmentName'] as String),
      departmentName: pulumi.Input.fromValue(map['departmentName'] as String),
    );
  }
}
