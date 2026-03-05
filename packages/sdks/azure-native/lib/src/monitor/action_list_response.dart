// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_response.dart';

/// A list of Activity Log Alert rule actions.
class ActionListResponse {
  /// The list of the Action Groups.
  final pulumi.Input<List<ActionGroupResponse>>? actionGroups;

  /// Creates a new [ActionListResponse].
  /// [actionGroups] The list of the Action Groups.
  ActionListResponse({
    this.actionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?pulumi.Input.mapOptionalInputValue<List<ActionGroupResponse>, List<Map<String, dynamic>>>(actionGroups, (value) => pulumi.Input.encodeList<ActionGroupResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ActionListResponse.fromMap(Map<String, dynamic> map) {
    return ActionListResponse(
      actionGroups: (() { final guardedValue = map['actionGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActionGroupResponse>(guardedValue, (value) => ActionGroupResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

