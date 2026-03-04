// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_default_action_forward_group_config.dart';

class GetListenersListenerDefaultAction {
  /// The configuration of the forwarding rule action. This parameter is required if the Type parameter is set to FowardGroup.
  final pulumi.Input<List<GetListenersListenerDefaultActionForwardGroupConfig>>
  forwardGroupConfigs;

  /// Action Type. The value is set to ForwardGroup. It indicates that requests are forwarded to multiple vServer groups.
  final pulumi.Input<String> type;

  /// Creates a new [GetListenersListenerDefaultAction].
  /// [forwardGroupConfigs] The configuration of the forwarding rule action. This parameter is required if the Type parameter is set to FowardGroup.
  /// [type] Action Type. The value is set to ForwardGroup. It indicates that requests are forwarded to multiple vServer groups.
  GetListenersListenerDefaultAction({
    required this.forwardGroupConfigs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forwardGroupConfigs':
          pulumi.Input.mapInputValue<
            List<GetListenersListenerDefaultActionForwardGroupConfig>,
            List<Map<String, dynamic>>
          >(
            forwardGroupConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetListenersListenerDefaultActionForwardGroupConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
    };
  }

  factory GetListenersListenerDefaultAction.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerDefaultAction(
      forwardGroupConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetListenersListenerDefaultActionForwardGroupConfig
        >(
          map['forwardGroupConfigs']!,
          (value) =>
              GetListenersListenerDefaultActionForwardGroupConfig.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
