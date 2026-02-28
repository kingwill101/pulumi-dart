// ignore_for_file: unused_element, unnecessary_cast

class PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference {
  /// The bucket to scan.
  final String? bucketName;

  /// If within a project-level config, then this must match the config's project id.
  final String? projectId;

  /// Creates a new [PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference].
  /// [bucketName] The bucket to scan.
  /// [projectId] If within a project-level config, then this must match the config's project id.
  PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference({
    this.bucketName,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bucketNameValue = bucketName;
    if (bucketNameValue != null) {
      map['bucketName'] = bucketNameValue;
    }
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference.fromMap(
      Map<String, dynamic> map) {
    return PreventionDiscoveryConfigTargetCloudStorageTargetFilterCloudStorageResourceReference(
      bucketName:
          map['bucketName'] == null ? null : map['bucketName'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
