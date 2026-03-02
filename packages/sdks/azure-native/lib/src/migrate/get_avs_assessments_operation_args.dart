// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_get_avs_assessments_operation_args_doc}
/// Arguments for getAvsAssessmentsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_get_avs_assessments_operation_args_doc}
class GetAvsAssessmentsOperationArgs {
  /// AVS Assessment ARM name
  final pulumi.Input<String> assessmentName;
  /// Group ARM name
  final pulumi.Input<String> groupName;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetAvsAssessmentsOperationArgs].
  /// [assessmentName] AVS Assessment ARM name
  /// [groupName] Group ARM name
  /// [projectName] Assessment Project Name
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetAvsAssessmentsOperationArgs({
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

  factory GetAvsAssessmentsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GetAvsAssessmentsOperationArgs(
      assessmentName: (map['assessmentName'] as String).input(),
      groupName: (map['groupName'] as String).input(),
      projectName: (map['projectName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
    );
  }
}

