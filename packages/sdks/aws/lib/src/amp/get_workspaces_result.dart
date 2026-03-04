// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getWorkspaces.
class GetWorkspacesResult {
  final String? aliasPrefix;

  /// List of aliases of the matched Prometheus workspaces.
  final List<String> aliases;

  /// List of ARNs of the matched Prometheus workspaces.
  final List<String> arns;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// List of workspace IDs of the matched Prometheus workspaces.
  final List<String> workspaceIds;

  /// Creates a new [GetWorkspacesResult].
  /// [aliasPrefix] Optional.
  /// [aliases] List of aliases of the matched Prometheus workspaces.
  /// [arns] List of ARNs of the matched Prometheus workspaces.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [workspaceIds] List of workspace IDs of the matched Prometheus workspaces.
  GetWorkspacesResult({
    this.aliasPrefix,
    required this.aliases,
    required this.arns,
    required this.id,
    required this.region,
    required this.workspaceIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliasPrefix': ?aliasPrefix,
      'aliases': aliases,
      'arns': arns,
      'id': id,
      'region': region,
      'workspaceIds': workspaceIds,
    };
  }

  factory GetWorkspacesResult.fromMap(Map<String, dynamic> map) {
    return GetWorkspacesResult(
      aliasPrefix: (() {
        final guardedValue = map['aliasPrefix'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      aliases: (map['aliases'] as List).cast<String>(),
      arns: (map['arns'] as List).cast<String>(),
      id: map['id'] as String,
      region: map['region'] as String,
      workspaceIds: (map['workspaceIds'] as List).cast<String>(),
    );
  }
}
