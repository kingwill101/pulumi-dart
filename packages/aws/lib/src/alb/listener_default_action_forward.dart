// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_stickiness.dart';
import 'listener_default_action_forward_target_group.dart';

class ListenerDefaultActionForward {
  /// Configuration block for target group stickiness for the rule. See below.
  final ListenerDefaultActionForwardStickiness? stickiness;

  /// Set of 1-5 target group blocks. See below.
  ///
  /// The following arguments are optional:
  final List<ListenerDefaultActionForwardTargetGroup> targetGroups;

  /// Creates a new [ListenerDefaultActionForward].
  /// [stickiness] Configuration block for target group stickiness for the rule. See below.
  /// [targetGroups] Set of 1-5 target group blocks. See below.
  ListenerDefaultActionForward({
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
        ListenerDefaultActionForwardTargetGroup,
        Map<String, dynamic>>(targetGroups, (value) => value.toMap());
    return map;
  }

  factory ListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward(
      stickiness: map['stickiness'] == null
          ? null
          : ListenerDefaultActionForwardStickiness.fromMap(
              (map['stickiness'] as Map).cast<String, dynamic>()),
      targetGroups:
          pulumi.Input.decodeList<ListenerDefaultActionForwardTargetGroup>(
              map['targetGroups'],
              (value) => ListenerDefaultActionForwardTargetGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
