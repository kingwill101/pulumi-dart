// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig {
  /// IPsec Auth algorithm.
  final String ipsecAuthAlg;
  /// IPsec Encript algorithm.
  final String ipsecEncAlg;
  /// IPsec lifetime.
  final int ipsecLifetime;
  /// DH Group.
  final String ipsecPfs;

  /// Creates a new [GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig].
  /// [ipsecAuthAlg] IPsec Auth algorithm.
  /// [ipsecEncAlg] IPsec Encript algorithm.
  /// [ipsecLifetime] IPsec lifetime.
  /// [ipsecPfs] DH Group.
  GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig({
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

  factory GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig(
      ipsecAuthAlg: map['ipsecAuthAlg'] as String,
      ipsecEncAlg: map['ipsecEncAlg'] as String,
      ipsecLifetime: map['ipsecLifetime'] as int,
      ipsecPfs: map['ipsecPfs'] as String,
    );
  }
}

