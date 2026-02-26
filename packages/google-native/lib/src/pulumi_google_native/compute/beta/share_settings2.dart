// ignore_for_file: unused_element, unnecessary_cast

import 'share_settings_share_type2.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettings2 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String>? projectMap;

  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final List<String>? projects;

  /// Type of sharing for this shared-reservation
  final ShareSettingsShareType2? shareType;

  ShareSettings2({
    this.projectMap,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectMapValue = projectMap;
    if (projectMapValue != null) {
      map['projectMap'] = projectMapValue;
    }
    final projectsValue = projects;
    if (projectsValue != null) {
      map['projects'] = projectsValue;
    }
    final shareTypeValue = shareType;
    if (shareTypeValue != null) {
      map['shareType'] = shareTypeValue.value;
    }
    return map;
  }

  factory ShareSettings2.fromMap(Map<String, dynamic> map) {
    return ShareSettings2(
      projectMap: map['projectMap'] == null
          ? null
          : (map['projectMap'] as Map).cast<String, String>(),
      projects: map['projects'] == null
          ? null
          : (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] == null
          ? null
          : ShareSettingsShareType2.fromValue(map['shareType'] as String),
    );
  }
}
