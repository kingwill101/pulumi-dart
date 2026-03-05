// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Managed service identity.
class IdentityResponse {
  /// The principal id of managed service identity.
  final pulumi.Input<String> principalId;
  /// The tenant of managed service identity.
  final pulumi.Input<String> tenantId;
  /// The type of managed service identity.
  final pulumi.Input<String> type;

  /// Creates a new [IdentityResponse].
  /// [principalId] The principal id of managed service identity.
  /// [tenantId] The tenant of managed service identity.
  /// [type] The type of managed service identity.
  IdentityResponse({
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

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: pulumi.Input.fromValue(map['principalId'] as String),
      tenantId: pulumi.Input.fromValue(map['tenantId'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

