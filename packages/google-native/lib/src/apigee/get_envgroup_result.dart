// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getEnvgroup.
class GetEnvgroupResult {
  /// The time at which the environment group was created as milliseconds since epoch.
  final String createdAt;

  /// Host names for this environment group.
  final List<String> hostnames;

  /// The time at which the environment group was last updated as milliseconds since epoch.
  final String lastModifiedAt;

  /// ID of the environment group.
  final String name;

  /// State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  final String state;

  /// Creates a new [GetEnvgroupResult].
  /// [createdAt] The time at which the environment group was created as milliseconds since epoch.
  /// [hostnames] Host names for this environment group.
  /// [lastModifiedAt] The time at which the environment group was last updated as milliseconds since epoch.
  /// [name] ID of the environment group.
  /// [state] State of the environment group. Values other than ACTIVE means the resource is not ready to use.
  GetEnvgroupResult({
    required this.createdAt,
    required this.hostnames,
    required this.lastModifiedAt,
    required this.name,
    required this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createdAt'] = createdAt;
    map['hostnames'] = hostnames;
    map['lastModifiedAt'] = lastModifiedAt;
    map['name'] = name;
    map['state'] = state;
    return map;
  }

  factory GetEnvgroupResult.fromMap(Map<String, dynamic> map) {
    return GetEnvgroupResult(
      createdAt: map['createdAt'] as String,
      hostnames: (map['hostnames'] as List).cast<String>(),
      lastModifiedAt: map['lastModifiedAt'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
    );
  }
}
