// ignore_for_file: unused_element, unnecessary_cast


class ConnectionBgpConfig {
  /// specifies whether to enable BGP. Valid values: true and false (default).
  final bool? enable;
  /// the autonomous system number (ASN) on the Alibaba Cloud side.
  /// Valid values: 1 to 4294967295. Default value: 45104. You can enter a value in two segments separated by a period (.).
  /// Each segment is 16 bits in length. Enter the number in each segment in decimal format.
  /// For example, if you enter 123.456, the ASN is 8061384. The ASN is calculated by using the following formula: 123 × 65536 + 456 = 8061384.
  final String? localAsn;
  /// the BGP address on the Alibaba Cloud side. It must be an IP address that falls within the CIDR block of the IPsec tunnel.
  final String? localBgpIp;
  /// The negotiation status of Tunnel.
  final String? status;
  /// The CIDR block of the IPsec tunnel. The CIDR block must belong to 169.254.0.0/16 and the subnet mask is 30 bits in length.
  final String? tunnelCidr;

  /// Creates a new [ConnectionBgpConfig].
  /// [enable] specifies whether to enable BGP. Valid values: true and false (default).
  /// [localAsn] the autonomous system number (ASN) on the Alibaba Cloud side.
  /// [localBgpIp] the BGP address on the Alibaba Cloud side. It must be an IP address that falls within the CIDR block of the IPsec tunnel.
  /// [status] The negotiation status of Tunnel.
  /// [tunnelCidr] The CIDR block of the IPsec tunnel. The CIDR block must belong to 169.254.0.0/16 and the subnet mask is 30 bits in length.
  ConnectionBgpConfig({
    this.enable,
    this.localAsn,
    this.localBgpIp,
    this.status,
    this.tunnelCidr,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enable': ?enable,
      'localAsn': ?localAsn,
      'localBgpIp': ?localBgpIp,
      'status': ?status,
      'tunnelCidr': ?tunnelCidr,
    };
  }

  factory ConnectionBgpConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionBgpConfig(
      enable: map['enable'] == null ? null : map['enable'] as bool,
      localAsn: map['localAsn'] == null ? null : map['localAsn'] as String,
      localBgpIp: map['localBgpIp'] == null ? null : map['localBgpIp'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tunnelCidr: map['tunnelCidr'] == null ? null : map['tunnelCidr'] as String,
    );
  }
}

