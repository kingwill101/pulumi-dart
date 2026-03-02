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
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

