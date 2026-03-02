// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The role definition assigned to the environment creator on backing resources.
class ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment {
  /// A map of roles to assign to the environment creator.
  final pulumi.Input<List<String>>? roles;

  /// Creates a new [ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment].
  /// [roles] A map of roles to assign to the environment creator.
  ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles,
    };
  }

  factory ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeUpdatePropertiesCreatorRoleAssignment(
      roles: map['roles'] == null ? null : ((map['roles'] as List).cast<String>()).input(),
    );
  }
}

