// ignore_for_file: unused_element, unnecessary_cast


class ListenerDefaultActionForwardGroupConfigServerGroupTuple {
  /// Forwarded to the Destination Server Group ID
  final String serverGroupId;

  /// Creates a new [ListenerDefaultActionForwardGroupConfigServerGroupTuple].
  /// [serverGroupId] Forwarded to the Destination Server Group ID
  ListenerDefaultActionForwardGroupConfigServerGroupTuple({
    required this.serverGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverGroupId': serverGroupId,
    };
  }

  factory ListenerDefaultActionForwardGroupConfigServerGroupTuple.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardGroupConfigServerGroupTuple(
      serverGroupId: map['serverGroupId'] as String,
    );
  }
}

