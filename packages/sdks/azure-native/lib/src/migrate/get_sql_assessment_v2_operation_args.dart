// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_sql_assessment_v2_operation_args_doc}
/// Arguments for getSqlAssessmentV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_sql_assessment_v2_operation_args_doc}
class GetSqlAssessmentV2OperationArgs {
  /// SQL Assessment arm name.
  final pulumi.Input<String> assessmentName;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetSqlAssessmentV2OperationArgs].
  /// [assessmentName] SQL Assessment arm name.
  /// [groupName] Group ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetSqlAssessmentV2OperationArgs({
    required pulumi.Output<String> assessmentName,
    required pulumi.Output<String> groupName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      assessmentName = pulumi.Input.asInput<String>(assessmentName),
      groupName = pulumi.Input.asInput<String>(groupName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'groupName': groupName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetSqlAssessmentV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return GetSqlAssessmentV2OperationArgs(
      assessmentName: pulumi.Output.create<String>(map['assessmentName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

