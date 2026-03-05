// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listeners_listener_default_action_forward_group_config_server_group_tuple.dart';

class GetListenersListenerDefaultActionForwardGroupConfig {
  /// The destination server group to which requests are forwarded.
  final pulumi.Input<List<GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple>> serverGroupTuples;

  /// Creates a new [GetListenersListenerDefaultActionForwardGroupConfig].
  /// [serverGroupTuples] The destination server group to which requests are forwarded.
  GetListenersListenerDefaultActionForwardGroupConfig({
    required this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': pulumi.Input.mapInputValue<List<GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetListenersListenerDefaultActionForwardGroupConfig.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerDefaultActionForwardGroupConfig(
      serverGroupTuples: pulumi.Input.fromValue(pulumi.Input.decodeList<GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple>(map['serverGroupTuples']!, (value) => GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

