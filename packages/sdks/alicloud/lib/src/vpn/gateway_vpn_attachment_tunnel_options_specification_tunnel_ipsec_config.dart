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

  factory GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIpsecConfig(
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : (map['ipsecAuthAlg'] as String).input(),
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : (map['ipsecEncAlg'] as String).input(),
      ipsecLifetime: map['ipsecLifetime'] == null ? null : (map['ipsecLifetime'] as int).input(),
      ipsecPfs: map['ipsecPfs'] == null ? null : (map['ipsecPfs'] as String).input(),
    );
  }
}

