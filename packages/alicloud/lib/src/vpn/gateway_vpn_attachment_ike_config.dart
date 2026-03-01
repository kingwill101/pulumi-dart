// ignore_for_file: unused_element, unnecessary_cast


class GatewayVpnAttachmentIkeConfig {
  /// The authentication algorithm negotiated in the first stage. Valid values: md5, sha1, sha256, sha384, sha512. Default value: md5.
  final String? ikeAuthAlg;
  /// The encryption algorithm that is used in Phase 1 negotiations. Valid values: aes, aes192, aes256, des, and 3des. Default value: aes.
  final String? ikeEncAlg;
  /// The SA lifetime as a result of Phase 1 negotiations. Unit: seconds. Valid values: 0 to 86400. Default value: 86400.
  final int? ikeLifetime;
  /// IKE mode, the negotiation mode. Valid values: main and aggressive. Default value: main.
  final String? ikeMode;
  /// The Diffie-Hellman key exchange algorithm used in the first stage negotiation. Valid values: group1, group2, group5, or group14. Default value: group2.
  final String? ikePfs;
  /// The version of the IKE protocol. Value: ikev1 or ikev2. Default value: ikev1.
  final String? ikeVersion;
  /// The identifier on the Alibaba Cloud side of the IPsec connection. The length is limited to 100 characters. The default value is leftId-not-exist
  final String? localId;
  /// A pre-shared key for authentication between the VPN gateway and the local data center. The key length is 1~100 characters.
  /// - If you do not specify a pre-shared key, the system randomly generates a 16-bit string as the pre-shared key.
  /// - The pre-shared key of the IPsec-VPN connection must be the same as the authentication key of the on-premises data center. Otherwise, connections between the on-premises data center and the VPN gateway cannot be established.
  final String? psk;
  /// The identifier of the IPsec connection to the local data center. The length is limited to 100 characters. The default value is the IP address of the user gateway.
  final String? remoteId;

  /// Creates a new [GatewayVpnAttachmentIkeConfig].
  /// [ikeAuthAlg] The authentication algorithm negotiated in the first stage. Valid values: md5, sha1, sha256, sha384, sha512. Default value: md5.
  /// [ikeEncAlg] The encryption algorithm that is used in Phase 1 negotiations. Valid values: aes, aes192, aes256, des, and 3des. Default value: aes.
  /// [ikeLifetime] The SA lifetime as a result of Phase 1 negotiations. Unit: seconds. Valid values: 0 to 86400. Default value: 86400.
  /// [ikeMode] IKE mode, the negotiation mode. Valid values: main and aggressive. Default value: main.
  /// [ikePfs] The Diffie-Hellman key exchange algorithm used in the first stage negotiation. Valid values: group1, group2, group5, or group14. Default value: group2.
  /// [ikeVersion] The version of the IKE protocol. Value: ikev1 or ikev2. Default value: ikev1.
  /// [localId] The identifier on the Alibaba Cloud side of the IPsec connection. The length is limited to 100 characters. The default value is leftId-not-exist
  /// [psk] A pre-shared key for authentication between the VPN gateway and the local data center. The key length is 1~100 characters.
  /// [remoteId] The identifier of the IPsec connection to the local data center. The length is limited to 100 characters. The default value is the IP address of the user gateway.
  GatewayVpnAttachmentIkeConfig({
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

  factory GatewayVpnAttachmentIkeConfig.fromMap(Map<String, dynamic> map) {
    return GatewayVpnAttachmentIkeConfig(
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

