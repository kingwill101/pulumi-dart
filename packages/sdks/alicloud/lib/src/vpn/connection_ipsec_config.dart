// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionIpsecConfig {
  /// the authentication algorithm that is used in Phase 2 negotiations. Valid values: md5, sha1, sha256, sha384, and sha512. Default value: md5.
  final pulumi.Input<String>? ipsecAuthAlg;
  /// the encryption algorithm that is used in Phase 2 negotiations. Valid values: aes, aes192, aes256, des, and 3des. Default value: aes.
  final pulumi.Input<String>? ipsecEncAlg;
  /// the SA lifetime that is determined by Phase 2 negotiations. Unit: seconds. Valid values: 0 to 86400. Default value: 86400.
  final pulumi.Input<int>? ipsecLifetime;
  /// the DH key exchange algorithm that is used in Phase 2 negotiations. Valid values: disabled, group1, group2, group5, and group14. Default value: group2.
  final pulumi.Input<String>? ipsecPfs;

  /// Creates a new [ConnectionIpsecConfig].
  /// [ipsecAuthAlg] the authentication algorithm that is used in Phase 2 negotiations. Valid values: md5, sha1, sha256, sha384, and sha512. Default value: md5.
  /// [ipsecEncAlg] the encryption algorithm that is used in Phase 2 negotiations. Valid values: aes, aes192, aes256, des, and 3des. Default value: aes.
  /// [ipsecLifetime] the SA lifetime that is determined by Phase 2 negotiations. Unit: seconds. Valid values: 0 to 86400. Default value: 86400.
  /// [ipsecPfs] the DH key exchange algorithm that is used in Phase 2 negotiations. Valid values: disabled, group1, group2, group5, and group14. Default value: group2.
  ConnectionIpsecConfig({
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

  factory ConnectionIpsecConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionIpsecConfig(
      ipsecAuthAlg: (() { final guardedValue = map['ipsecAuthAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecEncAlg: (() { final guardedValue = map['ipsecEncAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecLifetime: (() { final guardedValue = map['ipsecLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipsecPfs: (() { final guardedValue = map['ipsecPfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

