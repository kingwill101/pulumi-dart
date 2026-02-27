// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../listener_default_action_forward_stickiness/listener_default_action_forward_stickiness_lb.dart';
import '../listener_default_action_forward_target_group/listener_default_action_forward_target_group_lb.dart';

class ListenerDefaultActionForwardLb {
  /// Configuration block for target group stickiness for the rule. See below.
  final ListenerDefaultActionForwardStickinessLb? stickiness;

  /// Set of 1-5 target group blocks. See below.
  ///
  /// The following arguments are optional:
  final List<ListenerDefaultActionForwardTargetGroupLb> targetGroups;

  ListenerDefaultActionForwardLb({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue.toMap();
    }
    map['targetGroups'] = pulumi.Input.encodeList<
        ListenerDefaultActionForwardTargetGroupLb,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerDefaultActionForwardLb.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardLb(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerDefaultActionForwardStickinessLb.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups:
          pulumi.Input.decodeList<ListenerDefaultActionForwardTargetGroupLb>(
              map['targetGroups'],
              (value) => ListenerDefaultActionForwardTargetGroupLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
