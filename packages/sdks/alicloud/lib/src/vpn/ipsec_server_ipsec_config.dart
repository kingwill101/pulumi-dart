// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpsecServerIpsecConfig {
  /// The authentication algorithm that is used in Phase 2 negotiations. Default value: `sha1`.
  final pulumi.Input<String>? ipsecAuthAlg;
  /// The encryption algorithm that is used in Phase 2 negotiations. Default value: `aes`.
  final pulumi.Input<String>? ipsecEncAlg;
  /// The SA lifetime determined by Phase 2 negotiations. Valid values: `0` to `86400`. Default value: `86400`. Unit: `seconds`.
  final pulumi.Input<int>? ipsecLifetime;
  /// Forwards packets of all protocols. The Diffie-Hellman key exchange algorithm used in Phase 2 negotiations. Default value: `group2`.
  final pulumi.Input<String>? ipsecPfs;

  /// Creates a new [IpsecServerIpsecConfig].
  /// [ipsecAuthAlg] The authentication algorithm that is used in Phase 2 negotiations. Default value: `sha1`.
  /// [ipsecEncAlg] The encryption algorithm that is used in Phase 2 negotiations. Default value: `aes`.
  /// [ipsecLifetime] The SA lifetime determined by Phase 2 negotiations. Valid values: `0` to `86400`. Default value: `86400`. Unit: `seconds`.
  /// [ipsecPfs] Forwards packets of all protocols. The Diffie-Hellman key exchange algorithm used in Phase 2 negotiations. Default value: `group2`.
  IpsecServerIpsecConfig({
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

  factory IpsecServerIpsecConfig.fromMap(Map<String, dynamic> map) {
    return IpsecServerIpsecConfig(
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : (map['ipsecAuthAlg'] as String).input(),
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : (map['ipsecEncAlg'] as String).input(),
      ipsecLifetime: map['ipsecLifetime'] == null ? null : (map['ipsecLifetime'] as int).input(),
      ipsecPfs: map['ipsecPfs'] == null ? null : (map['ipsecPfs'] as String).input(),
    );
  }
}

