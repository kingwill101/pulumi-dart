// ignore_for_file: unused_element, unnecessary_cast


/// Connection profile for how users connect to lab virtual machines.
class ConnectionProfileResponse {
  /// The enabled access level for Client Access over RDP.
  final String? clientRdpAccess;
  /// The enabled access level for Client Access over SSH.
  final String? clientSshAccess;
  /// The enabled access level for Web Access over RDP.
  final String? webRdpAccess;
  /// The enabled access level for Web Access over SSH.
  final String? webSshAccess;

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
      clientRdpAccess: map['clientRdpAccess'] == null ? null : map['clientRdpAccess'] as String,
      clientSshAccess: map['clientSshAccess'] == null ? null : map['clientSshAccess'] as String,
      webRdpAccess: map['webRdpAccess'] == null ? null : map['webRdpAccess'] as String,
      webSshAccess: map['webSshAccess'] == null ? null : map['webSshAccess'] as String,
    );
  }
}

