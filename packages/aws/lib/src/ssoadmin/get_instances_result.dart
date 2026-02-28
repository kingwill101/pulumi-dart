// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstances.
class GetInstancesResult {
  /// Set of Amazon Resource Names (ARNs) of the SSO Instances.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of identifiers of the identity stores connected to the SSO Instances.
  final List<String> identityStoreIds;
  final String region;

  /// Creates a new [GetInstancesResult].
  /// [arns] Set of Amazon Resource Names (ARNs) of the SSO Instances.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identityStoreIds] Set of identifiers of the identity stores connected to the SSO Instances.
  /// [region] Required.
  GetInstancesResult({
    required this.arns,
    required this.id,
    required this.identityStoreIds,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    map['identityStoreIds'] = identityStoreIds;
    map['region'] = region;
    return map;
  }

  factory GetInstancesResult.fromMap(Map<String, dynamic> map) {
    return GetInstancesResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      identityStoreIds: (map['identityStoreIds'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
