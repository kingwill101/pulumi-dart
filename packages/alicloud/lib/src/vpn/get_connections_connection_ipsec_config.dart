// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionIpsecConfig {
  /// IPsec Auth algorithm.
  final String? ipsecAuthAlg;
  /// IPsec Encript algorithm.
  final String? ipsecEncAlg;
  /// IPsec lifetime.
  final int? ipsecLifetime;
  /// DH Group.
  final String? ipsecPfs;

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
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : map['ipsecAuthAlg'] as String,
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : map['ipsecEncAlg'] as String,
      ipsecLifetime: map['ipsecLifetime'] == null ? null : map['ipsecLifetime'] as int,
      ipsecPfs: map['ipsecPfs'] == null ? null : map['ipsecPfs'] as String,
    );
  }
}

