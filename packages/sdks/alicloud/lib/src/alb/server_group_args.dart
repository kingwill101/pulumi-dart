// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_connection_drain_config.dart';
import 'server_group_health_check_config.dart';
import 'server_group_server.dart';
import 'server_group_slow_start_config.dart';
import 'server_group_sticky_session_config.dart';
import 'server_group_uch_config.dart';

/// {@template pulumi_alb_server_group_server_group_args_doc}
/// The set of arguments for ServerGroup.
/// {@endtemplate}
/// {@macro pulumi_alb_server_group_server_group_args_doc}
class ServerGroupArgs {
  /// Elegant interrupt configuration. See `connection_drain_config` below.
  final pulumi.Input<ServerGroupConnectionDrainConfig>? connectionDrainConfig;
  /// Indicates whether cross-zone load balancing is enabled for the server group. Valid values:
  final pulumi.Input<bool>? crossZoneEnabled;
  /// Whether to PreCheck only this request. Value:
  /// true: Send a check request,
  /// false (default): Send a normal request.
  final pulumi.Input<bool>? dryRun;
  /// The configuration of health checks See `health_check_config` below.
  final pulumi.Input<ServerGroupHealthCheckConfig> healthCheckConfig;
  /// The ID of the resource group to which you want to transfer the cloud resource.
  ///
  /// &gt; **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
  final pulumi.Input<String>? healthCheckTemplateId;
  /// Enable Ipv6
  final pulumi.Input<bool>? ipv6Enabled;
  /// The backend protocol. Valid values:
  ///
  /// *   `HTTP`: allows you to associate an HTTPS, HTTP, or QUIC listener with the server group. This is the default value.
  ///
  /// *   `HTTPS`: allows you to associate HTTPS listeners with backend servers.
  ///
  /// *   `gRPC`: allows you to associate an HTTPS or QUIC listener with the server group.
  ///
  /// &gt; **NOTE:**   You do not need to specify a backend protocol if you set `ServerGroupType` to `Fc`.
  final pulumi.Input<String>? protocol;
  /// Elegant interrupt configuration.
  final pulumi.Input<String>? resourceGroupId;
  /// The scheduling algorithm. Valid values:
  ///
  /// *   `Wrr` (default): The weighted round-robin algorithm is used. Backend servers that have higher weights receive more requests than those that have lower weights.
  ///
  /// *   `Wlc`: The weighted least connections algorithm is used. Requests are distributed based on the weights and the number of connections to backend servers. If two backend servers have the same weight, the backend server that has fewer connections is expected to receive more requests.
  ///
  /// *   `Sch`: The consistent hashing algorithm is used. Requests from the same source IP address are distributed to the same backend server.
  ///
  /// &gt; **NOTE:**  This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
  final pulumi.Input<String>? scheduler;
  /// The name of the server group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String> serverGroupName;
  /// The type of server group. Valid values:
  ///
  /// - `Instance` (default): allows you to add servers by specifying `Ecs`, `Eni`, or `Eci`.
  /// - `Ip`: allows you to add servers by specifying IP addresses.
  /// - `Fc`: allows you to add servers by specifying functions of Function Compute.
  final pulumi.Input<String>? serverGroupType;
  /// List of servers. See `servers` below.
  final pulumi.Input<List<ServerGroupServer>>? servers;
  /// Only applicable to the ALB Ingress scenario, indicating the K8s Service name corresponding to the server group.
  final pulumi.Input<String>? serviceName;
  /// Slow start configuration. See `slow_start_config` below.
  final pulumi.Input<ServerGroupSlowStartConfig>? slowStartConfig;
  /// The configuration of health checks See `sticky_session_config` below.
  final pulumi.Input<ServerGroupStickySessionConfig>? stickySessionConfig;
  /// The creation time of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// Url consistency hash parameter configuration See `uch_config` below.
  final pulumi.Input<ServerGroupUchConfig>? uchConfig;
  /// Specifies whether to enable persistent TCP connections.
  final pulumi.Input<bool>? upstreamKeepaliveEnabled;
  /// The ID of the virtual private cloud (VPC). You can add only servers that are deployed in the specified VPC to the server group.
  ///
  /// &gt; **NOTE:**   This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ServerGroupArgs].
  /// [connectionDrainConfig] Elegant interrupt configuration. See `connection_drain_config` below.
  /// [crossZoneEnabled] Indicates whether cross-zone load balancing is enabled for the server group. Valid values:
  /// [dryRun] Whether to PreCheck only this request. Value:
  /// [healthCheckConfig] The configuration of health checks See `health_check_config` below.
  /// [healthCheckTemplateId] The ID of the resource group to which you want to transfer the cloud resource.
  /// [ipv6Enabled] Enable Ipv6
  /// [protocol] The backend protocol. Valid values:
  /// [resourceGroupId] Elegant interrupt configuration.
  /// [scheduler] The scheduling algorithm. Valid values:
  /// [serverGroupName] The name of the server group. The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  /// [serverGroupType] The type of server group. Valid values:
  /// [servers] List of servers. See `servers` below.
  /// [serviceName] Only applicable to the ALB Ingress scenario, indicating the K8s Service name corresponding to the server group.
  /// [slowStartConfig] Slow start configuration. See `slow_start_config` below.
  /// [stickySessionConfig] The configuration of health checks See `sticky_session_config` below.
  /// [tags] The creation time of the resource
  /// [uchConfig] Url consistency hash parameter configuration See `uch_config` below.
  /// [upstreamKeepaliveEnabled] Specifies whether to enable persistent TCP connections.
  /// [vpcId] The ID of the virtual private cloud (VPC). You can add only servers that are deployed in the specified VPC to the server group.
  const ServerGroupArgs({
    this.connectionDrainConfig,
    this.crossZoneEnabled,
    this.dryRun,
    required this.healthCheckConfig,
    this.healthCheckTemplateId,
    this.ipv6Enabled,
    this.protocol,
    this.resourceGroupId,
    this.scheduler,
    required this.serverGroupName,
    this.serverGroupType,
    this.servers,
    this.serviceName,
    this.slowStartConfig,
    this.stickySessionConfig,
    this.tags,
    this.uchConfig,
    this.upstreamKeepaliveEnabled,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionDrainConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupConnectionDrainConfig, Map<String, dynamic>>(connectionDrainConfig, (value) => value.toMap()),
      'crossZoneEnabled': ?crossZoneEnabled,
      'dryRun': ?dryRun,
      'healthCheckConfig': pulumi.Input.mapInputValue<ServerGroupHealthCheckConfig, Map<String, dynamic>>(healthCheckConfig, (value) => value.toMap()),
      'healthCheckTemplateId': ?healthCheckTemplateId,
      'ipv6Enabled': ?ipv6Enabled,
      'protocol': ?protocol,
      'resourceGroupId': ?resourceGroupId,
      'scheduler': ?scheduler,
      'serverGroupName': serverGroupName,
      'serverGroupType': ?serverGroupType,
      'servers': ?pulumi.Input.mapOptionalInputValue<List<ServerGroupServer>, List<Map<String, dynamic>>>(servers, (value) => pulumi.Input.encodeList<ServerGroupServer, Map<String, dynamic>>(value, (value) => value.toMap())),
      'serviceName': ?serviceName,
      'slowStartConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupSlowStartConfig, Map<String, dynamic>>(slowStartConfig, (value) => value.toMap()),
      'stickySessionConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupStickySessionConfig, Map<String, dynamic>>(stickySessionConfig, (value) => value.toMap()),
      'tags': ?tags,
      'uchConfig': ?pulumi.Input.mapOptionalInputValue<ServerGroupUchConfig, Map<String, dynamic>>(uchConfig, (value) => value.toMap()),
      'upstreamKeepaliveEnabled': ?upstreamKeepaliveEnabled,
      'vpcId': ?vpcId,
    };
  }

  factory ServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupArgs(
      connectionDrainConfig: (() { final guardedValue = map['connectionDrainConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupConnectionDrainConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      crossZoneEnabled: (() { final guardedValue = map['crossZoneEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dryRun: (() { final guardedValue = map['dryRun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      healthCheckConfig: pulumi.Input.fromValue(ServerGroupHealthCheckConfig.fromMap((map['healthCheckConfig']! as Map).cast<String, dynamic>())),
      healthCheckTemplateId: (() { final guardedValue = map['healthCheckTemplateId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Enabled: (() { final guardedValue = map['ipv6Enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverGroupName: pulumi.Input.fromValue(map['serverGroupName'] as String),
      serverGroupType: (() { final guardedValue = map['serverGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      servers: (() { final guardedValue = map['servers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ServerGroupServer>(guardedValue, (value) => ServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      slowStartConfig: (() { final guardedValue = map['slowStartConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupSlowStartConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      stickySessionConfig: (() { final guardedValue = map['stickySessionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupStickySessionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      uchConfig: (() { final guardedValue = map['uchConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupUchConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      upstreamKeepaliveEnabled: (() { final guardedValue = map['upstreamKeepaliveEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

