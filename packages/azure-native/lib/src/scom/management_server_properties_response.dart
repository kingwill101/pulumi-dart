// ignore_for_file: unused_element, unnecessary_cast


/// The properties of management server
class ManagementServerPropertiesResponse {
  /// Management server Fully Qualified Domain Name.
  final String fqdn;
  /// Management server health state.
  final String healthState;
  /// Management server Name
  final String serverName;
  /// Represent whether the Server is a Management Server and/or Web Console Server.
  final String serverRoles;
  /// Azure VM Resource Id of the Management server.
  final String vmResId;

  /// Creates a new [ManagementServerPropertiesResponse].
  /// [fqdn] Management server Fully Qualified Domain Name.
  /// [healthState] Management server health state.
  /// [serverName] Management server Name
  /// [serverRoles] Represent whether the Server is a Management Server and/or Web Console Server.
  /// [vmResId] Azure VM Resource Id of the Management server.
  ManagementServerPropertiesResponse({
    required this.fqdn,
    required this.healthState,
    required this.serverName,
    required this.serverRoles,
    required this.vmResId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fqdn': fqdn,
      'healthState': healthState,
      'serverName': serverName,
      'serverRoles': serverRoles,
      'vmResId': vmResId,
    };
  }

  factory ManagementServerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ManagementServerPropertiesResponse(
      fqdn: map['fqdn'] as String,
      healthState: map['healthState'] as String,
      serverName: map['serverName'] as String,
      serverRoles: map['serverRoles'] as String,
      vmResId: map['vmResId'] as String,
    );
  }
}

