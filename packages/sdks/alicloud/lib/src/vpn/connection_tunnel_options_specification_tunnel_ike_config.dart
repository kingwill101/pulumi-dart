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

  factory ConnectionTunnelOptionsSpecificationTunnelIkeConfig.fromMap(Map<String, dynamic> map) {
    return ConnectionTunnelOptionsSpecificationTunnelIkeConfig(
      ikeAuthAlg: map['ikeAuthAlg'] == null ? null : (map['ikeAuthAlg'] as String).input(),
      ikeEncAlg: map['ikeEncAlg'] == null ? null : (map['ikeEncAlg'] as String).input(),
      ikeLifetime: map['ikeLifetime'] == null ? null : (map['ikeLifetime'] as int).input(),
      ikeMode: map['ikeMode'] == null ? null : (map['ikeMode'] as String).input(),
      ikePfs: map['ikePfs'] == null ? null : (map['ikePfs'] as String).input(),
      ikeVersion: map['ikeVersion'] == null ? null : (map['ikeVersion'] as String).input(),
      localId: map['localId'] == null ? null : (map['localId'] as String).input(),
      psk: map['psk'] == null ? null : (map['psk'] as String).input(),
      remoteId: map['remoteId'] == null ? null : (map['remoteId'] as String).input(),
    );
  }
}

