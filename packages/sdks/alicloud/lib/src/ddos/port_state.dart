// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_config.dart';

/// Input properties used for looking up and filtering Port resources.
class PortState {
  /// The port of the origin server. Valid values: `0` to `65535`.
  final pulumi.Input<String>? backendPort;
  /// Session persistence settings for port forwarding rules. Use a string representation in JSON format. The specific structure is described as follows.
  /// - `PersistenceTimeout`: is of Integer type and is required. The timeout period of the session. Value range: `30` to `3600`, in seconds. The default value is `0`, which is closed. See `config` below.
  final pulumi.Input<PortConfig>? config;
  /// The forwarding port to query. Valid values: `0` to `65535`.
  final pulumi.Input<String>? frontendPort;
  /// The type of the forwarding protocol to query. Valid values:
  final pulumi.Input<String>? frontendProtocol;
  /// The ID of the Anti-DDoS Pro or Anti-DDoS Premium instance to which the port forwarding rule belongs.
  ///
  /// > **NOTE:**  You can call the [DescribeInstanceIds](https://www.alibabacloud.com/help/en/doc-detail/157459.html) operation to query the IDs of all instances.
  final pulumi.Input<String>? instanceId;
  /// List of source IP addresses
  final pulumi.Input<List<String>>? realServers;

  /// Creates a new [PortState].
  /// [backendPort] The port of the origin server. Valid values: `0` to `65535`.
  /// [config] Session persistence settings for port forwarding rules. Use a string representation in JSON format. The specific structure is described as follows.
  /// [frontendPort] The forwarding port to query. Valid values: `0` to `65535`.
  /// [frontendProtocol] The type of the forwarding protocol to query. Valid values:
  /// [instanceId] The ID of the Anti-DDoS Pro or Anti-DDoS Premium instance to which the port forwarding rule belongs.
  /// [realServers] List of source IP addresses
  PortState({
    this.backendPort,
    this.config,
    this.frontendPort,
    this.frontendProtocol,
    this.instanceId,
    this.realServers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'config': ?pulumi.Input.mapOptionalInputValue<PortConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'frontendPort': ?frontendPort,
      'frontendProtocol': ?frontendProtocol,
      'instanceId': ?instanceId,
      'realServers': ?realServers,
    };
  }

  factory PortState.fromMap(Map<String, dynamic> map) {
    return PortState(
      backendPort: map['backendPort'] == null ? null : (map['backendPort'] as String).input(),
      config: map['config'] == null ? null : (PortConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      frontendPort: map['frontendPort'] == null ? null : (map['frontendPort'] as String).input(),
      frontendProtocol: map['frontendProtocol'] == null ? null : (map['frontendProtocol'] as String).input(),
      instanceId: map['instanceId'] == null ? null : (map['instanceId'] as String).input(),
      realServers: map['realServers'] == null ? null : ((map['realServers'] as List).cast<String>()).input(),
    );
  }
}

