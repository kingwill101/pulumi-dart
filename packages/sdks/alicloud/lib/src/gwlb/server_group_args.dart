// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_connection_drain_config.dart';
import 'server_group_health_check_config.dart';
import 'server_group_server.dart';

/// {@template pulumi_gwlb_server_group_server_group_args_doc}
/// The set of arguments for ServerGroup.
/// {@endtemplate}
/// {@macro pulumi_gwlb_server_group_server_group_args_doc}
class ServerGroupArgs {
  /// Connected graceful interrupt configuration. See `connection_drain_config` below.
  final pulumi.Input<ServerGroupConnectionDrainConfig>? connectionDrainConfig;

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
  /// &gt; **NOTE:**  You can remove at most 200 backend servers in each call.
  /// See `servers` below.
  final pulumi.Input<List<ServerGroupServer>>? servers;

  /// The tag keys.
  ///
  /// You can specify at most 20 tags in each call.
  final pulumi.Input<Map<String, String>>? tags;

  /// The VPC ID.
  ///
  /// &gt; **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  final pulumi.Input<String> vpcId;

  /// Creates a new [ServerGroupArgs].
  /// [connectionDrainConfig] Connected graceful interrupt configuration. See `connection_drain_config` below.
  /// [dryRun] Specifies whether to perform only a dry run, without performing the actual request. Valid values:
  /// [healthCheckConfig] Health check configurations. See `health_check_config` below.
  /// [protocol] The backend protocol. Valid values:
  /// [resourceGroupId] The ID of the resource group.
  /// [scheduler] The scheduling algorithm. Valid values:
  /// [serverGroupName] The server group name.
  /// [serverGroupType] The type of server group. Valid values:
  /// [servers] The backend servers that you want to remove.
  /// [tags] The tag keys.
  /// [vpcId] The VPC ID.
  ServerGroupArgs({
    this.connectionDrainConfig,
    this.dryRun,
    this.healthCheckConfig,
    this.protocol,
    this.resourceGroupId,
    this.scheduler,
    this.serverGroupName,
    this.serverGroupType,
    this.servers,
    this.tags,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDrainConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServerGroupConnectionDrainConfig,
            Map<String, dynamic>
          >(connectionDrainConfig, (value) => value.toMap()),
      'dryRun': ?dryRun,
      'healthCheckConfig':
          ?pulumi.Input.mapOptionalInputValue<
            ServerGroupHealthCheckConfig,
            Map<String, dynamic>
          >(healthCheckConfig, (value) => value.toMap()),
      'protocol': ?protocol,
      'resourceGroupId': ?resourceGroupId,
      'scheduler': ?scheduler,
      'serverGroupName': ?serverGroupName,
      'serverGroupType': ?serverGroupType,
      'servers':
          ?pulumi.Input.mapOptionalInputValue<
            List<ServerGroupServer>,
            List<Map<String, dynamic>>
          >(
            servers,
            (value) =>
                pulumi.Input.encodeList<
                  ServerGroupServer,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory ServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupArgs(
      connectionDrainConfig: (() {
        final guardedValue = map['connectionDrainConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerGroupConnectionDrainConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dryRun: (() {
        final guardedValue = map['dryRun'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      healthCheckConfig: (() {
        final guardedValue = map['healthCheckConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServerGroupHealthCheckConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scheduler: (() {
        final guardedValue = map['scheduler'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverGroupName: (() {
        final guardedValue = map['serverGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      serverGroupType: (() {
        final guardedValue = map['serverGroupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      servers: (() {
        final guardedValue = map['servers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ServerGroupServer>(
            guardedValue,
            (value) => ServerGroupServer.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
