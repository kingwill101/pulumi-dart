// ignore_for_file: unused_element, unnecessary_cast

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsResponseComputeBeta {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String> projectMap;

  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final List<String> projects;

  /// Type of sharing for this shared-reservation
  final String shareType;

  ShareSettingsResponseComputeBeta({
    required this.projectMap,
    required this.projects,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectMap'] = projectMap;
    map['projects'] = projects;
    map['shareType'] = shareType;
    return map;
  }

  factory ShareSettingsResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return ShareSettingsResponseComputeBeta(
      projectMap: (map['projectMap'] as Map).cast<String, String>(),
      projects: (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] as String,
    );
  }
}
