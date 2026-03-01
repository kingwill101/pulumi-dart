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

  factory GetAksAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetAksAssessmentOperationArgs(
      assessmentName: map['assessmentName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

