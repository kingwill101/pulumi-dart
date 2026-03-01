// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group_response.dart';

/// A list of Activity Log Alert rule actions.
class ActionListResponse {
  /// The list of the Action Groups.
  final List<ActionGroupResponse>? actionGroups;

  /// Creates a new [ActionListResponse].
  /// [actionGroups] The list of the Action Groups.
  ActionListResponse({
    this.actionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups == null ? null : pulumi.Input.encodeList<ActionGroupResponse, Map<String, dynamic>>(actionGroups!, (value) => value.toMap()),
    };
  }

  factory ActionListResponse.fromMap(Map<String, dynamic> map) {
    return ActionListResponse(
      actionGroups: map['actionGroups'] == null ? null : pulumi.Input.decodeList<ActionGroupResponse>(map['actionGroups'], (value) => ActionGroupResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

