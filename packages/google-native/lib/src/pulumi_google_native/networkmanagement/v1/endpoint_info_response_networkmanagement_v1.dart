// ignore_for_file: unused_element, unnecessary_cast

/// For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.
class EndpointInfoResponseNetworkmanagementV1 {
  /// Destination IP address.
  final String destinationIp;

  /// URI of the network where this packet is sent to.
  final String destinationNetworkUri;

  /// Destination port. Only valid when protocol is TCP or UDP.
  final int destinationPort;

  /// IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  final String protocol;

  /// URI of the source telemetry agent this packet originates from.
  final String sourceAgentUri;

  /// Source IP address.
  final String sourceIp;

  /// URI of the network where this packet originates from.
  final String sourceNetworkUri;

  /// Source port. Only valid when protocol is TCP or UDP.
  final int sourcePort;

  EndpointInfoResponseNetworkmanagementV1({
    required this.destinationIp,
    required this.destinationNetworkUri,
    required this.destinationPort,
    required this.protocol,
    required this.sourceAgentUri,
    required this.sourceIp,
    required this.sourceNetworkUri,
    required this.sourcePort,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['destinationIp'] = destinationIp;
    map['destinationNetworkUri'] = destinationNetworkUri;
    map['destinationPort'] = destinationPort;
    map['protocol'] = protocol;
    map['sourceAgentUri'] = sourceAgentUri;
    map['sourceIp'] = sourceIp;
    map['sourceNetworkUri'] = sourceNetworkUri;
    map['sourcePort'] = sourcePort;
    return map;
  }

  factory EndpointInfoResponseNetworkmanagementV1.fromMap(
      Map<String, dynamic> map) {
    return EndpointInfoResponseNetworkmanagementV1(
      destinationIp: map['destinationIp'] as String,
      destinationNetworkUri: map['destinationNetworkUri'] as String,
      destinationPort: map['destinationPort'] as int,
      protocol: map['protocol'] as String,
      sourceAgentUri: map['sourceAgentUri'] as String,
      sourceIp: map['sourceIp'] as String,
      sourceNetworkUri: map['sourceNetworkUri'] as String,
      sourcePort: map['sourcePort'] as int,
    );
  }
}
