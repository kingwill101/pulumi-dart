// ignore_for_file: unused_element, unnecessary_cast

import 'listener_default_action_forward_group_config.dart';

class ListenerDefaultAction {
  /// Forwarding Action Configurations See `forward_group_config` below.
  final ListenerDefaultActionForwardGroupConfig? forwardGroupConfig;
  /// The action type. Value: ForwardGroup, indicating forwarding to the server group.
  final String type;

  /// Creates a new [ListenerDefaultAction].
  /// [forwardGroupConfig] Forwarding Action Configurations See `forward_group_config` below.
  /// [type] The action type. Value: ForwardGroup, indicating forwarding to the server group.
  ListenerDefaultAction({
    this.forwardGroupConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardGroupConfig': ?forwardGroupConfig == null ? null : forwardGroupConfig!.toMap(),
      'type': type,
    };
  }

  factory ListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction(
      forwardGroupConfig: map['forwardGroupConfig'] == null ? null : ListenerDefaultActionForwardGroupConfig.fromMap((map['forwardGroupConfig'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

