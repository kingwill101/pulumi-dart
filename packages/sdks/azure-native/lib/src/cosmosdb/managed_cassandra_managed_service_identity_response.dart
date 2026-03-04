// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Identity for the resource.
class ManagedCassandraManagedServiceIdentityResponse {
  /// The object id of the identity resource.
  final pulumi.Input<String> principalId;

  /// The tenant id of the resource.
  final pulumi.Input<String> tenantId;

  /// The type of the resource.
  final pulumi.Input<String>? type;

  /// Creates a new [ManagedCassandraManagedServiceIdentityResponse].
  /// [principalId] The object id of the identity resource.
  /// [tenantId] The tenant id of the resource.
  /// [type] The type of the resource.
  ManagedCassandraManagedServiceIdentityResponse({
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

  factory ManagedCassandraManagedServiceIdentityResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedCassandraManagedServiceIdentityResponse(
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
