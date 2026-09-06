// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the MSI properties of the Move Collection.
class Identity {
  /// Gets or sets the principal id.
  final pulumi.Input<String?>? principalId;
  /// Gets or sets the tenant id.
  final pulumi.Input<String?>? tenantId;
  /// The type of identity used for the resource mover service.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [Identity].
  /// [principalId] Gets or sets the principal id.
  /// [tenantId] Gets or sets the tenant id.
  /// [type] The type of identity used for the resource mover service.
  const Identity({
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

  factory Identity.fromMap(Map<String, dynamic> map) {
    return Identity(
      principalId: (() { final guardedValue = map['principalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
