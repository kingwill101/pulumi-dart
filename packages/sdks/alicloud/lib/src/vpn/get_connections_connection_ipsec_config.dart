// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionIpsecConfig {
  /// IPsec Auth algorithm.
  final pulumi.Input<String>? ipsecAuthAlg;
  /// IPsec Encript algorithm.
  final pulumi.Input<String>? ipsecEncAlg;
  /// IPsec lifetime.
  final pulumi.Input<int>? ipsecLifetime;
  /// DH Group.
  final pulumi.Input<String>? ipsecPfs;

  /// Creates a new [GetConnectionsConnectionIpsecConfig].
  /// [ipsecAuthAlg] IPsec Auth algorithm.
  /// [ipsecEncAlg] IPsec Encript algorithm.
  /// [ipsecLifetime] IPsec lifetime.
  /// [ipsecPfs] DH Group.
  GetConnectionsConnectionIpsecConfig({
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

  factory GetConnectionsConnectionIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionIpsecConfig(
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : (map['ipsecAuthAlg'] as String).input(),
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : (map['ipsecEncAlg'] as String).input(),
      ipsecLifetime: map['ipsecLifetime'] == null ? null : (map['ipsecLifetime'] as int).input(),
      ipsecPfs: map['ipsecPfs'] == null ? null : (map['ipsecPfs'] as String).input(),
    );
  }
}

