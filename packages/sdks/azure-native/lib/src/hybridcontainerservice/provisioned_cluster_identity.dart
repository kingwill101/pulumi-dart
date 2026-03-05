// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_identity_type.dart';

/// Identity for the Provisioned cluster.
class ProvisionedClusterIdentity {
  /// The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  final pulumi.Input<ResourceIdentityType> type;

  /// Creates a new [ProvisionedClusterIdentity].
  /// [type] The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  ProvisionedClusterIdentity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': pulumi.Input.mapInputValue<ResourceIdentityType, String>(type, (value) => value.wireValue),
    };
  }

  factory ProvisionedClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterIdentity(
      type: pulumi.Input.fromValue(ResourceIdentityType.fromValue(map['type']! as String)),
    );
  }
}

