// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_migrate_groups_operation_args_doc}
/// The set of arguments for GroupsOperation.
/// {@endtemplate}
/// {@macro pulumi_migrate_groups_operation_args_doc}
class GroupsOperationArgs {
  /// Group ARM name
  final pulumi.Input<String>? groupName;
  /// The type of group.
  final pulumi.Input<String>? groupType;
  /// Assessment Project Name
  final pulumi.Input<String> projectName;
  /// The status of the last operation.
  final pulumi.Input<String>? provisioningState;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// List of assessment types supported on this group.
  final pulumi.Input<List<String>>? supportedAssessmentTypes;

  /// Creates a new [GroupsOperationArgs].
  /// [groupName] Group ARM name
  /// [groupType] The type of group.
  /// [projectName] Assessment Project Name
  /// [provisioningState] The status of the last operation.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [supportedAssessmentTypes] List of assessment types supported on this group.
  GroupsOperationArgs({
    String? groupName,
    String? groupType,
    required String projectName,
    String? provisioningState,
    required String resourceGroupName,
    List<String>? supportedAssessmentTypes,
  }) :
      groupName = pulumi.Input.asOptionalInput<String>(groupName),
      groupType = pulumi.Input.asOptionalInput<String>(groupType),
      projectName = pulumi.Input.asInput<String>(projectName),
      provisioningState = pulumi.Input.asOptionalInput<String>(provisioningState),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      supportedAssessmentTypes = pulumi.Input.asOptionalInput<List<String>>(supportedAssessmentTypes);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupName': ?groupName,
      'groupType': ?groupType,
      'projectName': projectName,
      'provisioningState': ?provisioningState,
      'resourceGroupName': resourceGroupName,
      'supportedAssessmentTypes': ?supportedAssessmentTypes,
    };
  }

  factory GroupsOperationArgs.fromMap(Map<String, dynamic> map) {
    return GroupsOperationArgs(
      groupName: map['groupName'] == null ? null : map['groupName'] as String,
      groupType: map['groupType'] == null ? null : map['groupType'] as String,
      projectName: map['projectName'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      supportedAssessmentTypes: map['supportedAssessmentTypes'] == null ? null : (map['supportedAssessmentTypes'] as List).cast<String>(),
    );
  }
}

