// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_compound_assessment_operation_args_doc}
/// Arguments for getCompoundAssessmentOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_compound_assessment_operation_args_doc}
class GetCompoundAssessmentOperationArgs {
  /// Compound Assessment ARM name
  final pulumi.Input<String> compoundAssessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetCompoundAssessmentOperationArgs].
  /// [compoundAssessmentName] Compound Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetCompoundAssessmentOperationArgs({
    required String compoundAssessmentName,
    required String projectName,
    required String resourceGroupName,
  }) :
      compoundAssessmentName = pulumi.Input.asInput<String>(compoundAssessmentName),
      projectName = pulumi.Input.asInput<String>(projectName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compoundAssessmentName': compoundAssessmentName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetCompoundAssessmentOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetCompoundAssessmentOperationArgs(
      compoundAssessmentName: map['compoundAssessmentName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

