// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_target_group.dart';

class ListenerDefaultActionForward {
  /// One or more target group blocks.
  final List<ListenerDefaultActionForwardTargetGroup>? targetGroups;

  /// Creates a new [ListenerDefaultActionForward].
  /// [targetGroups] One or more target group blocks.
  ListenerDefaultActionForward({this.targetGroups});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetGroups': ?targetGroups == null
          ? null
          : pulumi.Input.encodeList<
              ListenerDefaultActionForwardTargetGroup,
              Map<String, dynamic>
            >(targetGroups!, (value) => value.toMap()),
    };
  }

  factory ListenerDefaultActionForward.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForward(
      targetGroups: map['targetGroups'] == null
          ? null
          : pulumi.Input.decodeList<ListenerDefaultActionForwardTargetGroup>(
              map['targetGroups'],
              (value) => ListenerDefaultActionForwardTargetGroup.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
