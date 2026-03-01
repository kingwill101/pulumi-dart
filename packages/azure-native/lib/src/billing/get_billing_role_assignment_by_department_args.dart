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
  GetBillingRoleAssignmentByDepartmentArgs({
    required String billingAccountName,
    required String billingRoleAssignmentName,
    required String departmentName,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingRoleAssignmentName = pulumi.Input.asInput<String>(billingRoleAssignmentName),
      departmentName = pulumi.Input.asInput<String>(departmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': billingRoleAssignmentName,
      'departmentName': departmentName,
    };
  }

  factory GetBillingRoleAssignmentByDepartmentArgs.fromMap(Map<String, dynamic> map) {
    return GetBillingRoleAssignmentByDepartmentArgs(
      billingAccountName: map['billingAccountName'] as String,
      billingRoleAssignmentName: map['billingRoleAssignmentName'] as String,
      departmentName: map['departmentName'] as String,
    );
  }
}

