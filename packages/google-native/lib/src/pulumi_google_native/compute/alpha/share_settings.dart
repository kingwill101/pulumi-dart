// ignore_for_file: unused_element, unnecessary_cast

import 'share_settings_share_type.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettings {
  /// A map of folder id and folder config to specify consumer projects for this shared-reservation. This is only valid when share_type's value is DIRECT_PROJECTS_UNDER_SPECIFIC_FOLDERS. Folder id should be a string of number, and without "folders/" prefix.
  final Map<String, String>? folderMap;

  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String>? projectMap;

  /// A List of Project names to specify consumer projects for this shared-reservation. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final List<String>? projects;

  /// Type of sharing for this shared-reservation
  final ShareSettingsShareType? shareType;

  ShareSettings({
    this.folderMap,
    this.projectMap,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final folderMapValue = folderMap;
    if (folderMapValue != null) {
      map['folderMap'] = folderMapValue;
    }
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

  factory ShareSettings.fromMap(Map<String, dynamic> map) {
    return ShareSettings(
      folderMap: map['folderMap'] == null
          ? null
          : (map['folderMap'] as Map).cast<String, String>(),
      projectMap: map['projectMap'] == null
          ? null
          : (map['projectMap'] as Map).cast<String, String>(),
      projects: map['projects'] == null
          ? null
          : (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] == null
          ? null
          : ShareSettingsShareType.fromValue(map['shareType'] as String),
    );
  }
}
