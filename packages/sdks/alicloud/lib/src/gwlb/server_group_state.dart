// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_connection_drain_config.dart';
import 'server_group_health_check_config.dart';
import 'server_group_server.dart';

/// Input properties used for looking up and filtering ServerGroup resources.
class ServerGroupState {
  /// Connected graceful interrupt configuration. See `connection_drain_config` below.
  final pulumi.Input<ServerGroupConnectionDrainConfig>? connectionDrainConfig;
  /// The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  final pulumi.Input<String>? createTime;
  /// Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  final pulumi.Input<bool>? dryRun;
  /// Health check configurations. See `health_check_config` below.
  final pulumi.Input<ServerGroupHealthCheckConfig>? healthCheckConfig;
  /// The backend protocol. Valid values:
  ///
  /// - `GENEVE`(default)
  final pulumi.Input<String>? protocol;
  /// The ID of the resource group.
  final pulumi.Input<String>? resourceGroupId;
  /// The scheduling algorithm. Valid values:
  ///
  /// - `5TCH` (default): specifies consistent hashing that is based on the following factors: source IP address, destination IP address, source port, protocol, and destination port. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  /// - `3TCH`: specifies consistent hashing that is based on the following factors: source IP address, destination IP address, and protocol. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  /// - `2TCH`: specifies consistent hashing that is based on the following factors: source IP address and destination IP address. Requests that contain the same information based on the preceding factors are forwarded to the same backend server.
  final pulumi.Input<String>? scheduler;
  /// The server group name.
  ///
  /// The name must be 2 to 128 characters in length, and can contain digits, periods (.), underscores (\_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? serverGroupName;
  /// The type of server group. Valid values:
  ///
  /// - `Instance` (default): allows you to specify servers of the `Ecs`, `Eni`, or `Eci` type.
  /// - `Ip`: allows you to add servers of by specifying IP addresses.
  final pulumi.Input<String>? serverGroupType;
  /// The backend servers that you want to remove.
  ///
  /// > **NOTE:**  You can remove at most 200 backend servers in each call.
  /// See `servers` below.
  final pulumi.Input<List<ServerGroupServer>>? servers;
  /// Indicates the status of the backend server.
  final pulumi.Input<String>? status;
  /// The tag keys.
  ///
  /// You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;
  /// The VPC ID.
  ///
  /// > **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ServerGroupState].
  /// [connectionDrainConfig] Connected graceful interrupt configuration. See `connection_drain_config` below.
  /// [createTime] The time when the resource was created. The time follows the ISO 8601 standard in the **yyyy-MM-ddTHH:mm:ssZ** format. The time is displayed in UTC.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [healthCheckConfig] Health check configurations. See `health_check_config` below.
  /// [protocol] The backend protocol. Valid values:
  /// [resourceGroupId] The ID of the resource group.
  /// [scheduler] The scheduling algorithm. Valid values:
  /// [serverGroupName] The server group name.
  /// [serverGroupType] The type of server group. Valid values:
  /// [servers] The backend servers that you want to remove.
  /// [status] Indicates the status of the backend server.
  /// [tags] The tag keys.
  /// [vpcId] The VPC ID.
  ServerGroupState({
    this.connectionDrainConfig,
    this.createTime,
    this.dryRun,
    this.healthCheckConfig,
    this.protocol,
    this.resourceGroupId,
    this.scheduler,
    this.serverGroupName,
    this.serverGroupType,
    this.servers,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDrainConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupConnectionDrainConfig, Map<String, dynamic>>(connectionDrainConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'dryRun': ?dryRun,
      'healthCheckConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'protocol': ?protocol,
      'resourceGroupId': ?resourceGroupId,
      'scheduler': ?scheduler,
      'serverGroupName': ?serverGroupName,
      'serverGroupType': ?serverGroupType,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory ServerGroupState.fromMap(Map<String, dynamic> map) {
    return ServerGroupState(
      connectionDrainConfig: map['connectionDrainConfig'] == null ? null : (ServerGroupConnectionDrainConfig.fromMap((map['connectionDrainConfig'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      healthCheckConfig: map['healthCheckConfig'] == null ? null : (ServerGroupHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>())).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler'] as String).input(),
      serverGroupName: map['serverGroupName'] == null ? null : (map['serverGroupName'] as String).input(),
      serverGroupType: map['serverGroupType'] == null ? null : (map['serverGroupType'] as String).input(),
      servers: map['servers'] == null ? null : (pulumi.Input.decodeList<ServerGroupServer>(map['servers'], (value) => ServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

