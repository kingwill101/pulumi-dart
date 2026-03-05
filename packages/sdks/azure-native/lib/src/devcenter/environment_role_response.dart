// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A role that can be assigned to a user.
class EnvironmentRoleResponse {
  /// This is a description of the Role Assignment.
  final pulumi.Input<String> description;
  /// The common name of the Role Assignment. This is a descriptive name such as 'AcrPush'.
  final pulumi.Input<String> roleName;

  /// Creates a new [EnvironmentRoleResponse].
  /// [description] This is a description of the Role Assignment.
  /// [roleName] The common name of the Role Assignment. This is a descriptive name such as 'AcrPush'.
  EnvironmentRoleResponse({
    required this.description,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'roleName': roleName,
    };
  }

  factory EnvironmentRoleResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentRoleResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      roleName: pulumi.Input.fromValue(map['roleName'] as String),
    );
  }
}

