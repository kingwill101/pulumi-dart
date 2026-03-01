// ignore_for_file: unused_element, unnecessary_cast

import 'resource_identity_type.dart';

/// Identity for the Provisioned cluster.
class ProvisionedClusterIdentity {
  /// The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  final ResourceIdentityType type;

  /// Creates a new [ProvisionedClusterIdentity].
  /// [type] The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  ProvisionedClusterIdentity({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type.value,
    };
  }

  factory ProvisionedClusterIdentity.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterIdentity(
      type: ResourceIdentityType.fromValue(map['type'] as String),
    );
  }
}

