// ignore_for_file: unused_element, unnecessary_cast


class GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple {
  /// The ID of the destination server group to which requests are forwarded.
  final String serverGroupId;

  /// Creates a new [GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] The ID of the destination server group to which requests are forwarded.
  GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': serverGroupId,
    };
  }

  factory GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerDefaultActionForwardGroupConfigServerGroupTuple(
      serverGroupId: map['serverGroupId'] as String,
    );
  }
}

