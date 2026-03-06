// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_group_config.dart';

class ListenerDefaultAction {
  /// Forwarding Action Configurations See `forward_group_config` below.
  final pulumi.Input<ListenerDefaultActionForwardGroupConfig>? forwardGroupConfig;
  /// The action type. Value: ForwardGroup, indicating forwarding to the server group.
  final pulumi.Input<String> type;

  /// Creates a new [ListenerDefaultAction].
  /// [forwardGroupConfig] Forwarding Action Configurations See `forward_group_config` below.
  /// [type] The action type. Value: ForwardGroup, indicating forwarding to the server group.
  const ListenerDefaultAction({
    this.forwardGroupConfig,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardGroupConfig': ?pulumi.Input.mapOptionalInputValue<ListenerDefaultActionForwardGroupConfig, Map<String, dynamic>>(forwardGroupConfig, (value) => value.toMap()),
      'type': type,
    };
  }

  factory ListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultAction(
      forwardGroupConfig: (() { final guardedValue = map['forwardGroupConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ListenerDefaultActionForwardGroupConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

