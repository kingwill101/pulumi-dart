// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig {
  /// BGP status.
  final pulumi.Input<String> bgpStatus;

  /// The number of the local (Alibaba Cloud) autonomous system of the tunnel. The value range of the autonomous system number is **1** to **4294967295**. Default value: **45104**.&gt; We recommend that you use the private number of the autonomous system number to establish a BGP connection with Alibaba Cloud. The private number range of the autonomous system number please consult the document yourself.
  final pulumi.Input<int> localAsn;

  /// The local BGP address of the tunnel (on the Alibaba Cloud side). This address is an IP address in the BGP network segment.
  final pulumi.Input<String> localBgpIp;

  /// Peer asn.
  final pulumi.Input<String> peerAsn;

  /// Peer bgp ip.
  final pulumi.Input<String> peerBgpIp;

  /// The BGP network segment of the tunnel. The network segment must be a network segment with a mask length of 30 in 169.254.0.0/16, and cannot be 169.254.0.0/30, 169.254.1.0/30, 169.254.2.0/30, 169.254.3.0/30, 169.254.4.0/30, 169.254.5.0/30, 169.254.6.0/30, and 169.254.169.252/30.&gt; the network segments of two tunnels under an IPsec connection cannot be the same.
  final pulumi.Input<String> tunnelCidr;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig].
  /// [bgpStatus] BGP status.
  /// [localAsn] The number of the local (Alibaba Cloud) autonomous system of the tunnel. The value range of the autonomous system number is **1** to **4294967295**. Default value: **45104**.&gt; We recommend that you use the private number of the autonomous system number to establish a BGP connection with Alibaba Cloud. The private number range of the autonomous system number please consult the document yourself.
  /// [localBgpIp] The local BGP address of the tunnel (on the Alibaba Cloud side). This address is an IP address in the BGP network segment.
  /// [peerAsn] Peer asn.
  /// [peerBgpIp] Peer bgp ip.
  /// [tunnelCidr] The BGP network segment of the tunnel. The network segment must be a network segment with a mask length of 30 in 169.254.0.0/16, and cannot be 169.254.0.0/30, 169.254.1.0/30, 169.254.2.0/30, 169.254.3.0/30, 169.254.4.0/30, 169.254.5.0/30, 169.254.6.0/30, and 169.254.169.252/30.&gt; the network segments of two tunnels under an IPsec connection cannot be the same.
  GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig({
    required this.bgpStatus,
    required this.localAsn,
    required this.localBgpIp,
    required this.peerAsn,
    required this.peerBgpIp,
    required this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgpStatus': bgpStatus,
      'localAsn': localAsn,
      'localBgpIp': localBgpIp,
      'peerAsn': peerAsn,
      'peerBgpIp': peerBgpIp,
      'tunnelCidr': tunnelCidr,
    };
  }

  factory GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelBgpConfig(
      bgpStatus: pulumi.Input.fromValue(map['bgpStatus'] as String),
      localAsn: pulumi.Input.fromValue(map['localAsn'] as int),
      localBgpIp: pulumi.Input.fromValue(map['localBgpIp'] as String),
      peerAsn: pulumi.Input.fromValue(map['peerAsn'] as String),
      peerBgpIp: pulumi.Input.fromValue(map['peerBgpIp'] as String),
      tunnelCidr: pulumi.Input.fromValue(map['tunnelCidr'] as String),
    );
  }
}
