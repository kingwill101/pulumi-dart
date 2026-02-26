// ignore_for_file: unused_element, unnecessary_cast

import 'share_settings_share_type3.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettings3 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String>? projectMap;

  /// Type of sharing for this shared-reservation
  final ShareSettingsShareType3? shareType;

  ShareSettings3({
    this.projectMap,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectMapValue = projectMap;
    if (projectMapValue != null) {
      map['projectMap'] = projectMapValue;
    }
    final shareTypeValue = shareType;
    if (shareTypeValue != null) {
      map['shareType'] = shareTypeValue.value;
    }
    return map;
  }

  factory ShareSettings3.fromMap(Map<String, dynamic> map) {
    return ShareSettings3(
      projectMap: map['projectMap'] == null
          ? null
          : (map['projectMap'] as Map).cast<String, String>(),
      shareType: map['shareType'] == null
          ? null
          : ShareSettingsShareType3.fromValue(map['shareType'] as String),
    );
  }
}
