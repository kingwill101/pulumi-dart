// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionTunnelOptionsSpecificationTunnelIkeConfig {
  final pulumi.Input<String>? ikeAuthAlg;
  final pulumi.Input<String>? ikeEncAlg;
  final pulumi.Input<int>? ikeLifetime;
  final pulumi.Input<String>? ikeMode;
  final pulumi.Input<String>? ikePfs;
  final pulumi.Input<String>? ikeVersion;

  /// The identifier of the tunnel on the Alibaba Cloud side, which is used in Phase 1 negotiations. It can contain at most 100 characters. The default value is the IP address of the tunnel.
  /// LocalId supports fully qualified domain names (FQDNs). If you use an FQDN, we recommend that you set the negotiation mode to aggressive.
  final pulumi.Input<String>? localId;
  final pulumi.Input<String>? psk;

  /// The identifier of the tunnel peer, which is used in Phase 1 negotiations. It can contain at most 100 characters. The default value is the IP address of the customer gateway that is associated with the tunnel.
  /// RemoteId supports FQDNs. If you use an FQDN, we recommend that you set the negotiation mode to aggressive.
  final pulumi.Input<String>? remoteId;

  /// Creates a new [ConnectionTunnelOptionsSpecificationTunnelIkeConfig].
  /// [ikeAuthAlg] Optional.
  /// [ikeEncAlg] Optional.
  /// [ikeLifetime] Optional.
  /// [ikeMode] Optional.
  /// [ikePfs] Optional.
  /// [ikeVersion] Optional.
  /// [localId] The identifier of the tunnel on the Alibaba Cloud side, which is used in Phase 1 negotiations. It can contain at most 100 characters. The default value is the IP address of the tunnel.
  /// [psk] Optional.
  /// [remoteId] The identifier of the tunnel peer, which is used in Phase 1 negotiations. It can contain at most 100 characters. The default value is the IP address of the customer gateway that is associated with the tunnel.
  ConnectionTunnelOptionsSpecificationTunnelIkeConfig({
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

  factory ConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectionTunnelOptionsSpecificationTunnelIkeConfig(
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
      ikeVersion: (() {
        final guardedValue = map['ikeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      localId: (() {
        final guardedValue = map['localId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      psk: (() {
        final guardedValue = map['psk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      remoteId: (() {
        final guardedValue = map['remoteId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
