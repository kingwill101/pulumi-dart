// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IdentityPropertiesResponse {
  /// The identity ID.
  final pulumi.Input<String> principalId;

  /// The tenant ID of resource.
  final pulumi.Input<String> tenantId;

  /// Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
  final pulumi.Input<String>? type;

  /// Creates a new [IdentityPropertiesResponse].
  /// [principalId] The identity ID.
  /// [tenantId] The tenant ID of resource.
  /// [type] Specifies the identity type of the Datadog Monitor. At this time the only allowed value is 'SystemAssigned'.
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
