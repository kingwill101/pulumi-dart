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
      ipsecAuthAlg: pulumi.Input.fromValue(map['ipsecAuthAlg'] as String),
      ipsecEncAlg: pulumi.Input.fromValue(map['ipsecEncAlg'] as String),
      ipsecLifetime: pulumi.Input.fromValue(map['ipsecLifetime'] as int),
      ipsecPfs: pulumi.Input.fromValue(map['ipsecPfs'] as String),
    );
  }
}

