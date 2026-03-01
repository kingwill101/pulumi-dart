// ignore_for_file: unused_element, unnecessary_cast


class NetworkManagerCrossTenantScope {
  /// List of management groups.
  final List<String>? managementGroups;
  /// List of subscriptions.
  final List<String>? subscriptions;
  /// Tenant ID.
  final String? tenantId;

  /// Creates a new [NetworkManagerCrossTenantScope].
  /// [managementGroups] List of management groups.
  /// [subscriptions] List of subscriptions.
  /// [tenantId] Tenant ID.
  NetworkManagerCrossTenantScope({
    this.managementGroups,
    this.subscriptions,
    this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managementGroups': ?managementGroups,
      'subscriptions': ?subscriptions,
      'tenantId': ?tenantId,
    };
  }

  factory NetworkManagerCrossTenantScope.fromMap(Map<String, dynamic> map) {
    return NetworkManagerCrossTenantScope(
      managementGroups: map['managementGroups'] == null ? null : (map['managementGroups'] as List).cast<String>(),
      subscriptions: map['subscriptions'] == null ? null : (map['subscriptions'] as List).cast<String>(),
      tenantId: map['tenantId'] == null ? null : map['tenantId'] as String,
    );
  }
}

