// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMasterSlaveServerGroupsGroupServer {
  /// ID of the attached ECS instance.
  final pulumi.Input<String> instanceId;
  /// (Removed from v1.63.0) Determine if the server is executing.
  final pulumi.Input<int> isBackup;
  /// The port used by the master slave server group.
  final pulumi.Input<int> port;
  /// The server type of the attached ECS instance.
  final pulumi.Input<String> serverType;
  /// Weight associated to the ECS instance.
  final pulumi.Input<int> weight;

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
      instanceId: (map['instanceId'] as String).input(),
      isBackup: (map['isBackup'] as int).input(),
      port: (map['port'] as int).input(),
      serverType: (map['serverType'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

