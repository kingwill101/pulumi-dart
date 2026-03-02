// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_forward_target_group.dart';

class GetListenerDefaultActionForward {
  final pulumi.Input<List<GetListenerDefaultActionForwardTargetGroup>> targetGroups;

  /// Creates a new [GetListenerDefaultActionForward].
  /// [targetGroups] Required.
  GetListenerDefaultActionForward({
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroups': pulumi.Input.mapInputValue<List<GetListenerDefaultActionForwardTargetGroup>, List<Map<String, dynamic>>>(targetGroups, (value) => pulumi.Input.encodeList<GetListenerDefaultActionForwardTargetGroup, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForward(
      targetGroups: (pulumi.Input.decodeList<GetListenerDefaultActionForwardTargetGroup>(map['targetGroups']!, (value) => GetListenerDefaultActionForwardTargetGroup.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

