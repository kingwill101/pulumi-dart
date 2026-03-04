// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpnAttachmentBgpConfig {
  /// Whether to enable the BGP function. Valid values: true or false (default).
  final pulumi.Input<bool>? enable;

  /// The autonomous system number on the Alibaba Cloud side. The value range of autonomous system number is 1~4294967295. Default value: 45104
  final pulumi.Input<int>? localAsn;

  /// The BGP address on the Alibaba Cloud side. This address is an IP address in the IPsec tunnel network segment.
  /// - Before adding the BGP configuration, we recommend that you understand the working mechanism and usage restrictions of the BGP dynamic routing function. For more information, see BGP Dynamic Routing Bulletin.
  /// - We recommend that you use the private number of the autonomous system number to establish a BGP connection with Alibaba Cloud. Please refer to the documentation for the private number range of the autonomous system number.
  final pulumi.Input<String>? localBgpIp;

  /// The negotiation status of Tunnel.
  final pulumi.Input<String>? status;

  /// IPsec tunnel network segment. This network segment must be a network segment with a mask length of 30 within 169.254.0.0/16
  final pulumi.Input<String>? tunnelCidr;

  /// Creates a new [GatewayVpnAttachmentBgpConfig].
  /// [enable] Whether to enable the BGP function. Valid values: true or false (default).
  /// [localAsn] The autonomous system number on the Alibaba Cloud side. The value range of autonomous system number is 1~4294967295. Default value: 45104
  /// [localBgpIp] The BGP address on the Alibaba Cloud side. This address is an IP address in the IPsec tunnel network segment.
  /// [status] The negotiation status of Tunnel.
  /// [tunnelCidr] IPsec tunnel network segment. This network segment must be a network segment with a mask length of 30 within 169.254.0.0/16
  GatewayVpnAttachmentBgpConfig({
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

  factory GatewayVpnAttachmentBgpConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentBgpConfig(
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      localAsn: (() {
        final guardedValue = map['localAsn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      localBgpIp: (() {
        final guardedValue = map['localBgpIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tunnelCidr: (() {
        final guardedValue = map['tunnelCidr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
