// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'billing_role_assignment_properties.dart';

/// {@template pulumi_billing_billing_role_assignment_by_department_args_doc}
/// The set of arguments for BillingRoleAssignmentByDepartment.
/// {@endtemplate}
/// {@macro pulumi_billing_billing_role_assignment_by_department_args_doc}
class BillingRoleAssignmentByDepartmentArgs {
  /// The ID that uniquely identifies a billing account.
  final pulumi.Input<String> billingAccountName;
  /// The ID that uniquely identifies a role assignment.
  final pulumi.Input<String>? billingRoleAssignmentName;
  /// The name of the department.
  final pulumi.Input<String> departmentName;
  /// The properties of the billing role assignment.
  final pulumi.Input<BillingRoleAssignmentProperties>? properties;
  /// Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [BillingRoleAssignmentByDepartmentArgs].
  /// [billingAccountName] The ID that uniquely identifies a billing account.
  /// [billingRoleAssignmentName] The ID that uniquely identifies a role assignment.
  /// [departmentName] The name of the department.
  /// [properties] The properties of the billing role assignment.
  /// [tags] Dictionary of metadata associated with the resource. It may not be populated for all resource types. Maximum key/value length supported of 256 characters. Keys/value should not empty value nor null. Keys can not contain < > % & \ ? /
  BillingRoleAssignmentByDepartmentArgs({
    required pulumi.Output<String> billingAccountName,
    pulumi.Output<String>? billingRoleAssignmentName,
    required pulumi.Output<String> departmentName,
    pulumi.Output<BillingRoleAssignmentProperties>? properties,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      billingAccountName = pulumi.Input.asInput<String>(billingAccountName),
      billingRoleAssignmentName = pulumi.Input.asOptionalInput<String>(billingRoleAssignmentName),
      departmentName = pulumi.Input.asInput<String>(departmentName),
      properties = pulumi.Input.asOptionalInput<BillingRoleAssignmentProperties>(properties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountName': billingAccountName,
      'billingRoleAssignmentName': ?billingRoleAssignmentName,
      'departmentName': departmentName,
      'properties': ?pulumi.Input.mapOptionalInputValue<BillingRoleAssignmentProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory BillingRoleAssignmentByDepartmentArgs.fromMap(Map<String, dynamic> map) {
    return BillingRoleAssignmentByDepartmentArgs(
      billingAccountName: pulumi.Output.create<String>(map['billingAccountName'] as String),
      billingRoleAssignmentName: map['billingRoleAssignmentName'] == null ? null : pulumi.Output.create<String>(map['billingRoleAssignmentName'] as String),
      departmentName: pulumi.Output.create<String>(map['departmentName'] as String),
      properties: map['properties'] == null ? null : pulumi.Output.create<BillingRoleAssignmentProperties>(BillingRoleAssignmentProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

