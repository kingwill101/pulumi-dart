// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_group.dart';

/// A list of Activity Log Alert rule actions.
class ActionList {
  /// The list of the Action Groups.
  final List<ActionGroup>? actionGroups;

  /// Creates a new [ActionList].
  /// [actionGroups] The list of the Action Groups.
  ActionList({
    this.actionGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actionGroups': ?actionGroups == null ? null : pulumi.Input.encodeList<ActionGroup, Map<String, dynamic>>(actionGroups!, (value) => value.toMap()),
    };
  }

  factory ActionList.fromMap(Map<String, dynamic> map) {
    return ActionList(
      actionGroups: map['actionGroups'] == null ? null : pulumi.Input.decodeList<ActionGroup>(map['actionGroups'], (value) => ActionGroup.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

