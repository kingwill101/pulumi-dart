// ignore_for_file: unused_element, unnecessary_cast


class VoiceConnectorOriginationRoute {
  /// The FQDN or IP address to contact for origination traffic.
  final String host;
  /// The designated origination route port. Defaults to `5060`.
  final int? port;
  /// The priority associated with the host, with 1 being the highest priority. Higher priority hosts are attempted first.
  final int priority;
  /// The protocol to use for the origination route. Encryption-enabled Amazon Chime Voice Connectors use TCP protocol by default.
  final String protocol;
  /// The weight associated with the host. If hosts are equal in priority, calls are redistributed among them based on their relative weight.
  final int weight;

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
      host: map['host'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      priority: map['priority'] as int,
      protocol: map['protocol'] as String,
      weight: map['weight'] as int,
    );
  }
}

