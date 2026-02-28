// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getInstanceProfiles.
class GetInstanceProfilesResult {
  /// Set of ARNs of instance profiles.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Set of IAM instance profile names.
  final List<String> names;

  /// Set of IAM instance profile paths.
  final List<String> paths;
  final String roleName;

  /// Creates a new [GetInstanceProfilesResult].
  /// [arns] Set of ARNs of instance profiles.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [names] Set of IAM instance profile names.
  /// [paths] Set of IAM instance profile paths.
  /// [roleName] Required.
  GetInstanceProfilesResult({
    required this.arns,
    required this.id,
    required this.names,
    required this.paths,
    required this.roleName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arns'] = arns;
    map['id'] = id;
    map['names'] = names;
    map['paths'] = paths;
    map['roleName'] = roleName;
    return map;
  }

  factory GetInstanceProfilesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceProfilesResult(
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      names: (map['names'] as List).cast<String>(),
      paths: (map['paths'] as List).cast<String>(),
      roleName: map['roleName'] as String,
    );
  }
}
