// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_forward_stickiness/get_listener_default_action_forward_stickiness.dart';
import '../get_listener_default_action_forward_target_group/get_listener_default_action_forward_target_group.dart';

class GetListenerDefaultActionForward {
  final List<GetListenerDefaultActionForwardStickiness> stickinesses;
  final List<GetListenerDefaultActionForwardTargetGroup> targetGroups;

  GetListenerDefaultActionForward({
    required this.stickinesses,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stickinesses'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardStickiness,
        Map<String, dynamic>>(stickinesses, (value) => value.toMap());
    map['targetGroups'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardTargetGroup,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForward(
      stickinesses:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardStickiness>(
              map['stickinesses'],
              (value) => GetListenerDefaultActionForwardStickiness.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetGroups:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardTargetGroup>(
              map['targetGroups'],
              (value) => GetListenerDefaultActionForwardTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
