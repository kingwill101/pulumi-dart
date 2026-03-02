// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed identity profile for the identity binding.
class IdentityBindingManagedIdentityProfileResponse {
  /// The client ID of the managed identity.
  final pulumi.Input<String> clientId;
  /// The object ID of the managed identity.
  final pulumi.Input<String> objectId;
  /// The resource ID of the managed identity.
  final pulumi.Input<String> resourceId;
  /// The tenant ID of the managed identity.
  final pulumi.Input<String> tenantId;

  /// Creates a new [IdentityBindingManagedIdentityProfileResponse].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  /// [resourceId] The resource ID of the managed identity.
  /// [tenantId] The tenant ID of the managed identity.
  IdentityBindingManagedIdentityProfileResponse({
    required this.clientId,
    required this.objectId,
    required this.resourceId,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'objectId': objectId,
      'resourceId': resourceId,
      'tenantId': tenantId,
    };
  }

  factory IdentityBindingManagedIdentityProfileResponse.fromMap(Map<String, dynamic> map) {
    return IdentityBindingManagedIdentityProfileResponse(
      clientId: (map['clientId'] as String).input(),
      objectId: (map['objectId'] as String).input(),
      resourceId: (map['resourceId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

