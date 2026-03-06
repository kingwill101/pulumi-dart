// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig {
  /// The second stage negotiated authentication algorithm.Values: **md5**, **sha1**, **sha256**, **sha384**, **sha512**. Default value: **sha1**.
  final pulumi.Input<String> ipsecAuthAlg;
  /// The encryption algorithm negotiated in the second stage. Value: **aes**, **aes192**, **aes256**, **des**, or **3des**. Default value: **aes**.
  final pulumi.Input<String> ipsecEncAlg;
  /// The life cycle of SA negotiated in the second stage. Unit: seconds.Value range: **0** to **86400**. Default value: **86400**.
  final pulumi.Input<int> ipsecLifetime;
  /// The second stage negotiates the Diffie-Hellman key exchange algorithm used. Default value: **group2**.Values: **disabled**, **group1**, **group2**, **group5**, **group14**.
  final pulumi.Input<String> ipsecPfs;

  /// Creates a new [GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig].
  /// [ipsecAuthAlg] The second stage negotiated authentication algorithm.Values: **md5**, **sha1**, **sha256**, **sha384**, **sha512**. Default value: **sha1**.
  /// [ipsecEncAlg] The encryption algorithm negotiated in the second stage. Value: **aes**, **aes192**, **aes256**, **des**, or **3des**. Default value: **aes**.
  /// [ipsecLifetime] The life cycle of SA negotiated in the second stage. Unit: seconds.Value range: **0** to **86400**. Default value: **86400**.
  /// [ipsecPfs] The second stage negotiates the Diffie-Hellman key exchange algorithm used. Default value: **group2**.Values: **disabled**, **group1**, **group2**, **group5**, **group14**.
  const GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig({
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

  factory GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig.fromMap(Map<String, dynamic> map) {
    return GetGatewayVpnAttachmentsAttachmentTunnelOptionsSpecificationTunnelIpsecConfig(
      ipsecAuthAlg: pulumi.Input.fromValue(map['ipsecAuthAlg'] as String),
      ipsecEncAlg: pulumi.Input.fromValue(map['ipsecEncAlg'] as String),
      ipsecLifetime: pulumi.Input.fromValue(map['ipsecLifetime'] as int),
      ipsecPfs: pulumi.Input.fromValue(map['ipsecPfs'] as String),
    );
  }
}

