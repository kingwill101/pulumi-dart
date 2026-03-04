// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure Active Directory identity configuration for a resource.
class ResourceIdentityResponse {
  /// The Azure Active Directory principal id.
  final pulumi.Input<String> principalId;

  /// The Azure Active Directory tenant id.
  final pulumi.Input<String> tenantId;

  /// The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] The Azure Active Directory principal id.
  /// [tenantId] The Azure Active Directory tenant id.
  /// [type] The identity type. Set this to 'SystemAssigned' in order to automatically create and assign an Azure Active Directory principal for the resource.
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
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
