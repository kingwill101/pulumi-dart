// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionTunnelOptionsSpecificationTunnelIpsecConfig {
  /// IPsec Auth algorithm.
  final pulumi.Input<String> ipsecAuthAlg;
  /// IPsec Encript algorithm.
  final pulumi.Input<String> ipsecEncAlg;
  /// IPsec lifetime.
  final pulumi.Input<int> ipsecLifetime;
  /// DH Group.
  final pulumi.Input<String> ipsecPfs;

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
      ipsecAuthAlg: (map['ipsecAuthAlg'] as String).input(),
      ipsecEncAlg: (map['ipsecEncAlg'] as String).input(),
      ipsecLifetime: (map['ipsecLifetime'] as int).input(),
      ipsecPfs: (map['ipsecPfs'] as String).input(),
    );
  }
}

