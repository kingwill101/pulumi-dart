// ignore_for_file: unused_element, unnecessary_cast


class IpsecServerIkeConfig {
  /// The authentication algorithm that is used in Phase 1 negotiations. Default value: `sha1`.
  final String? ikeAuthAlg;
  /// The encryption algorithm that is used in Phase 1 negotiations. Default value: `aes`.
  final String? ikeEncAlg;
  /// IkeLifetime: the SA lifetime determined by Phase 1 negotiations. Valid values: `0` to `86400`. Default value: `86400`. Unit: `seconds`.
  final int? ikeLifetime;
  /// The IKE negotiation mode. Default value: `main`.
  final String? ikeMode;
  /// The Diffie-Hellman key exchange algorithm that is used in Phase 1 negotiations. Default value: `group2`.
  final String? ikePfs;
  /// The IKE version. Valid values: `ikev1` and `ikev2`. Default value: `ikev2`.
  final String? ikeVersion;
  /// The identifier of the IPsec server. The value can be a fully qualified domain name (FQDN) or an IP address. The default value is the public IP address of the VPN gateway.
  final String? localId;
  /// The identifier of the customer gateway. The value can be an FQDN or an IP address. By default, this parameter is not specified.
  final String? remoteId;

  /// Creates a new [IpsecServerIkeConfig].
  /// [ikeAuthAlg] The authentication algorithm that is used in Phase 1 negotiations. Default value: `sha1`.
  /// [ikeEncAlg] The encryption algorithm that is used in Phase 1 negotiations. Default value: `aes`.
  /// [ikeLifetime] IkeLifetime: the SA lifetime determined by Phase 1 negotiations. Valid values: `0` to `86400`. Default value: `86400`. Unit: `seconds`.
  /// [ikeMode] The IKE negotiation mode. Default value: `main`.
  /// [ikePfs] The Diffie-Hellman key exchange algorithm that is used in Phase 1 negotiations. Default value: `group2`.
  /// [ikeVersion] The IKE version. Valid values: `ikev1` and `ikev2`. Default value: `ikev2`.
  /// [localId] The identifier of the IPsec server. The value can be a fully qualified domain name (FQDN) or an IP address. The default value is the public IP address of the VPN gateway.
  /// [remoteId] The identifier of the customer gateway. The value can be an FQDN or an IP address. By default, this parameter is not specified.
  IpsecServerIkeConfig({
    this.ikeAuthAlg,
    this.ikeEncAlg,
    this.ikeLifetime,
    this.ikeMode,
    this.ikePfs,
    this.ikeVersion,
    this.localId,
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
      'remoteId': ?remoteId,
    };
  }

  factory IpsecServerIkeConfig.fromMap(Map<String, dynamic> map) {
    return IpsecServerIkeConfig(
      ikeAuthAlg: map['ikeAuthAlg'] == null ? null : map['ikeAuthAlg'] as String,
      ikeEncAlg: map['ikeEncAlg'] == null ? null : map['ikeEncAlg'] as String,
      ikeLifetime: map['ikeLifetime'] == null ? null : map['ikeLifetime'] as int,
      ikeMode: map['ikeMode'] == null ? null : map['ikeMode'] as String,
      ikePfs: map['ikePfs'] == null ? null : map['ikePfs'] as String,
      ikeVersion: map['ikeVersion'] == null ? null : map['ikeVersion'] as String,
      localId: map['localId'] == null ? null : map['localId'] as String,
      remoteId: map['remoteId'] == null ? null : map['remoteId'] as String,
    );
  }
}

