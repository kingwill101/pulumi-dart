// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getRegistryRepository.
class GetRegistryRepositoryResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String project;
  final String? region;

  /// The URL at which the repository can be accessed.
  final String repositoryUrl;

  GetRegistryRepositoryResult({
    required this.id,
    required this.project,
    this.region,
    required this.repositoryUrl,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['project'] = project;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['repositoryUrl'] = repositoryUrl;
    return map;
  }

  factory GetRegistryRepositoryResult.fromMap(Map<String, dynamic> map) {
    return GetRegistryRepositoryResult(
      id: map['id'] as String,
      project: map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      repositoryUrl: map['repositoryUrl'] as String,
    );
  }
}
