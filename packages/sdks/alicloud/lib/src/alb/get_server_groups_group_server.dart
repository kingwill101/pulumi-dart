// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServerGroupsGroupServer {
  /// The description of the server.
  final pulumi.Input<String> description;
  /// The port that is used by the server.
  final pulumi.Input<int> port;
  /// The ID of the ECS instance, ENI instance or ECI instance.
  final pulumi.Input<String> serverId;
  /// The IP address of the ENI instance when it is in the inclusive ENI mode.
  final pulumi.Input<String> serverIp;
  /// The type of the server. The type of the server.
  final pulumi.Input<String> serverType;
  /// The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  final pulumi.Input<String> status;
  /// The weight of the server.
  final pulumi.Input<int> weight;

  /// Creates a new [GetServerGroupsGroupServer].
  /// [description] The description of the server.
  /// [port] The port that is used by the server.
  /// [serverId] The ID of the ECS instance, ENI instance or ECI instance.
  /// [serverIp] The IP address of the ENI instance when it is in the inclusive ENI mode.
  /// [serverType] The type of the server. The type of the server.
  /// [status] The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  /// [weight] The weight of the server.
  GetServerGroupsGroupServer({
    required this.description,
    required this.port,
    required this.serverId,
    required this.serverIp,
    required this.serverType,
    required this.status,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'port': port,
      'serverId': serverId,
      'serverIp': serverIp,
      'serverType': serverType,
      'status': status,
      'weight': weight,
    };
  }

  factory GetServerGroupsGroupServer.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroupServer(
      description: (map['description'] as String).input(),
      port: (map['port'] as int).input(),
      serverId: (map['serverId'] as String).input(),
      serverIp: (map['serverIp'] as String).input(),
      serverType: (map['serverType'] as String).input(),
      status: (map['status'] as String).input(),
      weight: (map['weight'] as int).input(),
    );
  }
}

