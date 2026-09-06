// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity of resource
class IdentityResponse {
  /// service principal Id
  final pulumi.Input<String> principalId;
  /// Tenant Id
  final pulumi.Input<String> tenantId;
  /// Identity Type
  final pulumi.Input<String?>? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] service principal Id
  /// [tenantId] Tenant Id
  /// [type] Identity Type
  const IdentityResponse({
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
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
