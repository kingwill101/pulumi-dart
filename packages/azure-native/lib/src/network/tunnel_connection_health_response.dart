// ignore_for_file: unused_element, unnecessary_cast


/// VirtualNetworkGatewayConnection properties.
class TunnelConnectionHealthResponse {
  /// Virtual Network Gateway connection status.
  final String connectionStatus;
  /// The Egress Bytes Transferred in this connection.
  final double egressBytesTransferred;
  /// The Ingress Bytes Transferred in this connection.
  final double ingressBytesTransferred;
  /// The time at which connection was established in Utc format.
  final String lastConnectionEstablishedUtcTime;
  /// Tunnel name.
  final String tunnel;

  /// Creates a new [TunnelConnectionHealthResponse].
  /// [connectionStatus] Virtual Network Gateway connection status.
  /// [egressBytesTransferred] The Egress Bytes Transferred in this connection.
  /// [ingressBytesTransferred] The Ingress Bytes Transferred in this connection.
  /// [lastConnectionEstablishedUtcTime] The time at which connection was established in Utc format.
  /// [tunnel] Tunnel name.
  TunnelConnectionHealthResponse({
    required this.connectionStatus,
    required this.egressBytesTransferred,
    required this.ingressBytesTransferred,
    required this.lastConnectionEstablishedUtcTime,
    required this.tunnel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionStatus': connectionStatus,
      'egressBytesTransferred': egressBytesTransferred,
      'ingressBytesTransferred': ingressBytesTransferred,
      'lastConnectionEstablishedUtcTime': lastConnectionEstablishedUtcTime,
      'tunnel': tunnel,
    };
  }

  factory TunnelConnectionHealthResponse.fromMap(Map<String, dynamic> map) {
    return TunnelConnectionHealthResponse(
      connectionStatus: map['connectionStatus'] as String,
      egressBytesTransferred: map['egressBytesTransferred'] as double,
      ingressBytesTransferred: map['ingressBytesTransferred'] as double,
      lastConnectionEstablishedUtcTime: map['lastConnectionEstablishedUtcTime'] as String,
      tunnel: map['tunnel'] as String,
    );
  }
}

