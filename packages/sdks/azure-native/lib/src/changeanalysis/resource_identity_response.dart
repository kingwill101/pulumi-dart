// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The identity block returned by ARM resource that supports managed identity.
class ResourceIdentityResponse {
  /// The principal id of the identity. This property will only be provided for a system-assigned identity.
  final pulumi.Input<String> principalId;
  /// The tenant id associated with the resource's identity. This property will only be provided for a system-assigned identity.
  final pulumi.Input<String> tenantId;
  /// The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] The principal id of the identity. This property will only be provided for a system-assigned identity.
  /// [tenantId] The tenant id associated with the resource's identity. This property will only be provided for a system-assigned identity.
  /// [type] The type of managed identity used. The type 'SystemAssigned, UserAssigned' includes both an implicitly created identity and a set of user-assigned identities. The type 'None' will remove any identities.
  ResourceIdentityResponse({
    required this.principalId,
    required this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': principalId,
      'tenantId': tenantId,
      'type': ?type,
    };
  }

  factory ResourceIdentityResponse.fromMap(Map<String, dynamic> map) {
    return ResourceIdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

