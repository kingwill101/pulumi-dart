// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_stickiness.dart';
import 'listener_default_action_forward_target_group.dart';

class ListenerDefaultActionForward {
  /// Configuration block for target group stickiness for the rule. See below.
  final pulumi.Input<ListenerDefaultActionForwardStickiness>? stickiness;
  /// Set of 1-5 target group blocks. See below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<List<ListenerDefaultActionForwardTargetGroup>> targetGroups;

  /// Creates a new [ListenerDefaultActionForward].
  /// [stickiness] Configuration block for target group stickiness for the rule. See below.
  /// [targetGroups] Set of 1-5 target group blocks. See below.
  ListenerDefaultActionForward({
    this.stickiness,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stickiness': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionForwardStickiness, Map<String, dynamic>>(stickiness, (value) => value.toMap()),
      'targetGroups': pulumi.Input.mapInputValue<List<ListenerDefaultActionForwardTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<ListenerDefaultActionForwardTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward(
      stickiness: map['stickiness'] == null ? null : ((ListenerDefaultActionForwardStickiness.fromMap((map['stickiness']! as Map).cast<String, dynamic>())).input()).input(),
      targetGroups: (pulumi.Input.decodeList<ListenerDefaultActionForwardTargetGroup>(map['targetGroups']!, (value) => ListenerDefaultActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

