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
      tenantDisplayName: (map['tenantDisplayName'] as String).input(),
      tenantIdentifier: (map['tenantIdentifier'] as String).input(),
    );
  }
}

