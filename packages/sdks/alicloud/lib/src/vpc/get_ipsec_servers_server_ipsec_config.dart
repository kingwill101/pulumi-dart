// ignore_for_file: unused_element, unnecessary_cast


class GetIpsecServersServerIpsecConfig {
  /// IPsec authentication algorithm.
  final String ipsecAuthAlg;
  /// IPsec encryption algorithm.
  final String ipsecEncAlg;
  /// IPsec survival time. Unit: seconds.
  final int ipsecLifetime;
  /// Diffie-Hellman key exchange algorithm.
  final String ipsecPfs;

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
      ipsecAuthAlg: map['ipsecAuthAlg'] as String,
      ipsecEncAlg: map['ipsecEncAlg'] as String,
      ipsecLifetime: map['ipsecLifetime'] as int,
      ipsecPfs: map['ipsecPfs'] as String,
    );
  }
}

