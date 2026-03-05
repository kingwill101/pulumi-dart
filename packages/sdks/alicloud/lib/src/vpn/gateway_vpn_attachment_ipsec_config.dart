// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GatewayVpnAttachmentIpsecConfig {
  /// The authentication algorithm negotiated in the second stage. Valid values: md5, sha1, sha256, sha384, sha512. Default value: MD5.
  final pulumi.Input<String>? ipsecAuthAlg;
  /// The encryption algorithm negotiated in the second stage. Valid values: aes, aes192, aes256, des, or 3des. Default value: aes.
  final pulumi.Input<String>? ipsecEncAlg;
  /// The life cycle of SA negotiated in the second stage. Unit: seconds. Value range: 0~86400. Default value: 86400.
  final pulumi.Input<int>? ipsecLifetime;
  /// Diffie-Hellman Key Exchange Algorithm Used in Second Stage Negotiation
  final pulumi.Input<String>? ipsecPfs;

  /// Creates a new [GatewayVpnAttachmentIpsecConfig].
  /// [ipsecAuthAlg] The authentication algorithm negotiated in the second stage. Valid values: md5, sha1, sha256, sha384, sha512. Default value: MD5.
  /// [ipsecEncAlg] The encryption algorithm negotiated in the second stage. Valid values: aes, aes192, aes256, des, or 3des. Default value: aes.
  /// [ipsecLifetime] The life cycle of SA negotiated in the second stage. Unit: seconds. Value range: 0~86400. Default value: 86400.
  /// [ipsecPfs] Diffie-Hellman Key Exchange Algorithm Used in Second Stage Negotiation
  GatewayVpnAttachmentIpsecConfig({
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

  factory GatewayVpnAttachmentIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentIpsecConfig(
      ipsecAuthAlg: (() { final guardedValue = map['ipsecAuthAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecEncAlg: (() { final guardedValue = map['ipsecEncAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecLifetime: (() { final guardedValue = map['ipsecLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipsecPfs: (() { final guardedValue = map['ipsecPfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

