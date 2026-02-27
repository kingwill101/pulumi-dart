// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action_forward_stickiness/get_listener_default_action_forward_stickiness_lb.dart';
import '../get_listener_default_action_forward_target_group/get_listener_default_action_forward_target_group_lb.dart';

class GetListenerDefaultActionForwardLb {
  final List<GetListenerDefaultActionForwardStickinessLb> stickinesses;
  final List<GetListenerDefaultActionForwardTargetGroupLb> targetGroups;

  GetListenerDefaultActionForwardLb({
    required this.stickinesses,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['stickinesses'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardStickinessLb,
        Map<String, dynamic>>(stickinesses, (value) => value.toMap());
    map['targetGroups'] = pulumi.Input.encodeList<
        GetListenerDefaultActionForwardTargetGroupLb,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory GetListenerDefaultActionForwardLb.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardLb(
      stickinesses:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardStickinessLb>(
              map['stickinesses'],
              (value) => GetListenerDefaultActionForwardStickinessLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      targetGroups:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardTargetGroupLb>(
              map['targetGroups'],
              (value) => GetListenerDefaultActionForwardTargetGroupLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
