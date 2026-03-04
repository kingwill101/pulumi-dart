// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_slb_server_group_server.dart';

class GetServerGroupsSlbServerGroup {
  /// VServer group ID.
  final pulumi.Input<String> id;

  /// VServer group name.
  final pulumi.Input<String> name;

  /// ECS instances associated to the group. Each element contains the following attributes:
  final pulumi.Input<List<GetServerGroupsSlbServerGroupServer>> servers;

  /// Creates a new [GetServerGroupsSlbServerGroup].
  /// [id] VServer group ID.
  /// [name] VServer group name.
  /// [servers] ECS instances associated to the group. Each element contains the following attributes:
  GetServerGroupsSlbServerGroup({
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
            List<GetServerGroupsSlbServerGroupServer>,
            List<Map<String, dynamic>>
          >(
            servers,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerGroupsSlbServerGroupServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetServerGroupsSlbServerGroup.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsSlbServerGroup(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      servers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerGroupsSlbServerGroupServer>(
          map['servers']!,
          (value) => GetServerGroupsSlbServerGroupServer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
