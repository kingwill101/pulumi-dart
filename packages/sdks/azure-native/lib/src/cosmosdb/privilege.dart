// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'privilege_resource.dart';

/// The set of data plane operations permitted through this Role Definition.
class Privilege {
  /// An array of actions that are allowed.
  final pulumi.Input<List<String>>? actions;
  /// An Azure Cosmos DB Mongo DB Resource.
  final pulumi.Input<PrivilegeResource>? resource;

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
      'resource': ?pulumi.Input.mapOptionalInputValue<PrivilegeResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory Privilege.fromMap(Map<String, dynamic> map) {
    return Privilege(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivilegeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

