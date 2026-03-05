// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_heterogeneous_assessment_operation_args_doc}
/// Arguments for getHeterogeneousAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_heterogeneous_assessment_operation_args_doc}
class GetHeterogeneousAssessmentOperationArgs {
  /// Heterogeneous Assessment ARM name
  final pulumi.Input<String> assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetHeterogeneousAssessmentOperationArgs].
  /// [assessmentName] Heterogeneous Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetHeterogeneousAssessmentOperationArgs({
    required this.assessmentName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetHeterogeneousAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetHeterogeneousAssessmentOperationArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

