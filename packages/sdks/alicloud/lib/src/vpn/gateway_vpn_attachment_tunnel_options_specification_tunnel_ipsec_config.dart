// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig {
  final pulumi.Input<String>? ipsecAuthAlg;
  final pulumi.Input<String>? ipsecEncAlg;
  final pulumi.Input<int>? ipsecLifetime;
  final pulumi.Input<String>? ipsecPfs;

  /// Creates a new [GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig].
  /// [ipsecAuthAlg] Optional.
  /// [ipsecEncAlg] Optional.
  /// [ipsecLifetime] Optional.
  /// [ipsecPfs] Optional.
  GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig({
    this.ipsecAuthAlg,
    this.ipsecEncAlg,
    this.ipsecLifetime,
    this.ipsecPfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipsecAuthAlg': ?ipsecAuthAlg,
      'ipsecEncAlg': ?ipsecEncAlg,
      'ipsecLifetime': ?ipsecLifetime,
      'ipsecPfs': ?ipsecPfs,
    };
  }

  factory GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig(
      ipsecAuthAlg: (() {
        final guardedValue = map['ipsecAuthAlg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipsecEncAlg: (() {
        final guardedValue = map['ipsecEncAlg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipsecLifetime: (() {
        final guardedValue = map['ipsecLifetime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipsecPfs: (() {
        final guardedValue = map['ipsecPfs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
