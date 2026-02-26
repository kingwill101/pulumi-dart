// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action_forward_target_group/listener_default_action_forward_target_group3.dart';

class ListenerDefaultActionForward3 {
  /// One or more target group blocks.
  final List<ListenerDefaultActionForwardTargetGroup3>? targetGroups;

  ListenerDefaultActionForward3({
    this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetGroupsValue = targetGroups;
    if (targetGroupsValue != null) {
      map['targetGroups'] = Input.encodeList<
          ListenerDefaultActionForwardTargetGroup3,
          Map<String, dynamic>>(targetGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListenerDefaultActionForward3.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward3(
      targetGroups: map['targetGroups'] == null
          ? null
          : Input.decodeList<ListenerDefaultActionForwardTargetGroup3>(
              map['targetGroups'],
              (value) => ListenerDefaultActionForwardTargetGroup3.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
