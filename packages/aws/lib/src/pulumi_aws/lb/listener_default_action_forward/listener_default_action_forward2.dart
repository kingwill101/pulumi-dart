// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../listener_default_action_forward_stickiness/listener_default_action_forward_stickiness2.dart';
import '../listener_default_action_forward_target_group/listener_default_action_forward_target_group2.dart';

class ListenerDefaultActionForward2 {
  /// Configuration block for target group stickiness for the rule. See below.
  final ListenerDefaultActionForwardStickiness2? stickiness;

  /// Set of 1-5 target group blocks. See below.
  ///
  /// The following arguments are optional:
  final List<ListenerDefaultActionForwardTargetGroup2> targetGroups;

  ListenerDefaultActionForward2({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final stickinessValue = stickiness;
    if (stickinessValue != null) {
      map['stickiness'] = stickinessValue.toMap();
    }
    map['targetGroups'] = Input.encodeList<
        ListenerDefaultActionForwardTargetGroup2,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerDefaultActionForward2.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward2(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerDefaultActionForwardStickiness2.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups: Input.decodeList<ListenerDefaultActionForwardTargetGroup2>(
          map['targetGroups'],
          (value) => ListenerDefaultActionForwardTargetGroup2.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
