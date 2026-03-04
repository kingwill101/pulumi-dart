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
      ikeAuthAlg: (() {
        final guardedValue = map['ikeAuthAlg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikeEncAlg: (() {
        final guardedValue = map['ikeEncAlg'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikeLifetime: (() {
        final guardedValue = map['ikeLifetime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ikeLocalId: (() {
        final guardedValue = map['ikeLocalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikeMode: (() {
        final guardedValue = map['ikeMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikePfs: (() {
        final guardedValue = map['ikePfs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikeRemoteId: (() {
        final guardedValue = map['ikeRemoteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ikeVersion: (() {
        final guardedValue = map['ikeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      psk: (() {
        final guardedValue = map['psk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
