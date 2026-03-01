// ignore_for_file: unused_element, unnecessary_cast


class GetMasterSlaveServerGroupsGroupServer {
  /// ID of the attached ECS instance.
  final String instanceId;
  /// (Removed from v1.63.0) Determine if the server is executing.
  final int isBackup;
  /// The port used by the master slave server group.
  final int port;
  /// The server type of the attached ECS instance.
  final String serverType;
  /// Weight associated to the ECS instance.
  final int weight;

  /// Creates a new [GetMasterSlaveServerGroupsGroupServer].
  /// [instanceId] ID of the attached ECS instance.
  /// [isBackup] (Removed from v1.63.0) Determine if the server is executing.
  /// [port] The port used by the master slave server group.
  /// [serverType] The server type of the attached ECS instance.
  /// [weight] Weight associated to the ECS instance.
  GetMasterSlaveServerGroupsGroupServer({
    required this.instanceId,
    required this.isBackup,
    required this.port,
    required this.serverType,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceId': instanceId,
      'isBackup': isBackup,
      'port': port,
      'serverType': serverType,
      'weight': weight,
    };
  }

  factory GetMasterSlaveServerGroupsGroupServer.fromMap(Map<String, dynamic> map) {
    return GetMasterSlaveServerGroupsGroupServer(
      instanceId: map['instanceId'] as String,
      isBackup: map['isBackup'] as int,
      port: map['port'] as int,
      serverType: map['serverType'] as String,
      weight: map['weight'] as int,
    );
  }
}

