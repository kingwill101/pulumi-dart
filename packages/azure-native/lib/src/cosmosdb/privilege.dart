// ignore_for_file: unused_element, unnecessary_cast

import 'privilege_resource.dart';

/// The set of data plane operations permitted through this Role Definition.
class Privilege {
  /// An array of actions that are allowed.
  final List<String>? actions;
  /// An Azure Cosmos DB Mongo DB Resource.
  final PrivilegeResource? resource;

  /// Creates a new [Privilege].
  /// [actions] An array of actions that are allowed.
  /// [resource] An Azure Cosmos DB Mongo DB Resource.
  Privilege({
    this.actions,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory Privilege.fromMap(Map<String, dynamic> map) {
    return Privilege(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      resource: map['resource'] == null ? null : PrivilegeResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

