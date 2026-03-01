// ignore_for_file: unused_element, unnecessary_cast


class GetNetworkManagerCrossTenantScope {
  /// A list of management groups used as cross tenant scope for the Network Manager.
  final List<String> managementGroups;
  /// A list of subscriptions used as cross tenant scope for the Network Manager.
  final List<String> subscriptions;
  /// The tenant ID of the cross tenant scope.
  final String tenantId;

  /// Creates a new [GetNetworkManagerCrossTenantScope].
  /// [managementGroups] A list of management groups used as cross tenant scope for the Network Manager.
  /// [subscriptions] A list of subscriptions used as cross tenant scope for the Network Manager.
  /// [tenantId] The tenant ID of the cross tenant scope.
  GetNetworkManagerCrossTenantScope({
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

  factory GetNetworkManagerCrossTenantScope.fromMap(Map<String, dynamic> map) {
    return GetNetworkManagerCrossTenantScope(
      managementGroups: (map['managementGroups'] as List).cast<String>(),
      subscriptions: (map['subscriptions'] as List).cast<String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

