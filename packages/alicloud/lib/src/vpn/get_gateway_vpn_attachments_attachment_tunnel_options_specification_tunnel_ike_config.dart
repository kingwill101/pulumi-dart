// ignore_for_file: unused_element, unnecessary_cast


class GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig {
  /// The authentication algorithm negotiated in the first stage. Values: **md5**, **sha1**, **sha256**, **sha384**, **sha512**. Default value: **sha1**.
  final String ikeAuthAlg;
  /// The encryption algorithm negotiated in the first stage. Value: **aes**, **aes192**, **aes256**, **des**, or **3des**. Default value: **aes**.
  final String ikeEncAlg;
  /// The life cycle of SA negotiated in the first stage. Unit: seconds.Value range: **0** to **86400**. Default value: **86400**.
  final int ikeLifetime;
  /// IKE version of the negotiation mode. Value: **main** or **aggressive**. Default value: **main**.-**main**: main mode, high security during negotiation.-**aggressive**: Savage mode, fast negotiation and high negotiation success rate.
  final String ikeMode;
  /// The first stage negotiates the Diffie-Hellman key exchange algorithm used. Default value: **group2**.Values: **group1**, **group2**, **group5**, **group14**.
  final String ikePfs;
  /// Version of the IKE protocol. Value: **ikev1** or **ikev2**. Default value: **ikev2**.Compared with IKEv1, IKEv2 simplifies the SA negotiation process and provides better support for multiple network segments.
  final String ikeVersion;
  /// The identifier of the local end of the tunnel (Alibaba Cloud side), which is used for the first phase of negotiation. The length is limited to 100 characters and cannot contain spaces. The default value is the IP address of the tunnel.**LocalId** supports the FQDN format. If you use the FQDN format, we recommend that you select **aggressive** (barbaric mode) as the negotiation mode.
  final String localId;
  /// The pre-shared key is used for identity authentication between the tunnel and the tunnel peer.-The key can be 1 to 100 characters in length. It supports numbers, upper and lower case English letters, and characters on the right. It cannot contain spaces. '''~! \'@#$%^& *()_-+ ={}[]|;:',./? '''-If you do not specify a pre-shared key, the system randomly generates a 16-bit string as the pre-shared key. > The pre-shared key of the tunnel and the tunnel peer must be the same, otherwise the system cannot establish the tunnel normally.
  final String psk;
  /// Identifier of the tunnel peer, which is used for the first-stage negotiation. The length is limited to 100 characters and cannot contain spaces. The default value is the IP address of the user gateway associated with the tunnel.- **RemoteId** supports the FQDN format. If you use the FQDN format, we recommend that you select **aggressive** (barbaric mode) as the negotiation mode.
  final String remoteId;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig].
  /// [ikeAuthAlg] The authentication algorithm negotiated in the first stage. Values: **md5**, **sha1**, **sha256**, **sha384**, **sha512**. Default value: **sha1**.
  /// [ikeEncAlg] The encryption algorithm negotiated in the first stage. Value: **aes**, **aes192**, **aes256**, **des**, or **3des**. Default value: **aes**.
  /// [ikeLifetime] The life cycle of SA negotiated in the first stage. Unit: seconds.Value range: **0** to **86400**. Default value: **86400**.
  /// [ikeMode] IKE version of the negotiation mode. Value: **main** or **aggressive**. Default value: **main**.-**main**: main mode, high security during negotiation.-**aggressive**: Savage mode, fast negotiation and high negotiation success rate.
  /// [ikePfs] The first stage negotiates the Diffie-Hellman key exchange algorithm used. Default value: **group2**.Values: **group1**, **group2**, **group5**, **group14**.
  /// [ikeVersion] Version of the IKE protocol. Value: **ikev1** or **ikev2**. Default value: **ikev2**.Compared with IKEv1, IKEv2 simplifies the SA negotiation process and provides better support for multiple network segments.
  /// [localId] The identifier of the local end of the tunnel (Alibaba Cloud side), which is used for the first phase of negotiation. The length is limited to 100 characters and cannot contain spaces. The default value is the IP address of the tunnel.**LocalId** supports the FQDN format. If you use the FQDN format, we recommend that you select **aggressive** (barbaric mode) as the negotiation mode.
  /// [psk] The pre-shared key is used for identity authentication between the tunnel and the tunnel peer.-The key can be 1 to 100 characters in length. It supports numbers, upper and lower case English letters, and characters on the right. It cannot contain spaces. '''~! \'@#$%^& *()_-+ ={}[]|;:',./? '''-If you do not specify a pre-shared key, the system randomly generates a 16-bit string as the pre-shared key. > The pre-shared key of the tunnel and the tunnel peer must be the same, otherwise the system cannot establish the tunnel normally.
  /// [remoteId] Identifier of the tunnel peer, which is used for the first-stage negotiation. The length is limited to 100 characters and cannot contain spaces. The default value is the IP address of the user gateway associated with the tunnel.- **RemoteId** supports the FQDN format. If you use the FQDN format, we recommend that you select **aggressive** (barbaric mode) as the negotiation mode.
  GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig({
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

  factory GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIkeConfig(
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

