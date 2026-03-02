// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_stack_groups_group_parameter.dart';

class GetStackGroupsGroup {
  /// The name of the RAM administrator role assumed by ROS.
  final pulumi.Input<String> administrationRoleName;
  /// The description of the stack group.
  final pulumi.Input<String> description;
  /// The name of the RAM execution role assumed by the administrator role.
  final pulumi.Input<String> executionRoleName;
  /// The ID of the Stack Group.
  final pulumi.Input<String> id;
  /// The parameters.
  final pulumi.Input<List<GetStackGroupsGroupParameter>> parameters;
  /// The id of Stack Group.
  final pulumi.Input<String> stackGroupId;
  /// The name of the stack group..
  final pulumi.Input<String> stackGroupName;
  /// The status of Stack Group.
  final pulumi.Input<String> status;
  /// The structure that contains the template body.
  final pulumi.Input<String> templateBody;

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
      'parameters': pulumi.Input.mapInputValue<List<GetStackGroupsGroupParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<GetStackGroupsGroupParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'stackGroupId': stackGroupId,
      'stackGroupName': stackGroupName,
      'status': status,
      'templateBody': templateBody,
    };
  }

  factory GetStackGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetStackGroupsGroup(
      administrationRoleName: (map['administrationRoleName'] as String).input(),
      description: (map['description'] as String).input(),
      executionRoleName: (map['executionRoleName'] as String).input(),
      id: (map['id'] as String).input(),
      parameters: (pulumi.Input.decodeList<GetStackGroupsGroupParameter>(map['parameters'], (value) => GetStackGroupsGroupParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      stackGroupId: (map['stackGroupId'] as String).input(),
      stackGroupName: (map['stackGroupName'] as String).input(),
      status: (map['status'] as String).input(),
      templateBody: (map['templateBody'] as String).input(),
    );
  }
}

