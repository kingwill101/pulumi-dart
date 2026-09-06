// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PrincipalDefinition properties of Rule
class PrincipalDefinitionResponse {
  /// A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  final pulumi.Input<List<Map<String, String>>?>? attributes;
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  final pulumi.Input<List<String>?>? clientIds;
  /// A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  final pulumi.Input<List<String>?>? usernames;

  /// Creates a new [PrincipalDefinitionResponse].
  /// [attributes] A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  /// [clientIds] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  /// [usernames] A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  const PrincipalDefinitionResponse({
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

  factory PrincipalDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalDefinitionResponse(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Map<String, String>>(guardedValue, (value) => (value as Map).cast<String, String>())); })(),
      clientIds: (() { final guardedValue = map['clientIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usernames: (() { final guardedValue = map['usernames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
