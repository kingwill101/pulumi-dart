// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_assessment_projects_operation_args_doc}
/// Arguments for getAssessmentProjectsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_assessment_projects_operation_args_doc}
class GetAssessmentProjectsOperationArgs {
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAssessmentProjectsOperationArgs].
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAssessmentProjectsOperationArgs({
    required String projectName,
    required String resourceGroupName,
  }) :
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetAssessmentProjectsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentProjectsOperationArgs(
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

