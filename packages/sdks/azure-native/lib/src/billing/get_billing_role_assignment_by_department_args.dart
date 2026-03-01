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
    required pulumi.Output<String> billingAccountName,
    required pulumi.Output<String> billingRoleAssignmentName,
    required pulumi.Output<String> departmentName,
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
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingRoleAssignmentName: pulumi.Output.create<String>(map['billingRoleAssignmentName'] as String),
      departmentName: pulumi.Output.create<String>(map['departmentName'] as String),
    );
  }
}

