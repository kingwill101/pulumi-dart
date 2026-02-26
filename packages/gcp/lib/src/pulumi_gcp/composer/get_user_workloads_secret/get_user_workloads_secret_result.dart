// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getUserWorkloadsSecret.
class GetUserWorkloadsSecretResult {
  final Map<String, String> data;
  final String environment;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String? project;
  final String? region;

  GetUserWorkloadsSecretResult({
    required this.data,
    required this.environment,
    required this.id,
    required this.name,
    this.project,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['environment'] = environment;
    map['id'] = id;
    map['name'] = name;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory GetUserWorkloadsSecretResult.fromMap(Map<String, dynamic> map) {
    return GetUserWorkloadsSecretResult(
      data: (map['data'] as Map).cast<String, String>(),
      environment: map['environment'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
