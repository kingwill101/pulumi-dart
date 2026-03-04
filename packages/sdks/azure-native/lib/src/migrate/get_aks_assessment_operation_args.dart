// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_aks_assessment_operation_args_doc}
/// Arguments for getAksAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_aks_assessment_operation_args_doc}
class GetAksAssessmentOperationArgs {
  /// AKS Assessment Name.
  final pulumi.Input<String> assessmentName;

  /// Assessment Project Name
  final pulumi.Input<String> projectName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAksAssessmentOperationArgs].
  /// [assessmentName] AKS Assessment Name.
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAksAssessmentOperationArgs({
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

  factory GetAksAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetAksAssessmentOperationArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
    );
  }
}
