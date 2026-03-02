// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionsConnectionIkeConfig {
  /// IKE auth Algorithm.
  final pulumi.Input<String>? ikeAuthAlg;
  /// IKE encript algorithm.
  final pulumi.Input<String>? ikeEncAlg;
  /// IKE lifetime.
  final pulumi.Input<int>? ikeLifetime;
  /// The identification of the VPN gateway.
  final pulumi.Input<String>? ikeLocalId;
  /// IKE Mode.
  final pulumi.Input<String>? ikeMode;
  /// DH Group.
  final pulumi.Input<String>? ikePfs;
  /// The identification of the customer gateway.
  final pulumi.Input<String>? ikeRemoteId;
  /// IKE Version.
  final pulumi.Input<String>? ikeVersion;
  /// Preshared secret key.
  final pulumi.Input<String>? psk;

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
      ikeAuthAlg: map['ikeAuthAlg'] == null ? null : (map['ikeAuthAlg']! as String).input(),
      ikeEncAlg: map['ikeEncAlg'] == null ? null : (map['ikeEncAlg']! as String).input(),
      ikeLifetime: map['ikeLifetime'] == null ? null : (map['ikeLifetime']! as int).input(),
      ikeLocalId: map['ikeLocalId'] == null ? null : (map['ikeLocalId']! as String).input(),
      ikeMode: map['ikeMode'] == null ? null : (map['ikeMode']! as String).input(),
      ikePfs: map['ikePfs'] == null ? null : (map['ikePfs']! as String).input(),
      ikeRemoteId: map['ikeRemoteId'] == null ? null : (map['ikeRemoteId']! as String).input(),
      ikeVersion: map['ikeVersion'] == null ? null : (map['ikeVersion']! as String).input(),
      psk: map['psk'] == null ? null : (map['psk']! as String).input(),
    );
  }
}

