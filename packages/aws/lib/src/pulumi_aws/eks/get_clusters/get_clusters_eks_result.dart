// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClusters.
class GetClustersEksResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of EKS clusters names
  final List<String> names;
  final String region;

  GetClustersEksResult({
    required this.id,
    required this.names,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['names'] = names;
    map['region'] = region;
    return map;
  }

  factory GetClustersEksResult.fromMap(Map<String, dynamic> map) {
    return GetClustersEksResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
