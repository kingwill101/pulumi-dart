// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_target_group.dart';

class ListenerDefaultActionForward {
  /// One or more target group blocks.
  final pulumi.Input<List<ListenerDefaultActionForwardTargetGroup>>? targetGroups;

  /// Creates a new [ListenerDefaultActionForward].
  /// [targetGroups] One or more target group blocks.
  ListenerDefaultActionForward({
    this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroups': ?pulumi.Input.mapOptionalInputValue<List<ListenerDefaultActionForwardTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<ListenerDefaultActionForwardTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward(
      targetGroups: (() { final guardedValue = map['targetGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ListenerDefaultActionForwardTargetGroup>(guardedValue, (value) => ListenerDefaultActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

