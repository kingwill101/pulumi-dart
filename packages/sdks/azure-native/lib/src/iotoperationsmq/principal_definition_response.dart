// ignore_for_file: unused_element, unnecessary_cast


/// PrincipalDefinition properties of Basic Rule
class PrincipalDefinitionResponse {
  /// A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  final List<Map<String, String>>? attributes;
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  final List<String>? clientids;
  /// A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  final List<String>? usernames;

  /// Creates a new [PrincipalDefinitionResponse].
  /// [attributes] A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  /// [clientids] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  /// [usernames] A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  PrincipalDefinitionResponse({
    this.attributes,
    this.clientids,
    this.usernames,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'clientids': ?clientids,
      'usernames': ?usernames,
    };
  }

  factory PrincipalDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalDefinitionResponse(
      attributes: map['attributes'] == null ? null : (map['attributes'] as List).cast<Map<String, String>>(),
      clientids: map['clientids'] == null ? null : (map['clientids'] as List).cast<String>(),
      usernames: map['usernames'] == null ? null : (map['usernames'] as List).cast<String>(),
    );
  }
}

