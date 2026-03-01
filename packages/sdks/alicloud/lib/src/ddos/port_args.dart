// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'port_config.dart';

/// {@template pulumi_ddos_port_port_args_doc}
/// The set of arguments for Port.
/// {@endtemplate}
/// {@macro pulumi_ddos_port_port_args_doc}
class PortArgs {
  /// The port of the origin server. Valid values: `0` to `65535`.
  final pulumi.Input<String>? backendPort;
  /// Session persistence settings for port forwarding rules. Use a string representation in JSON format. The specific structure is described as follows.
  /// - `PersistenceTimeout`: is of Integer type and is required. The timeout period of the session. Value range: `30` to `3600`, in seconds. The default value is `0`, which is closed. See `config` below.
  final pulumi.Input<PortConfig>? config;
  /// The forwarding port to query. Valid values: `0` to `65535`.
  final pulumi.Input<String> frontendPort;
  /// The type of the forwarding protocol to query. Valid values:
  final pulumi.Input<String> frontendProtocol;
  /// The ID of the Anti-DDoS Pro or Anti-DDoS Premium instance to which the port forwarding rule belongs.
  ///
  /// > **NOTE:**  You can call the [DescribeInstanceIds](https://www.alibabacloud.com/help/en/doc-detail/157459.html) operation to query the IDs of all instances.
  final pulumi.Input<String> instanceId;
  /// List of source IP addresses
  final pulumi.Input<List<String>> realServers;

  /// Creates a new [PortArgs].
  /// [backendPort] The port of the origin server. Valid values: `0` to `65535`.
  /// [config] Session persistence settings for port forwarding rules. Use a string representation in JSON format. The specific structure is described as follows.
  /// [frontendPort] The forwarding port to query. Valid values: `0` to `65535`.
  /// [frontendProtocol] The type of the forwarding protocol to query. Valid values:
  /// [instanceId] The ID of the Anti-DDoS Pro or Anti-DDoS Premium instance to which the port forwarding rule belongs.
  /// [realServers] List of source IP addresses
  PortArgs({
    pulumi.Output<String>? backendPort,
    pulumi.Output<PortConfig>? config,
    required pulumi.Output<String> frontendPort,
    required pulumi.Output<String> frontendProtocol,
    required pulumi.Output<String> instanceId,
    required pulumi.Output<List<String>> realServers,
  }) :
      backendPort = pulumi.Input.asOptionalInput<String>(backendPort),
      config = pulumi.Input.asOptionalInput<PortConfig>(config),
      frontendPort = pulumi.Input.asInput<String>(frontendPort),
      frontendProtocol = pulumi.Input.asInput<String>(frontendProtocol),
      instanceId = pulumi.Input.asInput<String>(instanceId),
      realServers = pulumi.Input.asInput<List<String>>(realServers);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'config': ?pulumi.Input.mapOptionalInputValue<PortConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'frontendPort': frontendPort,
      'frontendProtocol': frontendProtocol,
      'instanceId': instanceId,
      'realServers': realServers,
    };
  }

  factory PortArgs.fromMap(Map<String, dynamic> map) {
    return PortArgs(
      backendPort: map['backendPort'] == null ? null : pulumi.Output.create<String>(map['backendPort'] as String),
      config: map['config'] == null ? null : pulumi.Output.create<PortConfig>(PortConfig.fromMap((map['config'] as Map).cast<String, dynamic>())),
      frontendPort: pulumi.Output.create<String>(map['frontendPort'] as String),
      frontendProtocol: pulumi.Output.create<String>(map['frontendProtocol'] as String),
      instanceId: pulumi.Output.create<String>(map['instanceId'] as String),
      realServers: pulumi.Output.create<List<String>>((map['realServers'] as List).cast<String>()),
    );
  }
}

