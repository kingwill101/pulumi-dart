// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross tenant scopes.
class CrossTenantScopesResponse {
  /// List of management groups.
  final pulumi.Input<List<String>> managementGroups;
  /// List of subscriptions.
  final pulumi.Input<List<String>> subscriptions;
  /// Tenant ID.
  final pulumi.Input<String> tenantId;

  /// Creates a new [CrossTenantScopesResponse].
  /// [managementGroups] List of management groups.
  /// [subscriptions] List of subscriptions.
  /// [tenantId] Tenant ID.
  CrossTenantScopesResponse({
    required this.managementGroups,
    required this.subscriptions,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': managementGroups,
      'subscriptions': subscriptions,
      'tenantId': tenantId,
    };
  }

  factory CrossTenantScopesResponse.fromMap(Map<String, dynamic> map) {
    return CrossTenantScopesResponse(
      managementGroups: ((map['managementGroups'] as List).cast<String>()).input(),
      subscriptions: ((map['subscriptions'] as List).cast<String>()).input(),
      tenantId: (map['tenantId'] as String).input(),
    );
  }
}

