// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'privilege_response_resource.dart';

/// The set of data plane operations permitted through this Role Definition.
class PrivilegeResponse {
  /// An array of actions that are allowed.
  final pulumi.Input<List<String>>? actions;
  /// An Azure Cosmos DB Mongo DB Resource.
  final pulumi.Input<PrivilegeResponseResource>? resource;

  /// Creates a new [PrivilegeResponse].
  /// [actions] An array of actions that are allowed.
  /// [resource] An Azure Cosmos DB Mongo DB Resource.
  const PrivilegeResponse({
    this.actions,
    this.resource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions,
      'resource': ?pulumi.Input.mapOptionalInputValue<PrivilegeResponseResource, Map<String, dynamic>>(resource, (value) => value.toMap()),
    };
  }

  factory PrivilegeResponse.fromMap(Map<String, dynamic> map) {
    return PrivilegeResponse(
      actions: (() { final guardedValue = map['actions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PrivilegeResponseResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
