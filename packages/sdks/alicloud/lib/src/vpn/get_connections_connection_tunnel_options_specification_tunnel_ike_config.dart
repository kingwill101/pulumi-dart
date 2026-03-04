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

  factory GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig(
      ikeAuthAlg: pulumi.Input.fromValue(map['ikeAuthAlg'] as String),
      ikeEncAlg: pulumi.Input.fromValue(map['ikeEncAlg'] as String),
      ikeLifetime: pulumi.Input.fromValue(map['ikeLifetime'] as int),
      ikeMode: pulumi.Input.fromValue(map['ikeMode'] as String),
      ikePfs: pulumi.Input.fromValue(map['ikePfs'] as String),
      ikeVersion: pulumi.Input.fromValue(map['ikeVersion'] as String),
      localId: pulumi.Input.fromValue(map['localId'] as String),
      psk: pulumi.Input.fromValue(map['psk'] as String),
      remoteId: pulumi.Input.fromValue(map['remoteId'] as String),
    );
  }
}
