// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_type.dart';

/// Connection profile for how users connect to lab virtual machines.
class ConnectionProfile {
  /// The enabled access level for Client Access over RDP.
  final pulumi.Input<ConnectionType?>? clientRdpAccess;
  /// The enabled access level for Client Access over SSH.
  final pulumi.Input<ConnectionType?>? clientSshAccess;
  /// The enabled access level for Web Access over RDP.
  final pulumi.Input<ConnectionType?>? webRdpAccess;
  /// The enabled access level for Web Access over SSH.
  final pulumi.Input<ConnectionType?>? webSshAccess;

  /// Creates a new [ConnectionProfile].
  /// [clientRdpAccess] The enabled access level for Client Access over RDP.
  /// [clientSshAccess] The enabled access level for Client Access over SSH.
  /// [webRdpAccess] The enabled access level for Web Access over RDP.
  /// [webSshAccess] The enabled access level for Web Access over SSH.
  ConnectionProfile({
    pulumi.Input<ConnectionType?>? clientRdpAccess,
    pulumi.Input<ConnectionType?>? clientSshAccess,
    pulumi.Input<ConnectionType?>? webRdpAccess,
    pulumi.Input<ConnectionType?>? webSshAccess,
  }) : clientRdpAccess = clientRdpAccess ?? pulumi.Input.fromValue(ConnectionType.fromValue('None')), clientSshAccess = clientSshAccess ?? pulumi.Input.fromValue(ConnectionType.fromValue('None')), webRdpAccess = webRdpAccess ?? pulumi.Input.fromValue(ConnectionType.fromValue('None')), webSshAccess = webSshAccess ?? pulumi.Input.fromValue(ConnectionType.fromValue('None'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRdpAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(clientRdpAccess, (value) => value.wireValue),
      'clientSshAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(clientSshAccess, (value) => value.wireValue),
      'webRdpAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(webRdpAccess, (value) => value.wireValue),
      'webSshAccess': ?pulumi.Input.mapOptionalInputValue<ConnectionType, String>(webSshAccess, (value) => value.wireValue),
    };
  }

  factory ConnectionProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfile(
      clientRdpAccess: (() { final guardedValue = map['clientRdpAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionType.fromValue(guardedValue as String)); })(),
      clientSshAccess: (() { final guardedValue = map['clientSshAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionType.fromValue(guardedValue as String)); })(),
      webRdpAccess: (() { final guardedValue = map['webRdpAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionType.fromValue(guardedValue as String)); })(),
      webSshAccess: (() { final guardedValue = map['webSshAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectionType.fromValue(guardedValue as String)); })(),
    );
  }
}
