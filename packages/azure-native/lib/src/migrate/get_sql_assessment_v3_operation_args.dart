// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_sql_assessment_v3_operation_args_doc}
/// Arguments for getSqlAssessmentV3Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_sql_assessment_v3_operation_args_doc}
class GetSqlAssessmentV3OperationArgs {
  /// SQL Assessment arm name.
  final pulumi.Input<String> assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqlAssessmentV3OperationArgs].
  /// [assessmentName] SQL Assessment arm name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSqlAssessmentV3OperationArgs({
    required String assessmentName,
    required String projectName,
    required String resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asInput<String>(assessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqlAssessmentV3OperationArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlAssessmentV3OperationArgs(
      assessmentName: map['assessmentName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

