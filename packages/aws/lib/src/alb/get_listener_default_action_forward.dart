// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action_forward_stickiness.dart';
import 'get_listener_default_action_forward_target_group.dart';

class GetListenerDefaultActionForward {
  final List<GetListenerDefaultActionForwardStickiness> stickinesses;
  final List<GetListenerDefaultActionForwardTargetGroup> targetGroups;

  /// Creates a new [GetListenerDefaultActionForward].
  /// [stickinesses] Required.
  /// [targetGroups] Required.
  GetListenerDefaultActionForward({
    required this.stickinesses,
    required this.targetGroups,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'stickinesses':
          pulumi.Input.encodeList<
            GetListenerDefaultActionForwardStickiness,
            Map<String, dynamic>
          >(stickinesses, (value) => value.toMap()),
      'targetGroups':
          pulumi.Input.encodeList<
            GetListenerDefaultActionForwardTargetGroup,
            Map<String, dynamic>
          >(targetGroups, (value) => value.toMap()),
    };
  }

  factory GetListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return GetListenerDefaultActionForward(
      stickinesses:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardStickiness>(
            map['stickinesses'],
            (value) => GetListenerDefaultActionForwardStickiness.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      targetGroups:
          pulumi.Input.decodeList<GetListenerDefaultActionForwardTargetGroup>(
            map['targetGroups'],
            (value) => GetListenerDefaultActionForwardTargetGroup.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
