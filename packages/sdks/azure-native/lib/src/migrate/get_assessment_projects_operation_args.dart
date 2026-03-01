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
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
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
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

