// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_master_slave_server_groups_group_server.dart';

class GetMasterSlaveServerGroupsGroup {
  /// master slave server group ID.
  final String id;
  /// master slave server group name.
  final String name;
  /// ECS instances associated to the group. Each element contains the following attributes:
  final List<GetMasterSlaveServerGroupsGroupServer> servers;

  /// Creates a new [GetMasterSlaveServerGroupsGroup].
  /// [id] master slave server group ID.
  /// [name] master slave server group name.
  /// [servers] ECS instances associated to the group. Each element contains the following attributes:
  GetMasterSlaveServerGroupsGroup({
    required this.id,
    required this.name,
    required this.servers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'servers': pulumi.Input.encodeList<GetMasterSlaveServerGroupsGroupServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
    };
  }

  factory GetMasterSlaveServerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetMasterSlaveServerGroupsGroup(
      id: map['id'] as String,
      name: map['name'] as String,
      servers: pulumi.Input.decodeList<GetMasterSlaveServerGroupsGroupServer>(map['servers'], (value) => GetMasterSlaveServerGroupsGroupServer.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

