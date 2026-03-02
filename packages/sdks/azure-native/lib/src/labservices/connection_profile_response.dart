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
  ConnectionProfileResponse({
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
      clientRdpAccess: map['clientRdpAccess'] == null ? null : (map['clientRdpAccess'] as String).input(),
      clientSshAccess: map['clientSshAccess'] == null ? null : (map['clientSshAccess'] as String).input(),
      webRdpAccess: map['webRdpAccess'] == null ? null : (map['webRdpAccess'] as String).input(),
      webSshAccess: map['webSshAccess'] == null ? null : (map['webSshAccess'] as String).input(),
    );
  }
}

