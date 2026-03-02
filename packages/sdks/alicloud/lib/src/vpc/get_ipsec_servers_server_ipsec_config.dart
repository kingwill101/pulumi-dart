// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpsecServersServerIpsecConfig {
  /// IPsec authentication algorithm.
  final pulumi.Input<String> ipsecAuthAlg;
  /// IPsec encryption algorithm.
  final pulumi.Input<String> ipsecEncAlg;
  /// IPsec survival time. Unit: seconds.
  final pulumi.Input<int> ipsecLifetime;
  /// Diffie-Hellman key exchange algorithm.
  final pulumi.Input<String> ipsecPfs;

  /// Creates a new [GetIpsecServersServerIpsecConfig].
  /// [ipsecAuthAlg] IPsec authentication algorithm.
  /// [ipsecEncAlg] IPsec encryption algorithm.
  /// [ipsecLifetime] IPsec survival time. Unit: seconds.
  /// [ipsecPfs] Diffie-Hellman key exchange algorithm.
  GetIpsecServersServerIpsecConfig({
    required this.ipsecAuthAlg,
    required this.ipsecEncAlg,
    required this.ipsecLifetime,
    required this.ipsecPfs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipsecAuthAlg': ipsecAuthAlg,
      'ipsecEncAlg': ipsecEncAlg,
      'ipsecLifetime': ipsecLifetime,
      'ipsecPfs': ipsecPfs,
    };
  }

  factory GetIpsecServersServerIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GetIpsecServersServerIpsecConfig(
      ipsecAuthAlg: (map['ipsecAuthAlg'] as String).input(),
      ipsecEncAlg: (map['ipsecEncAlg'] as String).input(),
      ipsecLifetime: (map['ipsecLifetime'] as int).input(),
      ipsecPfs: (map['ipsecPfs'] as String).input(),
    );
  }
}

