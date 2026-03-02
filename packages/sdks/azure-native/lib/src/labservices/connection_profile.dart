// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type.dart';

/// Connection profile for how users connect to lab virtual machines.
class ConnectionProfile {
  /// The enabled access level for Client Access over RDP.
  final pulumi.Input<ConnectionType>? clientRdpAccess;
  /// The enabled access level for Client Access over SSH.
  final pulumi.Input<ConnectionType>? clientSshAccess;
  /// The enabled access level for Web Access over RDP.
  final pulumi.Input<ConnectionType>? webRdpAccess;
  /// The enabled access level for Web Access over SSH.
  final pulumi.Input<ConnectionType>? webSshAccess;

  /// Creates a new [ConnectionProfile].
  /// [clientRdpAccess] The enabled access level for Client Access over RDP.
  /// [clientSshAccess] The enabled access level for Client Access over SSH.
  /// [webRdpAccess] The enabled access level for Web Access over RDP.
  /// [webSshAccess] The enabled access level for Web Access over SSH.
  ConnectionProfile({
    this.clientRdpAccess,
    this.clientSshAccess,
    this.webRdpAccess,
    this.webSshAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRdpAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(clientRdpAccess, (value) => value.value),
      'clientSshAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(clientSshAccess, (value) => value.value),
      'webRdpAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(webRdpAccess, (value) => value.value),
      'webSshAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(webSshAccess, (value) => value.value),
    };
  }

  factory ConnectionProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfile(
      clientRdpAccess: map['clientRdpAccess'] == null ? null : (ConnectionType.fromValue(map['clientRdpAccess'] as String)).input(),
      clientSshAccess: map['clientSshAccess'] == null ? null : (ConnectionType.fromValue(map['clientSshAccess'] as String)).input(),
      webRdpAccess: map['webRdpAccess'] == null ? null : (ConnectionType.fromValue(map['webRdpAccess'] as String)).input(),
      webSshAccess: map['webSshAccess'] == null ? null : (ConnectionType.fromValue(map['webSshAccess'] as String)).input(),
    );
  }
}

