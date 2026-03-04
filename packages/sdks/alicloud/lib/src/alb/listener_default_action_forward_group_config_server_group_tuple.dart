// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerDefaultActionForwardGroupConfigServerGroupTuple {
  /// Forwarded to the Destination Server Group ID
  final pulumi.Input<String> serverGroupId;

  /// Creates a new [ListenerDefaultActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] Forwarded to the Destination Server Group ID
  ListenerDefaultActionForwardGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serverGroupId': serverGroupId};
  }

  factory ListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListenerDefaultActionForwardGroupConfigServerGroupTuple(
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
    );
  }
}
