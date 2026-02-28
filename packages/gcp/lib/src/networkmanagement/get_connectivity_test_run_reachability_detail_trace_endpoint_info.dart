// ignore_for_file: unused_element, unnecessary_cast

class GetConnectivityTestRunReachabilityDetailTraceEndpointInfo {
  /// (Output)
  /// Destination IP address.
  final String destinationIp;

  /// (Output)
  /// URI of the network where this packet is sent to.
  final String destinationNetworkUri;

  /// (Output)
  /// Destination port. Only valid when protocol is TCP or UDP.
  final int destinationPort;

  /// (Output)
  /// IP protocol in string format, for example: "TCP", "UDP", "ICMP".
  final String protocol;

  /// (Output)
  /// URI of the source telemetry agent this packet originates from.
  final String sourceAgentUri;

  /// (Output)
  /// Source IP address.
  final String sourceIp;

  /// (Output)
  /// URI of the network where this packet originates from.
  final String sourceNetworkUri;

  /// (Output)
  /// Source port. Only valid when protocol is TCP or UDP.
  final int sourcePort;

  /// Creates a new [GetConnectivityTestRunReachabilityDetailTraceEndpointInfo].
  /// [destinationIp] (Output)
  /// [destinationNetworkUri] (Output)
  /// [destinationPort] (Output)
  /// [protocol] (Output)
  /// [sourceAgentUri] (Output)
  /// [sourceIp] (Output)
  /// [sourceNetworkUri] (Output)
  /// [sourcePort] (Output)
  GetConnectivityTestRunReachabilityDetailTraceEndpointInfo({
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

  factory GetConnectivityTestRunReachabilityDetailTraceEndpointInfo.fromMap(
      Map<String, dynamic> map) {
    return GetConnectivityTestRunReachabilityDetailTraceEndpointInfo(
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
