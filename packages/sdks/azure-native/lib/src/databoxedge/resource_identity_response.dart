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

