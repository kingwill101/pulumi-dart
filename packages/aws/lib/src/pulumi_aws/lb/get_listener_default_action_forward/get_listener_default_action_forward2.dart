// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action_forward_stickiness/get_listener_default_action_forward_stickiness2.dart';
import '../get_listener_default_action_forward_target_group/get_listener_default_action_forward_target_group2.dart';

class GetListenerDefaultActionForward2 {
  final List<GetListenerDefaultActionForwardStickiness2> stickinesses;
  final List<GetListenerDefaultActionForwardTargetGroup2> targetGroups;

  GetListenerDefaultActionForward2({
    required this.stickinesses,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stickinesses'] = Input.encodeList<
        GetListenerDefaultActionForwardStickiness2,
        Map<String, dynamic>>(stickinesses, (value) => value.toMap());
    map['targetGroups'] = Input.encodeList<
        GetListenerDefaultActionForwardTargetGroup2,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionForward2.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForward2(
      stickinesses:
          Input.decodeList<GetListenerDefaultActionForwardStickiness2>(
              map['stickinesses'],
              (value) => GetListenerDefaultActionForwardStickiness2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetGroups:
          Input.decodeList<GetListenerDefaultActionForwardTargetGroup2>(
              map['targetGroups'],
              (value) => GetListenerDefaultActionForwardTargetGroup2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
