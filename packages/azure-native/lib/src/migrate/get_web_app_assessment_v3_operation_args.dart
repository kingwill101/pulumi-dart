// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_web_app_assessment_v3_operation_args_doc}
/// Arguments for getWebAppAssessmentV3Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_web_app_assessment_v3_operation_args_doc}
class GetWebAppAssessmentV3OperationArgs {
  /// WebApp Assessment ARM name
  final pulumi.Input<String> assessmentName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppAssessmentV3OperationArgs].
  /// [assessmentName] WebApp Assessment ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetWebAppAssessmentV3OperationArgs({
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

  factory GetWebAppAssessmentV3OperationArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppAssessmentV3OperationArgs(
      assessmentName: map['assessmentName'] as String,
      projectName: map['projectName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

