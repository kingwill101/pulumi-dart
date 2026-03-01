// ignore_for_file: unused_element, unnecessary_cast

import 'connection_type.dart';

/// Connection profile for how users connect to lab virtual machines.
class ConnectionProfile {
  /// The enabled access level for Client Access over RDP.
  final ConnectionType? clientRdpAccess;
  /// The enabled access level for Client Access over SSH.
  final ConnectionType? clientSshAccess;
  /// The enabled access level for Web Access over RDP.
  final ConnectionType? webRdpAccess;
  /// The enabled access level for Web Access over SSH.
  final ConnectionType? webSshAccess;

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
      'clientRdpAccess': ?clientRdpAccess == null ? null : clientRdpAccess!.value,
      'clientSshAccess': ?clientSshAccess == null ? null : clientSshAccess!.value,
      'webRdpAccess': ?webRdpAccess == null ? null : webRdpAccess!.value,
      'webSshAccess': ?webSshAccess == null ? null : webSshAccess!.value,
    };
  }

  factory ConnectionProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfile(
      clientRdpAccess: map['clientRdpAccess'] == null ? null : ConnectionType.fromValue(map['clientRdpAccess'] as String),
      clientSshAccess: map['clientSshAccess'] == null ? null : ConnectionType.fromValue(map['clientSshAccess'] as String),
      webRdpAccess: map['webRdpAccess'] == null ? null : ConnectionType.fromValue(map['webRdpAccess'] as String),
      webSshAccess: map['webSshAccess'] == null ? null : ConnectionType.fromValue(map['webSshAccess'] as String),
    );
  }
}

