// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'listener_default_action_forward_group_config_server_group_tuple.dart';

class ListenerDefaultActionForwardGroupConfig {
  /// The Forwarding Destination Server Group See `server_group_tuples` below.
  final pulumi.Input<List<ListenerDefaultActionForwardGroupConfigServerGroupTuple>> serverGroupTuples;

  /// Creates a new [ListenerDefaultActionForwardGroupConfig].
  /// [serverGroupTuples] The Forwarding Destination Server Group See `server_group_tuples` below.
  ListenerDefaultActionForwardGroupConfig({
    required this.serverGroupTuples,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupTuples': pulumi.Input.mapInputValue<List<ListenerDefaultActionForwardGroupConfigServerGroupTuple>, List<Map<String, dynamic>>>(serverGroupTuples, (value) => pulumi.Input.encodeList<ListenerDefaultActionForwardGroupConfigServerGroupTuple, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ListenerDefaultActionForwardGroupConfig.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardGroupConfig(
      serverGroupTuples: (pulumi.Input.decodeList<ListenerDefaultActionForwardGroupConfigServerGroupTuple>(map['serverGroupTuples'], (value) => ListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

