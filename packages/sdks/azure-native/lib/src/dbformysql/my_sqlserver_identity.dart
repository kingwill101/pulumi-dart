// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties to configure Identity for Bring your Own Keys
class MySQLServerIdentity {
  /// Type of managed service identity.
  final pulumi.Input<String>? type;

  /// Metadata of user assigned identity.
  final pulumi.Input<List<String>>? userAssignedIdentities;

  /// Creates a new [MySQLServerIdentity].
  /// [type] Type of managed service identity.
  /// [userAssignedIdentities] Metadata of user assigned identity.
  MySQLServerIdentity({this.type, this.userAssignedIdentities});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'userAssignedIdentities': ?userAssignedIdentities,
    };
  }

  factory MySQLServerIdentity.fromMap(Map<String, dynamic> map) {
    return MySQLServerIdentity(
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userAssignedIdentities: (() {
        final guardedValue = map['userAssignedIdentities'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
