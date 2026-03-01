// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_contoso_get_employee_args_doc}
/// Arguments for getEmployee.
/// {@endtemplate}
/// {@macro pulumi_contoso_get_employee_args_doc}
class GetEmployeeArgs {
  /// The name of the Employee
  final pulumi.Input<String> employeeName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetEmployeeArgs].
  /// [employeeName] The name of the Employee
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetEmployeeArgs({
    required String employeeName,
    required String resourceGroupName,
  }) :
      employeeName = pulumi.Input.asInput<String>(employeeName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'employeeName': employeeName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetEmployeeArgs.fromMap(Map<String, dynamic> map) {
    return GetEmployeeArgs(
      employeeName: map['employeeName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

