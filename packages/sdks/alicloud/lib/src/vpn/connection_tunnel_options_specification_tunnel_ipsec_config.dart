// ignore_for_file: unused_element, unnecessary_cast


class ConnectionTunnelOptionsSpecificationTunnelIpsecConfig {
  final String? ipsecAuthAlg;
  final String? ipsecEncAlg;
  final int? ipsecLifetime;
  final String? ipsecPfs;

  /// Creates a new [ConnectionTunnelOptionsSpecificationTunnelIpsecConfig].
  /// [ipsecAuthAlg] Optional.
  /// [ipsecEncAlg] Optional.
  /// [ipsecLifetime] Optional.
  /// [ipsecPfs] Optional.
  ConnectionTunnelOptionsSpecificationTunnelIpsecConfig({
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

  factory ConnectionTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionTunnelOptionsSpecificationTunnelIpsecConfig(
      ipsecAuthAlg: map['ipsecAuthAlg'] == null ? null : map['ipsecAuthAlg'] as String,
      ipsecEncAlg: map['ipsecEncAlg'] == null ? null : map['ipsecEncAlg'] as String,
      ipsecLifetime: map['ipsecLifetime'] == null ? null : map['ipsecLifetime'] as int,
      ipsecPfs: map['ipsecPfs'] == null ? null : map['ipsecPfs'] as String,
    );
  }
}

