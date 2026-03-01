// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_groups_group_parameter.dart';

class GetStackGroupsGroup {
  /// The name of the RAM administrator role assumed by ROS.
  final String administrationRoleName;
  /// The description of the stack group.
  final String description;
  /// The name of the RAM execution role assumed by the administrator role.
  final String executionRoleName;
  /// The ID of the Stack Group.
  final String id;
  /// The parameters.
  final List<GetStackGroupsGroupParameter> parameters;
  /// The id of Stack Group.
  final String stackGroupId;
  /// The name of the stack group..
  final String stackGroupName;
  /// The status of Stack Group.
  final String status;
  /// The structure that contains the template body.
  final String templateBody;

  /// Creates a new [GetStackGroupsGroup].
  /// [administrationRoleName] The name of the RAM administrator role assumed by ROS.
  /// [description] The description of the stack group.
  /// [executionRoleName] The name of the RAM execution role assumed by the administrator role.
  /// [id] The ID of the Stack Group.
  /// [parameters] The parameters.
  /// [stackGroupId] The id of Stack Group.
  /// [stackGroupName] The name of the stack group..
  /// [status] The status of Stack Group.
  /// [templateBody] The structure that contains the template body.
  GetStackGroupsGroup({
    required this.administrationRoleName,
    required this.description,
    required this.executionRoleName,
    required this.id,
    required this.parameters,
    required this.stackGroupId,
    required this.stackGroupName,
    required this.status,
    required this.templateBody,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'administrationRoleName': administrationRoleName,
      'description': description,
      'executionRoleName': executionRoleName,
      'id': id,
      'parameters': pulumi.Input.encodeList<GetStackGroupsGroupParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'stackGroupId': stackGroupId,
      'stackGroupName': stackGroupName,
      'status': status,
      'templateBody': templateBody,
    };
  }

  factory GetStackGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetStackGroupsGroup(
      administrationRoleName: map['administrationRoleName'] as String,
      description: map['description'] as String,
      executionRoleName: map['executionRoleName'] as String,
      id: map['id'] as String,
      parameters: pulumi.Input.decodeList<GetStackGroupsGroupParameter>(map['parameters'], (value) => GetStackGroupsGroupParameter.fromMap((value as Map).cast<String, dynamic>())),
      stackGroupId: map['stackGroupId'] as String,
      stackGroupName: map['stackGroupName'] as String,
      status: map['status'] as String,
      templateBody: map['templateBody'] as String,
    );
  }
}

