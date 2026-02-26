// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRepositories.
class GetRepositoriesResult {
  /// AWS Region.
  final String id;

  /// A list if AWS Elastic Container Registries for the region.
  final List<String> names;
  final String region;

  GetRepositoriesResult({
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

  factory GetRepositoriesResult.fromMap(Map<String, dynamic> map) {
    return GetRepositoriesResult(
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      region: map['region'] as String,
    );
  }
}
