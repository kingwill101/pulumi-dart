// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_assessment_args_doc}
/// Arguments for getAssessment.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_assessment_args_doc}
class GetAssessmentArgs {
  /// Unique name of an assessment within a project.
  final pulumi.Input<String> assessmentName;
  /// Unique name of a group within a project.
  final pulumi.Input<String> groupName;
  /// Name of the Azure Migrate project.
  final pulumi.Input<String> projectName;
  /// Name of the Azure Resource Group that project is part of.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAssessmentArgs].
  /// [assessmentName] Unique name of an assessment within a project.
  /// [groupName] Unique name of a group within a project.
  /// [projectName] Name of the Azure Migrate project.
  /// [resourceGroupName] Name of the Azure Resource Group that project is part of.
  GetAssessmentArgs({
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

  factory GetAssessmentArgs.fromMap(Map<String, dynamic> map) {
    return GetAssessmentArgs(
      assessmentName: pulumi.Output.create<String>(map['assessmentName'] as String),
      groupName: pulumi.Output.create<String>(map['groupName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

