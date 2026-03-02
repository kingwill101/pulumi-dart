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
      ikeAuthAlg: (map['ikeAuthAlg'] as String).input(),
      ikeEncAlg: (map['ikeEncAlg'] as String).input(),
      ikeLifetime: (map['ikeLifetime'] as int).input(),
      ikeMode: (map['ikeMode'] as String).input(),
      ikePfs: (map['ikePfs'] as String).input(),
      ikeVersion: (map['ikeVersion'] as String).input(),
      localId: (map['localId'] as String).input(),
      remoteId: (map['remoteId'] as String).input(),
    );
  }
}

