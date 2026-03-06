// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Connection profile for how users connect to lab virtual machines.
class ConnectionProfileResponse {
  /// The enabled access level for Client Access over RDP.
  final pulumi.Input<String>? clientRdpAccess;
  /// The enabled access level for Client Access over SSH.
  final pulumi.Input<String>? clientSshAccess;
  /// The enabled access level for Web Access over RDP.
  final pulumi.Input<String>? webRdpAccess;
  /// The enabled access level for Web Access over SSH.
  final pulumi.Input<String>? webSshAccess;

  /// Creates a new [ConnectionProfileResponse].
  /// [clientRdpAccess] The enabled access level for Client Access over RDP.
  /// [clientSshAccess] The enabled access level for Client Access over SSH.
  /// [webRdpAccess] The enabled access level for Web Access over RDP.
  /// [webSshAccess] The enabled access level for Web Access over SSH.
  const ConnectionProfileResponse({
    this.clientRdpAccess,
    this.clientSshAccess,
    this.webRdpAccess,
    this.webSshAccess,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientRdpAccess': ?clientRdpAccess,
      'clientSshAccess': ?clientSshAccess,
      'webRdpAccess': ?webRdpAccess,
      'webSshAccess': ?webSshAccess,
    };
  }

  factory ConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileResponse(
      clientRdpAccess: (() { final guardedValue = map['clientRdpAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientSshAccess: (() { final guardedValue = map['clientSshAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webRdpAccess: (() { final guardedValue = map['webRdpAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webSshAccess: (() { final guardedValue = map['webSshAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

