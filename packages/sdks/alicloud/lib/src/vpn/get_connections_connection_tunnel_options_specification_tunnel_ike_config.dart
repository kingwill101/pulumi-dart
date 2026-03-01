// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionTunnelOptionsSpecificationTunnelIkeConfig {
  /// IKE auth Algorithm.
  final String ikeAuthAlg;
  /// IKE encript algorithm.
  final String ikeEncAlg;
  /// IKE lifetime.
  final int ikeLifetime;
  /// IKE Mode.
  final String ikeMode;
  /// DH Group.
  final String ikePfs;
  /// IKE Version.
  final String ikeVersion;
  /// The local Id.
  final String localId;
  /// Preshared secret key.
  final String psk;
  /// Remote ID.
  final String remoteId;

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
      ikeAuthAlg: map['ikeAuthAlg'] as String,
      ikeEncAlg: map['ikeEncAlg'] as String,
      ikeLifetime: map['ikeLifetime'] as int,
      ikeMode: map['ikeMode'] as String,
      ikePfs: map['ikePfs'] as String,
      ikeVersion: map['ikeVersion'] as String,
      localId: map['localId'] as String,
      psk: map['psk'] as String,
      remoteId: map['remoteId'] as String,
    );
  }
}

