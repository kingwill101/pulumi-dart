// ignore_for_file: unused_element, unnecessary_cast

/// For display only. The specification of the endpoints for the test. EndpointInfo is derived from source and destination Endpoint and validated by the backend data plane model.
class EndpointInfoResponse {
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

  /// Creates a new [EndpointInfoResponse].
  /// [destinationIp] Destination IP address.
  /// [destinationNetworkUri] URI of the network where this packet is sent to.
  /// [destinationPort] Destination port. Only valid when protocol is TCP or UDP.
  /// [protocol] IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  /// [sourceAgentUri] URI of the source telemetry agent this packet originates from.
  /// [sourceIp] Source IP address.
  /// [sourceNetworkUri] URI of the network where this packet originates from.
  /// [sourcePort] Source port. Only valid when protocol is TCP or UDP.
  EndpointInfoResponse({
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
    return <String, dynamic>{
      'destinationIp': destinationIp,
      'destinationNetworkUri': destinationNetworkUri,
      'destinationPort': destinationPort,
      'protocol': protocol,
      'sourceAgentUri': sourceAgentUri,
      'sourceIp': sourceIp,
      'sourceNetworkUri': sourceNetworkUri,
      'sourcePort': sourcePort,
    };
  }

  factory EndpointInfoResponse.fromMap(Map<String, dynamic> map) {
    return EndpointInfoResponse(
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
