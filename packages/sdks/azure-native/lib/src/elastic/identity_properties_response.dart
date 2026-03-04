// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity properties.
class IdentityPropertiesResponse {
  /// The identity ID.
  final pulumi.Input<String> principalId;

  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;

  /// Managed identity type.
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityPropertiesResponse].
  /// [principalId] The identity ID.
  /// [tenantId] The tenant ID of resource.
  /// [type] Managed identity type.
  IdentityPropertiesResponse({
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

  factory IdentityPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IdentityPropertiesResponse(
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
