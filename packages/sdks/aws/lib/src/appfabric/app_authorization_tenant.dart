// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationTenant {
  /// The display name of the tenant.
  final pulumi.Input<String> tenantDisplayName;

  /// The ID of the application tenant.
  final pulumi.Input<String> tenantIdentifier;

  /// Creates a new [AppAuthorizationTenant].
  /// [tenantDisplayName] The display name of the tenant.
  /// [tenantIdentifier] The ID of the application tenant.
  AppAuthorizationTenant({
    required this.tenantDisplayName,
    required this.tenantIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tenantDisplayName': tenantDisplayName,
      'tenantIdentifier': tenantIdentifier,
    };
  }

  factory AppAuthorizationTenant.fromMap(Map<String, dynamic> map) {
    return AppAuthorizationTenant(
      tenantDisplayName: pulumi.Input.fromValue(
        map['tenantDisplayName'] as String,
      ),
      tenantIdentifier: pulumi.Input.fromValue(
        map['tenantIdentifier'] as String,
      ),
    );
  }
}
