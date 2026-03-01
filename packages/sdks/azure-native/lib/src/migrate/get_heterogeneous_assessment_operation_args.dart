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
    required pulumi.Output<String> assessmentName,
    required pulumi.Output<String> projectName,
    required pulumi.Output<String> resourceGroupName,
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

  factory GetHeterogeneousAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetHeterogeneousAssessmentOperationArgs(
      assessmentName: pulumi.Output.create<String>(map['assessmentName'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

