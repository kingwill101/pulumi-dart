// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action_forward_target_group/listener_default_action_forward_target_group_vpclattice.dart';

class ListenerDefaultActionForwardVpclattice {
  /// One or more target group blocks.
  final List<ListenerDefaultActionForwardTargetGroupVpclattice>? targetGroups;

  ListenerDefaultActionForwardVpclattice({
    this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final targetGroupsValue = targetGroups;
    if (targetGroupsValue != null) {
      map['targetGroups'] = pulumi.Input.encodeList<
          ListenerDefaultActionForwardTargetGroupVpclattice,
          Map<String, dynamic>>(targetGroupsValue, (value) => value.toMap());
    }
    return map;
  }

  factory ListenerDefaultActionForwardVpclattice.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionForwardVpclattice(
      targetGroups: map['targetGroups'] == null
          ? null
          : pulumi.Input.decodeList<
                  ListenerDefaultActionForwardTargetGroupVpclattice>(
              map['targetGroups'],
              (value) =>
                  ListenerDefaultActionForwardTargetGroupVpclattice.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
