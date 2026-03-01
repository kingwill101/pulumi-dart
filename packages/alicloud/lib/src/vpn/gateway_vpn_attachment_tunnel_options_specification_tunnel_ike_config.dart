// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig {
  final String? ikeAuthAlg;
  final String? ikeEncAlg;
  final int? ikeLifetime;
  final String? ikeMode;
  final String? ikePfs;
  final String? ikeVersion;
  final String? localId;
  final String? psk;
  final String? remoteId;

  /// Creates a new [GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig].
  /// [ikeAuthAlg] Optional.
  /// [ikeEncAlg] Optional.
  /// [ikeLifetime] Optional.
  /// [ikeMode] Optional.
  /// [ikePfs] Optional.
  /// [ikeVersion] Optional.
  /// [localId] Optional.
  /// [psk] Optional.
  /// [remoteId] Optional.
  GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig({
    this.ikeAuthAlg,
    this.ikeEncAlg,
    this.ikeLifetime,
    this.ikeMode,
    this.ikePfs,
    this.ikeVersion,
    this.localId,
    this.psk,
    this.remoteId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ikeAuthAlg': ?ikeAuthAlg,
      'ikeEncAlg': ?ikeEncAlg,
      'ikeLifetime': ?ikeLifetime,
      'ikeMode': ?ikeMode,
      'ikePfs': ?ikePfs,
      'ikeVersion': ?ikeVersion,
      'localId': ?localId,
      'psk': ?psk,
      'remoteId': ?remoteId,
    };
  }

  factory GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentTunnelOptionsSpecificationTunnelIkeConfig(
      ikeAuthAlg: map['ikeAuthAlg'] == null ? null : map['ikeAuthAlg'] as String,
      ikeEncAlg: map['ikeEncAlg'] == null ? null : map['ikeEncAlg'] as String,
      ikeLifetime: map['ikeLifetime'] == null ? null : map['ikeLifetime'] as int,
      ikeMode: map['ikeMode'] == null ? null : map['ikeMode'] as String,
      ikePfs: map['ikePfs'] == null ? null : map['ikePfs'] as String,
      ikeVersion: map['ikeVersion'] == null ? null : map['ikeVersion'] as String,
      localId: map['localId'] == null ? null : map['localId'] as String,
      psk: map['psk'] == null ? null : map['psk'] as String,
      remoteId: map['remoteId'] == null ? null : map['remoteId'] as String,
    );
  }
}

