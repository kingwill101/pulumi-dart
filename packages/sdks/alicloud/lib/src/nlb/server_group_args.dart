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
  /// &gt; **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
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
  const ServerGroupArgs({
    this.addressIpVersion,
    this.anyPortEnabled,
    this.connectionDrain,
    this.connectionDrainEnabled,
    this.connectionDrainTimeout,
    this.healthCheck,
    this.preserveClientIpEnabled,
    this.protocol,
    this.resourceGroupId,
    this.scheduler,
    required this.serverGroupName,
    this.serverGroupType,
    this.tags,
    required this.vpcId,
  });

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
      addressIpVersion: (() { final guardedValue = map['addressIpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      anyPortEnabled: (() { final guardedValue = map['anyPortEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionDrain: (() { final guardedValue = map['connectionDrain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionDrainEnabled: (() { final guardedValue = map['connectionDrainEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      connectionDrainTimeout: (() { final guardedValue = map['connectionDrainTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      healthCheck: (() { final guardedValue = map['healthCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServerGroupHealthCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      preserveClientIpEnabled: (() { final guardedValue = map['preserveClientIpEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scheduler: (() { final guardedValue = map['scheduler']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serverGroupName: pulumi.Input.fromValue(map['serverGroupName'] as String),
      serverGroupType: (() { final guardedValue = map['serverGroupType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}

