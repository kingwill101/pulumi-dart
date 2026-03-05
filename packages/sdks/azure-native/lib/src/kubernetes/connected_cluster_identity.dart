// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the connected cluster.
class ConnectedClusterIdentity {
  /// The type of identity used for the connected cluster. The type 'SystemAssigned, includes a system created identity. The type 'None' means no identity is assigned to the connected cluster.
  final pulumi.Input<ResourceIdentityType> type;

  /// Creates a new [ConnectedClusterIdentity].
  /// [type] The type of identity used for the connected cluster. The type 'SystemAssigned, includes a system created identity. The type 'None' means no identity is assigned to the connected cluster.
  ConnectedClusterIdentity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
    };
  }

  factory ConnectedClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ConnectedClusterIdentity(
      type: pulumi.Input.fromValue(ResourceIdentityType.fromValue(map['type']! as String)),
    );
  }
}

