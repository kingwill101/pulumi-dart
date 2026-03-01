// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group_health_check_config.dart';
import 'get_server_groups_group_server.dart';
import 'get_server_groups_group_sticky_session_config.dart';

class GetServerGroupsGroup {
  /// The configuration of health checks. **Note:** `health_check_config` takes effect only if `enable_details` is set to `true`.
  final List<GetServerGroupsGroupHealthCheckConfig> healthCheckConfigs;
  /// The ID of the Server Group.
  final String id;
  /// The backend protocol.
  final String protocol;
  /// The scheduling algorithm.
  final String scheduler;
  /// The ID of the Server Group.
  final String serverGroupId;
  /// The names of the Server Group.
  final String serverGroupName;
  /// The backend server. **Note:** `servers` takes effect only if `enable_details` is set to `true`.
  final List<GetServerGroupsGroupServer> servers;
  /// The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  final String status;
  /// The configuration of the sticky session. **Note:** `sticky_session_config` takes effect only if `enable_details` is set to `true`.
  final List<GetServerGroupsGroupStickySessionConfig> stickySessionConfigs;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The ID of the virtual private cloud (VPC).
  final String vpcId;

  /// Creates a new [GetServerGroupsGroup].
  /// [healthCheckConfigs] The configuration of health checks. **Note:** `health_check_config` takes effect only if `enable_details` is set to `true`.
  /// [id] The ID of the Server Group.
  /// [protocol] The backend protocol.
  /// [scheduler] The scheduling algorithm.
  /// [serverGroupId] The ID of the Server Group.
  /// [serverGroupName] The names of the Server Group.
  /// [servers] The backend server. **Note:** `servers` takes effect only if `enable_details` is set to `true`.
  /// [status] The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  /// [stickySessionConfigs] The configuration of the sticky session. **Note:** `sticky_session_config` takes effect only if `enable_details` is set to `true`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] The ID of the virtual private cloud (VPC).
  GetServerGroupsGroup({
    required this.healthCheckConfigs,
    required this.id,
    required this.protocol,
    required this.scheduler,
    required this.serverGroupId,
    required this.serverGroupName,
    required this.servers,
    required this.status,
    required this.stickySessionConfigs,
    required this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'healthCheckConfigs': pulumi.Input.encodeList<GetServerGroupsGroupHealthCheckConfig, Map<String, dynamic>>(healthCheckConfigs, (value) => value.toMap()),
      'id': id,
      'protocol': protocol,
      'scheduler': scheduler,
      'serverGroupId': serverGroupId,
      'serverGroupName': serverGroupName,
      'servers': pulumi.Input.encodeList<GetServerGroupsGroupServer, Map<String, dynamic>>(servers, (value) => value.toMap()),
      'status': status,
      'stickySessionConfigs': pulumi.Input.encodeList<GetServerGroupsGroupStickySessionConfig, Map<String, dynamic>>(stickySessionConfigs, (value) => value.toMap()),
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetServerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroup(
      healthCheckConfigs: pulumi.Input.decodeList<GetServerGroupsGroupHealthCheckConfig>(map['healthCheckConfigs'], (value) => GetServerGroupsGroupHealthCheckConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      protocol: map['protocol'] as String,
      scheduler: map['scheduler'] as String,
      serverGroupId: map['serverGroupId'] as String,
      serverGroupName: map['serverGroupName'] as String,
      servers: pulumi.Input.decodeList<GetServerGroupsGroupServer>(map['servers'], (value) => GetServerGroupsGroupServer.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      stickySessionConfigs: pulumi.Input.decodeList<GetServerGroupsGroupStickySessionConfig>(map['stickySessionConfigs'], (value) => GetServerGroupsGroupStickySessionConfig.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
    );
  }
}

