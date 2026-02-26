// ignore_for_file: unused_element, unnecessary_cast

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsResponse {
  /// A map of folder id and folder config to specify consumer projects for this shared-reservation. This is only valid when share_type's value is DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS. Folder id should be a string of number, and without "folders/" prefix.
  final Map<String, String> folderMap;

  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String> projectMap;

  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final List<String> projects;

  /// Type of sharing for this shared-reservation
  final String shareType;

  ShareSettingsResponse({
    required this.folderMap,
    required this.projectMap,
    required this.projects,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['folderMap'] = folderMap;
    map['projectMap'] = projectMap;
    map['projects'] = projects;
    map['shareType'] = shareType;
    return map;
  }

  factory ShareSettingsResponse.fromMap(Map<String, dynamic> map) {
    return ShareSettingsResponse(
      folderMap: (map['folderMap'] as Map).cast<String, String>(),
      projectMap: (map['projectMap'] as Map).cast<String, String>(),
      projects: (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] as String,
    );
  }
}
