// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig {
  /// IKE auth Algorithm.
  final pulumi.Input<String> ikeAuthAlg;
  /// IKE encript algorithm.
  final pulumi.Input<String> ikeEncAlg;
  /// IKE lifetime.
  final pulumi.Input<int> ikeLifetime;
  /// IKE Mode.
  final pulumi.Input<String> ikeMode;
  /// DH Group.
  final pulumi.Input<String> ikePfs;
  /// IKE Version.
  final pulumi.Input<String> ikeVersion;
  /// The local Id.
  final pulumi.Input<String> localId;
  /// Preshared secret key.
  final pulumi.Input<String> psk;
  /// Remote ID.
  final pulumi.Input<String> remoteId;

  /// Creates a new [GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig].
  /// [ikeAuthAlg] IKE auth Algorithm.
  /// [ikeEncAlg] IKE encript algorithm.
  /// [ikeLifetime] IKE lifetime.
  /// [ikeMode] IKE Mode.
  /// [ikePfs] DH Group.
  /// [ikeVersion] IKE Version.
  /// [localId] The local Id.
  /// [psk] Preshared secret key.
  /// [remoteId] Remote ID.
  GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig({
    required this.ikeAuthAlg,
    required this.ikeEncAlg,
    required this.ikeLifetime,
    required this.ikeMode,
    required this.ikePfs,
    required this.ikeVersion,
    required this.localId,
    required this.psk,
    required this.remoteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ikeAuthAlg': ikeAuthAlg,
      'ikeEncAlg': ikeEncAlg,
      'ikeLifetime': ikeLifetime,
      'ikeMode': ikeMode,
      'ikePfs': ikePfs,
      'ikeVersion': ikeVersion,
      'localId': localId,
      'psk': psk,
      'remoteId': remoteId,
    };
  }

  factory GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig(
      ikeAuthAlg: (map['ikeAuthAlg'] as String).input(),
      ikeEncAlg: (map['ikeEncAlg'] as String).input(),
      ikeLifetime: (map['ikeLifetime'] as int).input(),
      ikeMode: (map['ikeMode'] as String).input(),
      ikePfs: (map['ikePfs'] as String).input(),
      ikeVersion: (map['ikeVersion'] as String).input(),
      localId: (map['localId'] as String).input(),
      psk: (map['psk'] as String).input(),
      remoteId: (map['remoteId'] as String).input(),
    );
  }
}

