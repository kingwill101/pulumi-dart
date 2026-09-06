// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information about a tenant managing the subscription.
class ManagedByTenantResponse {
  /// The tenant ID of the managing tenant.
  final pulumi.Input<String?>? tenantId;

  /// Creates a new [ManagedByTenantResponse].
  /// [tenantId] The tenant ID of the managing tenant.
  const ManagedByTenantResponse({
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantId': ?tenantId,
    };
  }

  factory ManagedByTenantResponse.fromMap(Map<String, dynamic> map) {
    return ManagedByTenantResponse(
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
