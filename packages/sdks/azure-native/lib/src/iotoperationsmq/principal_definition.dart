// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// PrincipalDefinition properties of Basic Rule
class PrincipalDefinition {
  /// A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  final pulumi.Input<List<Map<String, String>>>? attributes;
  /// A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  final pulumi.Input<List<String>>? clientids;
  /// A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  final pulumi.Input<List<String>>? usernames;

  /// Creates a new [PrincipalDefinition].
  /// [attributes] A list of key-value pairs that match the attributes of the clients. The attributes are case-sensitive and must match the attributes provided by the clients during authentication.
  /// [clientids] A list of client IDs that match the clients. The client IDs are case-sensitive and must match the client IDs provided by the clients during connection.
  /// [usernames] A list of usernames that match the clients. The usernames are case-sensitive and must match the usernames provided by the clients during authentication.
  const PrincipalDefinition({
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

  factory PrincipalDefinition.fromMap(Map<String, dynamic> map) {
    return PrincipalDefinition(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<Map<String, String>>()); })(),
      clientids: (() { final guardedValue = map['clientids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      usernames: (() { final guardedValue = map['usernames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

