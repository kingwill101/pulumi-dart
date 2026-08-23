// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the MSI properties of the Move Collection.
class IdentityResponse {
  /// Gets or sets the principal id.
  final pulumi.Input<String>? principalId;
  /// Gets or sets the tenant id.
  final pulumi.Input<String>? tenantId;
  /// The type of identity used for the resource mover service.
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityResponse].
  /// [principalId] Gets or sets the principal id.
  /// [tenantId] Gets or sets the tenant id.
  /// [type] The type of identity used for the resource mover service.
  const IdentityResponse({
    this.principalId,
    this.tenantId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'principalId': ?principalId,
      'tenantId': ?tenantId,
      'type': ?type,
    };
  }

  factory IdentityResponse.fromMap(Map<String, dynamic> map) {
    return IdentityResponse(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
