// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Msi identity details of the resource
class ResourceIdentityResponse {
  /// Service Principal Id backing the Msi
  final pulumi.Input<String> principalId;
  /// Home Tenant Id
  final pulumi.Input<String> tenantId;
  /// Identity type
  final pulumi.Input<String>? type;

  /// Creates a new [ResourceIdentityResponse].
  /// [principalId] Service Principal Id backing the Msi
  /// [tenantId] Home Tenant Id
  /// [type] Identity type
  const ResourceIdentityResponse({
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
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
