// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VoiceConnectorOriginationRoute {
  /// The FQDN or IP address to contact for origination traffic.
  final pulumi.Input<String> host;
  /// The designated origination route port. Defaults to `5060`.
  final pulumi.Input<int>? port;
  /// The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first.
  final pulumi.Input<int> priority;
  /// The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.
  final pulumi.Input<String> protocol;
  /// The weight associated with the host. If hosts are equal in priority, calls are redistributed among them based on their relative weight.
  final pulumi.Input<int> weight;

  /// Creates a new [VoiceConnectorOriginationRoute].
  /// [host] The FQDN or IP address to contact for origination traffic.
  /// [port] The designated origination route port. Defaults to `5060`.
  /// [priority] The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first.
  /// [protocol] The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.
  /// [weight] The weight associated with the host. If hosts are equal in priority, calls are redistributed among them based on their relative weight.
  VoiceConnectorOriginationRoute({
    required this.host,
    this.port,
    required this.priority,
    required this.protocol,
    required this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
      'port': ?port,
      'priority': priority,
      'protocol': protocol,
      'weight': weight,
    };
  }

  factory VoiceConnectorOriginationRoute.fromMap(Map<String, dynamic> map) {
    return VoiceConnectorOriginationRoute(
      host: pulumi.Input.fromValue(map['host'] as String),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      priority: pulumi.Input.fromValue(map['priority'] as int),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      weight: pulumi.Input.fromValue(map['weight'] as int),
    );
  }
}

