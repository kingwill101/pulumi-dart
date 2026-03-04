// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final pulumi.Input<String> serverGroupId;

  /// Creates a new [GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'serverGroupId': serverGroupId};
  }

  factory GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple(
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
    );
  }
}
