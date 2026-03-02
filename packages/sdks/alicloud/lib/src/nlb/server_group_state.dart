// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_group_health_check.dart';

/// Input properties used for looking up and filtering ServerGroup resources.
class ServerGroupState {
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
  /// The ID of the region where the NLB instance is deployed.
  final pulumi.Input<String>? regionId;
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
  final pulumi.Input<String>? serverGroupName;
  /// The type of server group. Valid values:
  ///
  /// - `Instance`: allows you to add servers of the `Ecs`, `Eni`, or `Eci` type. This is the default value.
  /// - `Ip`: allows you to add servers by specifying IP addresses.
  final pulumi.Input<String>? serverGroupType;
  /// Server group status. Value:
  final pulumi.Input<String>? status;
  /// Label.
  final pulumi.Input<Map<String, String>>? tags;
  /// The ID of the virtual private cloud (VPC) to which the server group belongs.
  ///
  /// > **NOTE:**  If `ServerGroupType` is set to `Instance`, only servers in the specified VPC can be added to the server group.
  ///
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? vpcId;

  /// Creates a new [ServerGroupState].
  /// [addressIpVersion] The protocol version. Valid values:
  /// [anyPortEnabled] Specifies whether to enable all-port forwarding. Valid values:
  /// [connectionDrain] . Field 'connection_drain' has been deprecated from provider version 1.231.0. New field 'connection_drain_enabled' instead.
  /// [connectionDrainEnabled] Specifies whether to enable connection draining. Valid values:
  /// [connectionDrainTimeout] The timeout period of connection draining. Unit: seconds. Valid values: `10` to `900`.
  /// [healthCheck] Health check configuration information. See `health_check` below.
  /// [preserveClientIpEnabled] Specifies whether to enable client IP preservation. Valid values:
  /// [protocol] The protocol used to forward requests to the backend servers. Valid values:
  /// [regionId] The ID of the region where the NLB instance is deployed.
  /// [resourceGroupId] The ID of the new resource group.
  /// [scheduler] The scheduling algorithm. Valid values:
  /// [serverGroupName] The new name of the server group.
  /// [serverGroupType] The type of server group. Valid values:
  /// [status] Server group status. Value:
  /// [tags] Label.
  /// [vpcId] The ID of the virtual private cloud (VPC) to which the server group belongs.
  ServerGroupState({
    this.addressIpVersion,
    this.anyPortEnabled,
    this.connectionDrain,
    this.connectionDrainEnabled,
    this.connectionDrainTimeout,
    this.healthCheck,
    this.preserveClientIpEnabled,
    this.protocol,
    this.regionId,
    this.resourceGroupId,
    this.scheduler,
    this.serverGroupName,
    this.serverGroupType,
    this.status,
    this.tags,
    this.vpcId,
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
      'regionId': ?regionId,
      'resourceGroupId': ?resourceGroupId,
      'scheduler': ?scheduler,
      'serverGroupName': ?serverGroupName,
      'serverGroupType': ?serverGroupType,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory ServerGroupState.fromMap(Map<String, dynamic> map) {
    return ServerGroupState(
      addressIpVersion: map['addressIpVersion'] == null ? null : (map['addressIpVersion']! as String).input(),
      anyPortEnabled: map['anyPortEnabled'] == null ? null : (map['anyPortEnabled']! as bool).input(),
      connectionDrain: map['connectionDrain'] == null ? null : (map['connectionDrain']! as bool).input(),
      connectionDrainEnabled: map['connectionDrainEnabled'] == null ? null : (map['connectionDrainEnabled']! as bool).input(),
      connectionDrainTimeout: map['connectionDrainTimeout'] == null ? null : (map['connectionDrainTimeout']! as int).input(),
      healthCheck: map['healthCheck'] == null ? null : (ServerGroupHealthCheck.fromMap((map['healthCheck']! as Map).cast<String, dynamic>())).input(),
      preserveClientIpEnabled: map['preserveClientIpEnabled'] == null ? null : (map['preserveClientIpEnabled']! as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId']! as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId']! as String).input(),
      scheduler: map['scheduler'] == null ? null : (map['scheduler']! as String).input(),
      serverGroupName: map['serverGroupName'] == null ? null : (map['serverGroupName']! as String).input(),
      serverGroupType: map['serverGroupType'] == null ? null : (map['serverGroupType']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId']! as String).input(),
    );
  }
}

