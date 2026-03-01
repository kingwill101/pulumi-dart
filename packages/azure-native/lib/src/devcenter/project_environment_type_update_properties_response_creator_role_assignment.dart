// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_role_response.dart';

/// The role definition assigned to the environment creator on backing resources.
class ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment {
  /// A map of roles to assign to the environment creator.
  final Map<String, EnvironmentRoleResponse>? roles;

  /// Creates a new [ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment].
  /// [roles] A map of roles to assign to the environment creator.
  ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment({
    this.roles,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roles': ?roles == null ? null : pulumi.Input.encodeMapValues<EnvironmentRoleResponse, Map<String, dynamic>>(roles!, (value) => value.toMap()),
    };
  }

  factory ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment.fromMap(Map<String, dynamic> map) {
    return ProjectEnvironmentTypeUpdatePropertiesResponseCreatorRoleAssignment(
      roles: map['roles'] == null ? null : pulumi.Input.decodeMapValues<EnvironmentRoleResponse>(map['roles'], (value) => EnvironmentRoleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

