// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationConnectionTenant {
  /// Display name of the tenant.
  final pulumi.Input<String> tenantDisplayName;
  /// ID of the application tenant.
  final pulumi.Input<String> tenantIdentifier;

  /// Creates a new [AppAuthorizationConnectionTenant].
  /// [tenantDisplayName] Display name of the tenant.
  /// [tenantIdentifier] ID of the application tenant.
  const AppAuthorizationConnectionTenant({
    required this.tenantDisplayName,
    required this.tenantIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantDisplayName': tenantDisplayName,
      'tenantIdentifier': tenantIdentifier,
    };
  }

  factory AppAuthorizationConnectionTenant.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationConnectionTenant(
      tenantDisplayName: pulumi.Input.fromValue(map['tenantDisplayName'] as String),
      tenantIdentifier: pulumi.Input.fromValue(map['tenantIdentifier'] as String),
    );
  }
}
