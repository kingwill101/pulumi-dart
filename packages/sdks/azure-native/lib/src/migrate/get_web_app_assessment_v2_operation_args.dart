// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_web_app_assessment_v2_operation_args_doc}
/// Arguments for getWebAppAssessmentV2Operation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_web_app_assessment_v2_operation_args_doc}
class GetWebAppAssessmentV2OperationArgs {
  /// Web app Assessment arm name.
  final pulumi.Input<String> assessmentName;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetWebAppAssessmentV2OperationArgs].
  /// [assessmentName] Web app Assessment arm name.
  /// [groupName] Group ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetWebAppAssessmentV2OperationArgs({
    required this.assessmentName,
    required this.groupName,
    required this.projectName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assessmentName': assessmentName,
      'groupName': groupName,
      'projectName': projectName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetWebAppAssessmentV2OperationArgs.fromMap(Map<String, dynamic> map) {
    return GetWebAppAssessmentV2OperationArgs(
      assessmentName: pulumi.Input.fromValue(map['assessmentName'] as String),
      groupName: pulumi.Input.fromValue(map['groupName'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
