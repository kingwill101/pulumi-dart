// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity for the Provisioned cluster.
class ProvisionedClusterIdentityResponse {
  /// The principal id of provisioned cluster identity. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id associated with the provisioned cluster. This property will only be provided for a system assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  final pulumi.Input<String> type;

  /// Creates a new [ProvisionedClusterIdentityResponse].
  /// [principalId] The principal id of provisioned cluster identity. This property will only be provided for a system assigned identity.
  /// [tenantId] The tenant id associated with the provisioned cluster. This property will only be provided for a system assigned identity.
  /// [type] The type of identity used for the provisioned cluster. The type SystemAssigned, includes a system created identity. The type None means no identity is assigned to the provisioned cluster.
  ProvisionedClusterIdentityResponse({
    required this.principalId,
    required this.tenantId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': type,
    };
  }

  factory ProvisionedClusterIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ProvisionedClusterIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}

