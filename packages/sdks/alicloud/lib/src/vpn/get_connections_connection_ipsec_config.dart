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
      ipsecAuthAlg: (() { final guardedValue = map['ipsecAuthAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecEncAlg: (() { final guardedValue = map['ipsecEncAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipsecLifetime: (() { final guardedValue = map['ipsecLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ipsecPfs: (() { final guardedValue = map['ipsecPfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

