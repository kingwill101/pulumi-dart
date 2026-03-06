// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the identity properties.
class IdentityDetailsResponse {
  /// Specifies the principal id for the identity for the job.
  final pulumi.Input<String> principalId;
  /// Specifies the tenant id for the identity for the job.
  final pulumi.Input<String> tenantId;
  /// The type of identity
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityDetailsResponse].
  /// [principalId] Specifies the principal id for the identity for the job.
  /// [tenantId] Specifies the tenant id for the identity for the job.
  /// [type] The type of identity
  const IdentityDetailsResponse({
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

  factory IdentityDetailsResponse.fromMap(Map<String, dynamic> map) {
    return IdentityDetailsResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

