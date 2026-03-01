// ignore_for_file: unused_element, unnecessary_cast


class GetIpsecServersServerIkeConfig {
  /// The IKE authentication algorithm.
  final String ikeAuthAlg;
  /// The IKE encryption algorithm.
  final String ikeEncAlg;
  /// The IKE lifetime. Unit: seconds.
  final int ikeLifetime;
  /// The IKE negotiation mode.
  final String ikeMode;
  /// Diffie-Hellman key exchange algorithm.
  final String ikePfs;
  /// The IKE version.
  final String ikeVersion;
  /// IPsec server identifier. Supports the format of FQDN and IP address. The public IP address of the VPN gateway is selected by default.
  final String localId;
  /// The peer identifier. Supports the format of FQDN and IP address, which is empty by default.
  final String remoteId;

  /// Creates a new [GetIpsecServersServerIkeConfig].
  /// [ikeAuthAlg] The IKE authentication algorithm.
  /// [ikeEncAlg] The IKE encryption algorithm.
  /// [ikeLifetime] The IKE lifetime. Unit: seconds.
  /// [ikeMode] The IKE negotiation mode.
  /// [ikePfs] Diffie-Hellman key exchange algorithm.
  /// [ikeVersion] The IKE version.
  /// [localId] IPsec server identifier. Supports the format of FQDN and IP address. The public IP address of the VPN gateway is selected by default.
  /// [remoteId] The peer identifier. Supports the format of FQDN and IP address, which is empty by default.
  GetIpsecServersServerIkeConfig({
    required this.ikeAuthAlg,
    required this.ikeEncAlg,
    required this.ikeLifetime,
    required this.ikeMode,
    required this.ikePfs,
    required this.ikeVersion,
    required this.localId,
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
      'remoteId': remoteId,
    };
  }

  factory GetIpsecServersServerIkeConfig.fromMap(Map<String, dynamic> map) {
    return GetIpsecServersServerIkeConfig(
      ikeAuthAlg: map['ikeAuthAlg'] as String,
      ikeEncAlg: map['ikeEncAlg'] as String,
      ikeLifetime: map['ikeLifetime'] as int,
      ikeMode: map['ikeMode'] as String,
      ikePfs: map['ikePfs'] as String,
      ikeVersion: map['ikeVersion'] as String,
      localId: map['localId'] as String,
      remoteId: map['remoteId'] as String,
    );
  }
}

