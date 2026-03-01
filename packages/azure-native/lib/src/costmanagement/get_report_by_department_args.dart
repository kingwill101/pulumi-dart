// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_costmanagement_get_report_by_department_args_doc}
/// Arguments for getReportByDepartment.
/// {@endtemplate}
/// {@macro pulumi_costmanagement_get_report_by_department_args_doc}
class GetReportByDepartmentArgs {
  /// Department ID
  final pulumi.Input<String> departmentId;
  /// Report Name.
  final pulumi.Input<String> reportName;

  /// Creates a new [GetReportByDepartmentArgs].
  /// [departmentId] Department ID
  /// [reportName] Report Name.
  GetReportByDepartmentArgs({
    required String departmentId,
    required String reportName,
  }) :
      departmentId = pulumi.Input.asInput<String>(departmentId),
      reportName = pulumi.Input.asInput<String>(reportName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'departmentId': departmentId,
      'reportName': reportName,
    };
  }

  factory GetReportByDepartmentArgs.fromMap(Map<String, dynamic> map) {
    return GetReportByDepartmentArgs(
      departmentId: map['departmentId'] as String,
      reportName: map['reportName'] as String,
    );
  }
}

