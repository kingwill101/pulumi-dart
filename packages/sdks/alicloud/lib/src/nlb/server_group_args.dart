// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_health_check.dart';

/// {@template pulumi_nlb_server_group_server_group_args_doc}
/// The set of arguments for ServerGroup.
/// {@endtemplate}
/// {@macro pulumi_nlb_server_group_server_group_args_doc}
class ServerGroupArgs {
  /// The protocol version. Valid values:
  final pulumi.Input<String>? addressIpVersion;
  /// Specifies whether to enable all-port forwarding. Valid values:
  final pulumi.Input<bool>? anyPortEnabled;
  /// . Field 'connection_drain' has been deprecated from provider version 1.231.0. New field 'connection_drain_enabled' instead.
  final pulumi.Input<bool>? connectionDrain;
  /// Specifies whether to enable connection draining. Valid values:
  final pulumi.Input<bool>? connectionDrainEnabled;
  /// The timeout period of connection draining. Unit: seconds. Valid values: `10` to `900`.
  final pulumi.Input<int>? connectionDrainTimeout;
  /// Health check configuration information. See `health_check` below.
  final pulumi.Input<ServerGroupHealthCheck>? healthCheck;
  /// Specifies whether to enable client IP preservation. Valid values:
  final pulumi.Input<bool>? preserveClientIpEnabled;
  /// The protocol used to forward requests to the backend servers. Valid values:
  ///
  /// - `TCP` (default)
  /// - `UDP`
  /// - `TCPSSL`
  final pulumi.Input<String>? protocol;
  /// The ID of the new resource group.
  /// You can log on to the [Resource Management console](https://resourcemanager.console.aliyun.com/resource-groups) to view resource group IDs.
  final pulumi.Input<String>? resourceGroupId;
  /// The scheduling algorithm. Valid values:
  ///
  /// - **Wrr:** The weighted round-robin algorithm is used. Backend servers with higher weights receive more requests than backend servers with lower weights. This is the default value.
  /// - **Rr:** The round-robin algorithm is used. Requests are forwarded to backend servers in sequence.
  /// - **Sch:** Source IP hashing is used. Requests from the same source IP address are forwarded to the same backend server.
  /// - **Tch:** Four-element hashing is used. It specifies consistent hashing that is based on four factors: source IP address, destination IP address, source port, and destination port. Requests that contain the same information based on the four factors are forwarded to the same backend server.
  /// - `Qch`: QUIC ID hashing. Requests that contain the same QUIC ID are forwarded to the same backend server.
  final pulumi.Input<String>? scheduler;
  /// The new name of the server group.
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, periods (.), underscores (\_), and hyphens (-). The name must start with a letter.
  final pulumi.Input<String> serverGroupName;
  /// The type of server group. Valid values:
  ///
  /// - `Instance`: allows you to add servers of the `Ecs`, `Eni`, or `Eci` type. This is the default value.
  /// - `Ip`: allows you to add servers by specifying IP addresses.
  final pulumi.Input<String>? serverGroupType;
  /// Label.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) to which the server group belongs.
  ///
  /// > **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String> vpcId;

  /// Creates a new [ServerGroupArgs].
  /// [addressIpVersion] The protocol version. Valid values:
  /// [anyPortEnabled] Specifies whether to enable all-port forwarding. Valid values:
  /// [connectionDrain] . Field 'connection_drain' has been deprecated from provider version 1.231.0. New field 'connection_drain_enabled' instead.
  /// [connectionDrainEnabled] Specifies whether to enable connection draining. Valid values:
  /// [connectionDrainTimeout] The timeout period of connection draining. Unit: seconds. Valid values: `10` to `900`.
  /// [healthCheck] Health check configuration information. See `health_check` below.
  /// [preserveClientIpEnabled] Specifies whether to enable client IP preservation. Valid values:
  /// [protocol] The protocol used to forward requests to the backend servers. Valid values:
  /// [resourceGroupId] The ID of the new resource group.
  /// [scheduler] The scheduling algorithm. Valid values:
  /// [serverGroupName] The new name of the server group.
  /// [serverGroupType] The type of server group. Valid values:
  /// [tags] Label.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the server group belongs.
  ServerGroupArgs({
    pulumi.Output<String>? addressIpVersion,
    pulumi.Output<bool>? anyPortEnabled,
    pulumi.Output<bool>? connectionDrain,
    pulumi.Output<bool>? connectionDrainEnabled,
    pulumi.Output<int>? connectionDrainTimeout,
    pulumi.Output<ServerGroupHealthCheck>? healthCheck,
    pulumi.Output<bool>? preserveClientIpEnabled,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<String>? scheduler,
    required pulumi.Output<String> serverGroupName,
    pulumi.Output<String>? serverGroupType,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      addressIpVersion = pulumi.Input.asOptionalInput<String>(addressIpVersion),
      anyPortEnabled = pulumi.Input.asOptionalInput<bool>(anyPortEnabled),
      connectionDrain = pulumi.Input.asOptionalInput<bool>(connectionDrain),
      connectionDrainEnabled = pulumi.Input.asOptionalInput<bool>(connectionDrainEnabled),
      connectionDrainTimeout = pulumi.Input.asOptionalInput<int>(connectionDrainTimeout),
      healthCheck = pulumi.Input.asOptionalInput<ServerGroupHealthCheck>(healthCheck),
      preserveClientIpEnabled = pulumi.Input.asOptionalInput<bool>(preserveClientIpEnabled),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      scheduler = pulumi.Input.asOptionalInput<String>(scheduler),
      serverGroupName = pulumi.Input.asInput<String>(serverGroupName),
      serverGroupType = pulumi.Input.asOptionalInput<String>(serverGroupType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressIpVersion': ?addressIpVersion,
      'anyPortEnabled': ?anyPortEnabled,
      'connectionDrain': ?connectionDrain,
      'connectionDrainEnabled': ?connectionDrainEnabled,
      'connectionDrainTimeout': ?connectionDrainTimeout,
      'healthCheck': ?pulumi.Input.mapOptionalInputValue<ServerGroupHealthCheck, Map<String, dynamic>>(healthCheck, (value) => value.toMap()),
      'preserveClientIpEnabled': ?preserveClientIpEnabled,
      'protocol': ?protocol,
      'resourceGroupId': ?resourceGroupId,
      'scheduler': ?scheduler,
      'serverGroupName': serverGroupName,
      'serverGroupType': ?serverGroupType,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory ServerGroupArgs.fromMap(Map<String, dynamic> map) {
    return ServerGroupArgs(
      addressIpVersion: map['addressIpVersion'] == null ? null : pulumi.Output.create<String>(map['addressIpVersion'] as String),
      anyPortEnabled: map['anyPortEnabled'] == null ? null : pulumi.Output.create<bool>(map['anyPortEnabled'] as bool),
      connectionDrain: map['connectionDrain'] == null ? null : pulumi.Output.create<bool>(map['connectionDrain'] as bool),
      connectionDrainEnabled: map['connectionDrainEnabled'] == null ? null : pulumi.Output.create<bool>(map['connectionDrainEnabled'] as bool),
      connectionDrainTimeout: map['connectionDrainTimeout'] == null ? null : pulumi.Output.create<int>(map['connectionDrainTimeout'] as int),
      healthCheck: map['healthCheck'] == null ? null : pulumi.Output.create<ServerGroupHealthCheck>(ServerGroupHealthCheck.fromMap((map['healthCheck'] as Map).cast<String, dynamic>())),
      preserveClientIpEnabled: map['preserveClientIpEnabled'] == null ? null : pulumi.Output.create<bool>(map['preserveClientIpEnabled'] as bool),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      scheduler: map['scheduler'] == null ? null : pulumi.Output.create<String>(map['scheduler'] as String),
      serverGroupName: pulumi.Output.create<String>(map['serverGroupName'] as String),
      serverGroupType: map['serverGroupType'] == null ? null : pulumi.Output.create<String>(map['serverGroupType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

