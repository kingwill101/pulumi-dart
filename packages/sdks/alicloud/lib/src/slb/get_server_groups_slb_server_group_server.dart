// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupsSlbServerGroupServer {
  /// ID of the attached ECS instance.
  final String instanceId;
  /// Weight associated to the ECS instance.
  final int weight;

  /// Creates a new [GetServerGroupsSlbServerGroupServer].
  /// [instanceId] ID of the attached ECS instance.
  /// [weight] Weight associated to the ECS instance.
  GetServerGroupsSlbServerGroupServer({
    required this.instanceId,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'weight': weight,
    };
  }

  factory GetServerGroupsSlbServerGroupServer.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsSlbServerGroupServer(
      instanceId: map['instanceId'] as String,
      weight: map['weight'] as int,
    );
  }
}

