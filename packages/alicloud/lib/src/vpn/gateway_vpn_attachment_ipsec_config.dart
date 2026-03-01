// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpnAttachmentIpsecConfig {
  /// The authentication algorithm negotiated in the second stage. Valid values: md5, sha1, sha256, sha384, sha512. Default value: MD5.
  final String? ipsecAuthAlg;
  /// The encryption algorithm negotiated in the second stage. Valid values: aes, aes192, aes256, des, or 3des. Default value: aes.
  final String? ipsecEncAlg;
  /// The life cycle of SA negotiated in the second stage. Unit: seconds. Value range: 0~86400. Default value: 86400.
  final int? ipsecLifetime;
  /// Diffie-Hellman Key Exchange Algorithm Used in Second Stage Negotiation
  final String? ipsecPfs;

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
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : map['ipsecAuthAlg'] as String,
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : map['ipsecEncAlg'] as String,
      ipsecLifetime: map['ipsecLifetime'] == null ? null : map['ipsecLifetime'] as int,
      ipsecPfs: map['ipsecPfs'] == null ? null : map['ipsecPfs'] as String,
    );
  }
}

