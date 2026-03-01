// ignore_for_file: unused_element, unnecessary_cast


class GetConnectionsConnectionIkeConfig {
  /// IKE auth Algorithm.
  final String? ikeAuthAlg;
  /// IKE encript algorithm.
  final String? ikeEncAlg;
  /// IKE lifetime.
  final int? ikeLifetime;
  /// The identification of the VPN gateway.
  final String? ikeLocalId;
  /// IKE Mode.
  final String? ikeMode;
  /// DH Group.
  final String? ikePfs;
  /// The identification of the customer gateway.
  final String? ikeRemoteId;
  /// IKE Version.
  final String? ikeVersion;
  /// Preshared secret key.
  final String? psk;

  /// Creates a new [GetConnectionsConnectionIkeConfig].
  /// [ikeAuthAlg] IKE auth Algorithm.
  /// [ikeEncAlg] IKE encript algorithm.
  /// [ikeLifetime] IKE lifetime.
  /// [ikeLocalId] The identification of the VPN gateway.
  /// [ikeMode] IKE Mode.
  /// [ikePfs] DH Group.
  /// [ikeRemoteId] The identification of the customer gateway.
  /// [ikeVersion] IKE Version.
  /// [psk] Preshared secret key.
  GetConnectionsConnectionIkeConfig({
    this.ikeAuthAlg,
    this.ikeEncAlg,
    this.ikeLifetime,
    this.ikeLocalId,
    this.ikeMode,
    this.ikePfs,
    this.ikeRemoteId,
    this.ikeVersion,
    this.psk,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ikeAuthAlg': ?ikeAuthAlg,
      'ikeEncAlg': ?ikeEncAlg,
      'ikeLifetime': ?ikeLifetime,
      'ikeLocalId': ?ikeLocalId,
      'ikeMode': ?ikeMode,
      'ikePfs': ?ikePfs,
      'ikeRemoteId': ?ikeRemoteId,
      'ikeVersion': ?ikeVersion,
      'psk': ?psk,
    };
  }

  factory GetConnectionsConnectionIkeConfig.fromMap(Map<String, dynamic> map) {
    return GetConnectionsConnectionIkeConfig(
      ikeAuthAlg: map['ikeAuthAlg'] == null ? null : map['ikeAuthAlg'] as String,
      ikeEncAlg: map['ikeEncAlg'] == null ? null : map['ikeEncAlg'] as String,
      ikeLifetime: map['ikeLifetime'] == null ? null : map['ikeLifetime'] as int,
      ikeLocalId: map['ikeLocalId'] == null ? null : map['ikeLocalId'] as String,
      ikeMode: map['ikeMode'] == null ? null : map['ikeMode'] as String,
      ikePfs: map['ikePfs'] == null ? null : map['ikePfs'] as String,
      ikeRemoteId: map['ikeRemoteId'] == null ? null : map['ikeRemoteId'] as String,
      ikeVersion: map['ikeVersion'] == null ? null : map['ikeVersion'] as String,
      psk: map['psk'] == null ? null : map['psk'] as String,
    );
  }
}

