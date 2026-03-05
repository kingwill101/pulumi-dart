// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetIpsecServersServerIkeConfig {
  /// The IKE authentication algorithm.
  final pulumi.Input<String> ikeAuthAlg;
  /// The IKE encryption algorithm.
  final pulumi.Input<String> ikeEncAlg;
  /// The IKE lifetime. Unit: seconds.
  final pulumi.Input<int> ikeLifetime;
  /// The IKE negotiation mode.
  final pulumi.Input<String> ikeMode;
  /// Diffie-Hellman key exchange algorithm.
  final pulumi.Input<String> ikePfs;
  /// The IKE version.
  final pulumi.Input<String> ikeVersion;
  /// IPsec server identifier. Supports the format of FQDN and IP address. The public IP address of the VPN gateway is selected by default.
  final pulumi.Input<String> localId;
  /// The peer identifier. Supports the format of FQDN and IP address, which is empty by default.
  final pulumi.Input<String> remoteId;

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
      ikeAuthAlg: pulumi.Input.fromValue(map['ikeAuthAlg'] as String),
      ikeEncAlg: pulumi.Input.fromValue(map['ikeEncAlg'] as String),
      ikeLifetime: pulumi.Input.fromValue(map['ikeLifetime'] as int),
      ikeMode: pulumi.Input.fromValue(map['ikeMode'] as String),
      ikePfs: pulumi.Input.fromValue(map['ikePfs'] as String),
      ikeVersion: pulumi.Input.fromValue(map['ikeVersion'] as String),
      localId: pulumi.Input.fromValue(map['localId'] as String),
      remoteId: pulumi.Input.fromValue(map['remoteId'] as String),
    );
  }
}

