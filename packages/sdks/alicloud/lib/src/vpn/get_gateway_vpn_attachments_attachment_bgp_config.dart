// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayVpnAttachmentsAttachmentBgpConfig {
  /// The number of the local (Alibaba Cloud) autonomous system of the tunnel. The value range of the autonomous system number is **1** to **4294967295**. Default value: **45104**.> We recommend that you use the private number of the autonomous system number to establish a BGP connection with Alibaba Cloud. The private number range of the autonomous system number please consult the document yourself.
  final int localAsn;
  /// The local BGP address of the tunnel (on the Alibaba Cloud side). This address is an IP address in the BGP network segment.
  final String localBgpIp;
  /// The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  final String status;
  /// The BGP network segment of the tunnel. The network segment must be a network segment with a mask length of 30 in 169.254.0.0/16, and cannot be 169.254.0.0/30, 169.254.1.0/30, 169.254.2.0/30, 169.254.3.0/30, 169.254.4.0/30, 169.254.5.0/30, 169.254.6.0/30, and 169.254.169.252/30.> the network segments of two tunnels under an IPsec connection cannot be the same.
  final String tunnelCidr;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentBgpConfig].
  /// [localAsn] The number of the local (Alibaba Cloud) autonomous system of the tunnel. The value range of the autonomous system number is **1** to **4294967295**. Default value: **45104**.> We recommend that you use the private number of the autonomous system number to establish a BGP connection with Alibaba Cloud. The private number range of the autonomous system number please consult the document yourself.
  /// [localBgpIp] The local BGP address of the tunnel (on the Alibaba Cloud side). This address is an IP address in the BGP network segment.
  /// [status] The status of the resource. Valid values: `init`, `active`, `attaching`, `attached`, `detaching`, `financialLocked`, `provisioning`, `updating`, `upgrading`, `deleted`.
  /// [tunnelCidr] The BGP network segment of the tunnel. The network segment must be a network segment with a mask length of 30 in 169.254.0.0/16, and cannot be 169.254.0.0/30, 169.254.1.0/30, 169.254.2.0/30, 169.254.3.0/30, 169.254.4.0/30, 169.254.5.0/30, 169.254.6.0/30, and 169.254.169.252/30.> the network segments of two tunnels under an IPsec connection cannot be the same.
  GetGatewayVpnAttachmentsAttachmentBgpConfig({
    required this.localAsn,
    required this.localBgpIp,
    required this.status,
    required this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localAsn': localAsn,
      'localBgpIp': localBgpIp,
      'status': status,
      'tunnelCidr': tunnelCidr,
    };
  }

  factory GetGatewayVpnAttachmentsAttachmentBgpConfig.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachmentBgpConfig(
      localAsn: map['localAsn'] as int,
      localBgpIp: map['localBgpIp'] as String,
      status: map['status'] as String,
      tunnelCidr: map['tunnelCidr'] as String,
    );
  }
}

