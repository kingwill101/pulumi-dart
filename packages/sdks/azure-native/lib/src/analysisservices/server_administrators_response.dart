// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An array of administrator user identities.
class ServerAdministratorsResponse {
  /// An array of administrator user identities.
  final pulumi.Input<List<String>>? members;

  /// Creates a new [ServerAdministratorsResponse].
  /// [members] An array of administrator user identities.
  ServerAdministratorsResponse({
    this.members,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?members,
    };
  }

  factory ServerAdministratorsResponse.fromMap(Map<String, dynamic> map) {
    return ServerAdministratorsResponse(
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

