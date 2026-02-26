// ignore_for_file: unused_element, unnecessary_cast

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsResponse3 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String> projectMap;

  /// Type of sharing for this shared-reservation
  final String shareType;

  ShareSettingsResponse3({
    required this.projectMap,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectMap'] = projectMap;
    map['shareType'] = shareType;
    return map;
  }

  factory ShareSettingsResponse3.fromMap(Map<String, dynamic> map) {
    return ShareSettingsResponse3(
      projectMap: (map['projectMap'] as Map).cast<String, String>(),
      shareType: map['shareType'] as String,
    );
  }
}
