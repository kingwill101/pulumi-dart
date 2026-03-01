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
  /// > **NOTE:**   You can use resource groups to manage resources within your Alibaba Cloud account by group. This helps you resolve issues such as resource grouping and permission management for your Alibaba Cloud account. For more information, see [What is resource management?](https://www.alibabacloud.com/help/en/doc-detail/94475.html)
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
  /// > **NOTE:**   You do not need to specify a backend protocol if you set `ServerGroupType` to `Fc`.
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
  /// > **NOTE:**  This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
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
  /// > **NOTE:**   This parameter takes effect when the `ServerGroupType` parameter is set to `Instance` or `Ip`.
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
  ServerGroupArgs({
    pulumi.Output<ServerGroupConnectionDrainConfig>? connectionDrainConfig,
    pulumi.Output<bool>? crossZoneEnabled,
    pulumi.Output<bool>? dryRun,
    required pulumi.Output<ServerGroupHealthCheckConfig> healthCheckConfig,
    pulumi.Output<String>? healthCheckTemplateId,
    pulumi.Output<bool>? ipv6Enabled,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scheduler,
    required pulumi.Output<String> serverGroupName,
    pulumi.Output<String>? serverGroupType,
    pulumi.Output<List<ServerGroupServer>>? servers,
    pulumi.Output<String>? serviceName,
    pulumi.Output<ServerGroupSlowStartConfig>? slowStartConfig,
    pulumi.Output<ServerGroupStickySessionConfig>? stickySessionConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<ServerGroupUchConfig>? uchConfig,
    pulumi.Output<bool>? upstreamKeepaliveEnabled,
    pulumi.Output<String>? vpcId,
  }) :
      connectionDrainConfig = pulumi.Input.asOptionalInput<ServerGroupConnectionDrainConfig>(connectionDrainConfig),
      crossZoneEnabled = pulumi.Input.asOptionalInput<bool>(crossZoneEnabled),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      healthCheckConfig = pulumi.Input.asInput<ServerGroupHealthCheckConfig>(healthCheckConfig),
      healthCheckTemplateId = pulumi.Input.asOptionalInput<String>(healthCheckTemplateId),
      ipv6Enabled = pulumi.Input.asOptionalInput<bool>(ipv6Enabled),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scheduler = pulumi.Input.asOptionalInput<String>(scheduler),
      serverGroupName = pulumi.Input.asInput<String>(serverGroupName),
      serverGroupType = pulumi.Input.asOptionalInput<String>(serverGroupType),
      servers = pulumi.Input.asOptionalInput<List<ServerGroupServer>>(servers),
      serviceName = pulumi.Input.asOptionalInput<String>(serviceName),
      slowStartConfig = pulumi.Input.asOptionalInput<ServerGroupSlowStartConfig>(slowStartConfig),
      stickySessionConfig = pulumi.Input.asOptionalInput<ServerGroupStickySessionConfig>(stickySessionConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      uchConfig = pulumi.Input.asOptionalInput<ServerGroupUchConfig>(uchConfig),
      upstreamKeepaliveEnabled = pulumi.Input.asOptionalInput<bool>(upstreamKeepaliveEnabled),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      connectionDrainConfig: map['connectionDrainConfig'] == null ? null : pulumi.Output.create<ServerGroupConnectionDrainConfig>(ServerGroupConnectionDrainConfig.fromMap((map['connectionDrainConfig'] as Map).cast<String, dynamic>())),
      crossZoneEnabled: map['crossZoneEnabled'] == null ? null : pulumi.Output.create<bool>(map['crossZoneEnabled'] as bool),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      healthCheckConfig: pulumi.Output.create<ServerGroupHealthCheckConfig>(ServerGroupHealthCheckConfig.fromMap((map['healthCheckConfig'] as Map).cast<String, dynamic>())),
      healthCheckTemplateId: map['healthCheckTemplateId'] == null ? null : pulumi.Output.create<String>(map['healthCheckTemplateId'] as String),
      ipv6Enabled: map['ipv6Enabled'] == null ? null : pulumi.Output.create<bool>(map['ipv6Enabled'] as bool),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scheduler: map['scheduler'] == null ? null : pulumi.Output.create<String>(map['scheduler'] as String),
      serverGroupName: pulumi.Output.create<String>(map['serverGroupName'] as String),
      serverGroupType: map['serverGroupType'] == null ? null : pulumi.Output.create<String>(map['serverGroupType'] as String),
      servers: map['servers'] == null ? null : pulumi.Output.create<List<ServerGroupServer>>(pulumi.Input.decodeList<ServerGroupServer>(map['servers'], (value) => ServerGroupServer.fromMap((value as Map).cast<String, dynamic>()))),
      serviceName: map['serviceName'] == null ? null : pulumi.Output.create<String>(map['serviceName'] as String),
      slowStartConfig: map['slowStartConfig'] == null ? null : pulumi.Output.create<ServerGroupSlowStartConfig>(ServerGroupSlowStartConfig.fromMap((map['slowStartConfig'] as Map).cast<String, dynamic>())),
      stickySessionConfig: map['stickySessionConfig'] == null ? null : pulumi.Output.create<ServerGroupStickySessionConfig>(ServerGroupStickySessionConfig.fromMap((map['stickySessionConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      uchConfig: map['uchConfig'] == null ? null : pulumi.Output.create<ServerGroupUchConfig>(ServerGroupUchConfig.fromMap((map['uchConfig'] as Map).cast<String, dynamic>())),
      upstreamKeepaliveEnabled: map['upstreamKeepaliveEnabled'] == null ? null : pulumi.Output.create<bool>(map['upstreamKeepaliveEnabled'] as bool),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

