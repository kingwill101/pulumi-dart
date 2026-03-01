// ignore_for_file: unused_element, unnecessary_cast

import 'privilege_response_resource.dart';

/// The set of data plane operations permitted through this Role Definition.
class PrivilegeResponse {
  /// An array of actions that are allowed.
  final List<String>? actions;
  /// An Azure Cosmos DB Mongo DB Resource.
  final PrivilegeResponseResource? resource;

  /// Creates a new [PrivilegeResponse].
  /// [actions] An array of actions that are allowed.
  /// [resource] An Azure Cosmos DB Mongo DB Resource.
  PrivilegeResponse({
    this.actions,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'resource': ?resource == null ? null : resource!.toMap(),
    };
  }

  factory PrivilegeResponse.fromMap(Map<String, dynamic> map) {
    return PrivilegeResponse(
      actions: map['actions'] == null ? null : (map['actions'] as List).cast<String>(),
      resource: map['resource'] == null ? null : PrivilegeResponseResource.fromMap((map['resource'] as Map).cast<String, dynamic>()),
    );
  }
}

