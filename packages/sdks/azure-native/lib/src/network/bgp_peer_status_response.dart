// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// BGP peer status details.
class BgpPeerStatusResponse {
  /// The autonomous system number of the remote BGP peer.
  final pulumi.Input<double> asn;

  /// For how long the peering has been up.
  final pulumi.Input<String> connectedDuration;

  /// The virtual network gateway's local address.
  final pulumi.Input<String> localAddress;

  /// The number of BGP messages received.
  final pulumi.Input<double> messagesReceived;

  /// The number of BGP messages sent.
  final pulumi.Input<double> messagesSent;

  /// The remote BGP peer.
  final pulumi.Input<String> neighbor;

  /// The number of routes learned from this peer.
  final pulumi.Input<double> routesReceived;

  /// The BGP peer state.
  final pulumi.Input<String> state;

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
      asn: pulumi.Input.fromValue(map['asn'] as double),
      connectedDuration: pulumi.Input.fromValue(
        map['connectedDuration'] as String,
      ),
      localAddress: pulumi.Input.fromValue(map['localAddress'] as String),
      messagesReceived: pulumi.Input.fromValue(
        map['messagesReceived'] as double,
      ),
      messagesSent: pulumi.Input.fromValue(map['messagesSent'] as double),
      neighbor: pulumi.Input.fromValue(map['neighbor'] as String),
      routesReceived: pulumi.Input.fromValue(map['routesReceived'] as double),
      state: pulumi.Input.fromValue(map['state'] as String),
    );
  }
}
