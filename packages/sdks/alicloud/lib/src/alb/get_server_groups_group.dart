// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_server_groups_group_health_check_config.dart';
import 'get_server_groups_group_server.dart';
import 'get_server_groups_group_sticky_session_config.dart';

class GetServerGroupsGroup {
  /// The configuration of health checks. **Note:** `health_check_config` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServerGroupsGroupHealthCheckConfig>>
  healthCheckConfigs;

  /// The ID of the Server Group.
  final pulumi.Input<String> id;

  /// The backend protocol.
  final pulumi.Input<String> protocol;

  /// The scheduling algorithm.
  final pulumi.Input<String> scheduler;

  /// The ID of the Server Group.
  final pulumi.Input<String> serverGroupId;

  /// The names of the Server Group.
  final pulumi.Input<String> serverGroupName;

  /// The backend server. **Note:** `servers` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServerGroupsGroupServer>> servers;

  /// The status of the Server Group. Valid values: `Available`, `Configuring`, `Provisioning`.
  final pulumi.Input<String> status;

  /// The configuration of the sticky session. **Note:** `sticky_session_config` takes effect only if `enable_details` is set to `true`.
  final pulumi.Input<List<GetServerGroupsGroupStickySessionConfig>>
  stickySessionConfigs;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The ID of the virtual private cloud (VPC).
  final pulumi.Input<String> vpcId;

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
      'healthCheckConfigs':
          pulumi.Input.mapInputValue<
            List<GetServerGroupsGroupHealthCheckConfig>,
            List<Map<String, dynamic>>
          >(
            healthCheckConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerGroupsGroupHealthCheckConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'id': id,
      'protocol': protocol,
      'scheduler': scheduler,
      'serverGroupId': serverGroupId,
      'serverGroupName': serverGroupName,
      'servers':
          pulumi.Input.mapInputValue<
            List<GetServerGroupsGroupServer>,
            List<Map<String, dynamic>>
          >(
            servers,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerGroupsGroupServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'status': status,
      'stickySessionConfigs':
          pulumi.Input.mapInputValue<
            List<GetServerGroupsGroupStickySessionConfig>,
            List<Map<String, dynamic>>
          >(
            stickySessionConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetServerGroupsGroupStickySessionConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': tags,
      'vpcId': vpcId,
    };
  }

  factory GetServerGroupsGroup.fromMap(Map<String, dynamic> map) {
    return GetServerGroupsGroup(
      healthCheckConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerGroupsGroupHealthCheckConfig>(
          map['healthCheckConfigs']!,
          (value) => GetServerGroupsGroupHealthCheckConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      id: pulumi.Input.fromValue(map['id'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      scheduler: pulumi.Input.fromValue(map['scheduler'] as String),
      serverGroupId: pulumi.Input.fromValue(map['serverGroupId'] as String),
      serverGroupName: pulumi.Input.fromValue(map['serverGroupName'] as String),
      servers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerGroupsGroupServer>(
          map['servers']!,
          (value) => GetServerGroupsGroupServer.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      status: pulumi.Input.fromValue(map['status'] as String),
      stickySessionConfigs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetServerGroupsGroupStickySessionConfig>(
          map['stickySessionConfigs']!,
          (value) => GetServerGroupsGroupStickySessionConfig.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
