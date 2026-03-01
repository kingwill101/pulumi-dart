// ignore_for_file: unused_element, unnecessary_cast


/// PrincipalDefinition properties of Rule
class PrincipalDefinition {
  /// A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  final List<Map<String, String>>? attributes;
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  final List<String>? clientIds;
  /// A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  final List<String>? usernames;

  /// Creates a new [PrincipalDefinition].
  /// [attributes] A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  /// [clientIds] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  /// [usernames] A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  PrincipalDefinition({
    this.attributes,
    this.clientIds,
    this.usernames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'clientIds': ?clientIds,
      'usernames': ?usernames,
    };
  }

  factory PrincipalDefinition.fromMap(Map<String, dynamic> map) {
    return PrincipalDefinition(
      attributes: map['attributes'] == null ? null : (map['attributes'] as List).cast<Map<String, String>>(),
      clientIds: map['clientIds'] == null ? null : (map['clientIds'] as List).cast<String>(),
      usernames: map['usernames'] == null ? null : (map['usernames'] as List).cast<String>(),
    );
  }
}

