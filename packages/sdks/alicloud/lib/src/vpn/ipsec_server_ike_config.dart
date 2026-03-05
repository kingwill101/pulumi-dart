// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IpsecServerIkeConfig {
  /// The authentication algorithm that is used in Phase 1 negotiations. Default value: `sha1`.
  final pulumi.Input<String>? ikeAuthAlg;
  /// The encryption algorithm that is used in Phase 1 negotiations. Default value: `aes`.
  final pulumi.Input<String>? ikeEncAlg;
  /// IkeLifetime: the SA lifetime determined by Phase 1 negotiations. Valid values: `0` to `86400`. Default value: `86400`. Unit: `seconds`.
  final pulumi.Input<int>? ikeLifetime;
  /// The IKE negotiation mode. Default value: `main`.
  final pulumi.Input<String>? ikeMode;
  /// The Diffie-Hellman key exchange algorithm that is used in Phase 1 negotiations. Default value: `group2`.
  final pulumi.Input<String>? ikePfs;
  /// The IKE version. Valid values: `ikev1` and `ikev2`. Default value: `ikev2`.
  final pulumi.Input<String>? ikeVersion;
  /// The identifier of the IPsec server. The value can be a fully qualified domain name (FQDN) or an IP address. The default value is the public IP address of the VPN gateway.
  final pulumi.Input<String>? localId;
  /// The identifier of the customer gateway. The value can be an FQDN or an IP address. By default, this parameter is not specified.
  final pulumi.Input<String>? remoteId;

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
      ikeAuthAlg: (() { final guardedValue = map['ikeAuthAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ikeEncAlg: (() { final guardedValue = map['ikeEncAlg']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ikeLifetime: (() { final guardedValue = map['ikeLifetime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      ikeMode: (() { final guardedValue = map['ikeMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ikePfs: (() { final guardedValue = map['ikePfs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ikeVersion: (() { final guardedValue = map['ikeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localId: (() { final guardedValue = map['localId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteId: (() { final guardedValue = map['remoteId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

