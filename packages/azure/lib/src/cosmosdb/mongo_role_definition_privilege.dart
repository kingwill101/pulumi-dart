// ignore_for_file: unused_element, unnecessary_cast

import 'mongo_role_definition_privilege_resource.dart';

class MongoRoleDefinitionPrivilege {
  /// A list of actions that are allowed.
  final List<String> actions;
  /// A `resource` block as defined below.
  final MongoRoleDefinitionPrivilegeResource resource;

  /// Creates a new [MongoRoleDefinitionPrivilege].
  /// [actions] A list of actions that are allowed.
  /// [resource] A `resource` block as defined below.
  MongoRoleDefinitionPrivilege({
    required this.actions,
    required this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'resource': resource.toMap(),
    };
  }

  factory MongoRoleDefinitionPrivilege.fromMap(Map<String, dynamic> map) {
    return MongoRoleDefinitionPrivilege(
      actions: (map['actions'] as List).cast<String>(),
      resource: MongoRoleDefinitionPrivilegeResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

