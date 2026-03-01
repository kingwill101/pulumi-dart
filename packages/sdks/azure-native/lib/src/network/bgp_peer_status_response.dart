// ignore_for_file: unused_element, unnecessary_cast


/// BGP peer status details.
class BgpPeerStatusResponse {
  /// The autonomous system number of the remote BGP peer.
  final double asn;
  /// For how long the peering has been up.
  final String connectedDuration;
  /// The virtual network gateway's local address.
  final String localAddress;
  /// The number of BGP messages received.
  final double messagesReceived;
  /// The number of BGP messages sent.
  final double messagesSent;
  /// The remote BGP peer.
  final String neighbor;
  /// The number of routes learned from this peer.
  final double routesReceived;
  /// The BGP peer state.
  final String state;

  /// Creates a new [BgpPeerStatusResponse].
  /// [asn] The autonomous system number of the remote BGP peer.
  /// [connectedDuration] For how long the peering has been up.
  /// [localAddress] The virtual network gateway's local address.
  /// [messagesReceived] The number of BGP messages received.
  /// [messagesSent] The number of BGP messages sent.
  /// [neighbor] The remote BGP peer.
  /// [routesReceived] The number of routes learned from this peer.
  /// [state] The BGP peer state.
  BgpPeerStatusResponse({
    required this.asn,
    required this.connectedDuration,
    required this.localAddress,
    required this.messagesReceived,
    required this.messagesSent,
    required this.neighbor,
    required this.routesReceived,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'asn': asn,
      'connectedDuration': connectedDuration,
      'localAddress': localAddress,
      'messagesReceived': messagesReceived,
      'messagesSent': messagesSent,
      'neighbor': neighbor,
      'routesReceived': routesReceived,
      'state': state,
    };
  }

  factory BgpPeerStatusResponse.fromMap(Map<String, dynamic> map) {
    return BgpPeerStatusResponse(
      asn: map['asn'] as double,
      connectedDuration: map['connectedDuration'] as String,
      localAddress: map['localAddress'] as String,
      messagesReceived: map['messagesReceived'] as double,
      messagesSent: map['messagesSent'] as double,
      neighbor: map['neighbor'] as String,
      routesReceived: map['routesReceived'] as double,
      state: map['state'] as String,
    );
  }
}

