// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserIdentityProperties {
  /// The client id of user assigned identity.
  final pulumi.Input<String?>? clientId;
  /// The principal id of user assigned identity.
  final pulumi.Input<String?>? principalId;

  /// Creates a new [UserIdentityProperties].
  /// [clientId] The client id of user assigned identity.
  /// [principalId] The principal id of user assigned identity.
  const UserIdentityProperties({
    this.clientId,
    this.principalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'principalId': ?principalId,
    };
  }

  factory UserIdentityProperties.fromMap(Map<String, dynamic> map) {
    return UserIdentityProperties(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
