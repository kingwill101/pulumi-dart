// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity of resource
class IdentityResponse {
  /// service principal Id
  final pulumi.Input<String> principalId;
  /// Tenant Id
  final pulumi.Input<String> tenantId;
  /// Identity Type
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] service principal Id
  /// [tenantId] Tenant Id
  /// [type] Identity Type
  IdentityResponse({
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

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: (map['principalId'] as String).input(),
      tenantId: (map['tenantId'] as String).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

