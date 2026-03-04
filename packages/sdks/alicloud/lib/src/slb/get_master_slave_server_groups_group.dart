// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_master_slave_server_groups_group_server.dart';

class GetMasterSlaveServerGroupsGroup {
  /// master slave server group ID.
  final pulumi.Input<String> id;

  /// master slave server group name.
  final pulumi.Input<String> name;

  /// ECS instances associated to the group. Each element contains the following attributes:
  final pulumi.Input<List<GetMasterSlaveServerGroupsGroupServer>> servers;

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
      'servers':
          pulumi.Input.mapInputValue<
            List<GetMasterSlaveServerGroupsGroupServer>,
            List<Map<String, dynamic>>
          >(
            servers,
            (value) =>
                pulumi.Input.encodeList<
                  GetMasterSlaveServerGroupsGroupServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetMasterSlaveServerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetMasterSlaveServerGroupsGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      servers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetMasterSlaveServerGroupsGroupServer>(
          map['servers']!,
          (value) => GetMasterSlaveServerGroupsGroupServer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
