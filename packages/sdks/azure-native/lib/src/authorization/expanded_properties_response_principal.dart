// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the principal
class ExpandedPropertiesResponsePrincipal {
  /// Display name of the principal
  final pulumi.Input<String>? displayName;
  /// Email id of the principal
  final pulumi.Input<String>? email;
  /// Id of the principal
  final pulumi.Input<String>? id;
  /// Type of the principal
  final pulumi.Input<String>? type;

  /// Creates a new [ExpandedPropertiesResponsePrincipal].
  /// [displayName] Display name of the principal
  /// [email] Email id of the principal
  /// [id] Id of the principal
  /// [type] Type of the principal
  ExpandedPropertiesResponsePrincipal({
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

  factory ExpandedPropertiesResponsePrincipal.fromMap(Map<String, dynamic> map) {
    return ExpandedPropertiesResponsePrincipal(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      email: map['email'] == null ? null : (map['email']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

