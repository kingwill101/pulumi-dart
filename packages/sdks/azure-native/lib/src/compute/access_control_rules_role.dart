// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The properties of an Access Control Rule Role.
class AccessControlRulesRole {
  /// The name of the role.
  final pulumi.Input<String> name;
  /// A list of privileges needed by this role.
  final pulumi.Input<List<String>> privileges;

  /// Creates a new [AccessControlRulesRole].
  /// [name] The name of the role.
  /// [privileges] A list of privileges needed by this role.
  AccessControlRulesRole({
    required this.name,
    required this.privileges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'privileges': privileges,
    };
  }

  factory AccessControlRulesRole.fromMap(Map<String, dynamic> map) {
    return AccessControlRulesRole(
      name: pulumi.Input.fromValue(map['name'] as String),
      privileges: pulumi.Input.fromValue((map['privileges'] as List).cast<String>()),
    );
  }
}

