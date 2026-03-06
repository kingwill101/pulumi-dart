// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppAuthorizationConnectionTenant {
  final pulumi.Input<String> tenantDisplayName;
  final pulumi.Input<String> tenantIdentifier;

  /// Creates a new [AppAuthorizationConnectionTenant].
  /// [tenantDisplayName] Required.
  /// [tenantIdentifier] Required.
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

