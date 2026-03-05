// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering BgpPeer resources.
class BgpPeerState {
  /// The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  final pulumi.Input<int>? bfdMultiHop;
  /// The ID of the BGP group.
  final pulumi.Input<String>? bgpGroupId;
  /// The name of the BGP neighbor.
  final pulumi.Input<String>? bgpPeerName;
  /// Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  final pulumi.Input<bool>? enableBfd;
  /// The IP version.
  final pulumi.Input<String>? ipVersion;
  /// The IP address of the BGP peer.
  final pulumi.Input<String>? peerIpAddress;
  /// Status of BGP neighbors.
  final pulumi.Input<String>? status;

  /// Creates a new [BgpPeerState].
  /// [bfdMultiHop] The BFD hop count. Valid values: `1` to `255`. **NOTE:** The attribute is valid when the attribute `enable_bfd` is `true`. The parameter specifies the maximum number of network devices that a packet can traverse from the source to the destination. You can set a proper value based on the factors that affect the physical connection.
  /// [bgpGroupId] The ID of the BGP group.
  /// [bgpPeerName] The name of the BGP neighbor.
  /// [enableBfd] Specifies whether to enable the Bidirectional Forwarding Detection (BFD) feature.
  /// [ipVersion] The IP version.
  /// [peerIpAddress] The IP address of the BGP peer.
  /// [status] Status of BGP neighbors.
  BgpPeerState({
    this.bfdMultiHop,
    this.bgpGroupId,
    this.bgpPeerName,
    this.enableBfd,
    this.ipVersion,
    this.peerIpAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bfdMultiHop': ?bfdMultiHop,
      'bgpGroupId': ?bgpGroupId,
      'bgpPeerName': ?bgpPeerName,
      'enableBfd': ?enableBfd,
      'ipVersion': ?ipVersion,
      'peerIpAddress': ?peerIpAddress,
      'status': ?status,
    };
  }

  factory BgpPeerState.fromMap(Map<String, dynamic> map) {
    return BgpPeerState(
      bfdMultiHop: (() { final guardedValue = map['bfdMultiHop']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      bgpGroupId: (() { final guardedValue = map['bgpGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bgpPeerName: (() { final guardedValue = map['bgpPeerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBfd: (() { final guardedValue = map['enableBfd']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      ipVersion: (() { final guardedValue = map['ipVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      peerIpAddress: (() { final guardedValue = map['peerIpAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

