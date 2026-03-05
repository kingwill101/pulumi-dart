// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The name of the entity last modified it
class PrincipalResponse {
  /// The name of the principal made changes
  final pulumi.Input<String>? displayName;
  /// Email of principal
  final pulumi.Input<String>? email;
  /// The id of the principal made changes
  final pulumi.Input<String>? id;
  /// Type of principal such as user , group etc
  final pulumi.Input<String>? type;

  /// Creates a new [PrincipalResponse].
  /// [displayName] The name of the principal made changes
  /// [email] Email of principal
  /// [id] The id of the principal made changes
  /// [type] Type of principal such as user , group etc
  PrincipalResponse({
    this.displayName,
    this.email,
    this.id,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'email': ?email,
      'id': ?id,
      'type': ?type,
    };
  }

  factory PrincipalResponse.fromMap(Map<String, dynamic> map) {
    return PrincipalResponse(
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      email: (() { final guardedValue = map['email']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

