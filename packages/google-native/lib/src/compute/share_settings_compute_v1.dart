// ignore_for_file: unused_element, unnecessary_cast

import 'share_settings_share_type_compute_v1.dart';

/// The share setting for reservations and sole tenancy node groups.
class ShareSettingsComputeV1 {
  /// A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  final Map<String, String>? projectMap;

  /// Type of sharing for this shared-reservation
  final ShareSettingsShareTypeComputeV1? shareType;

  /// Creates a new [ShareSettingsComputeV1].
  /// [projectMap] A map of project id and project config. This is only valid when share_type's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this shared-reservation
  ShareSettingsComputeV1({this.projectMap, this.shareType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMap': ?projectMap,
      'shareType': ?shareType == null ? null : shareType!.value,
    };
  }

  factory ShareSettingsComputeV1.fromMap(Map<String, dynamic> map) {
    return ShareSettingsComputeV1(
      projectMap: map['projectMap'] == null
          ? null
          : (map['projectMap'] as Map).cast<String, String>(),
      shareType: map['shareType'] == null
          ? null
          : ShareSettingsShareTypeComputeV1.fromValue(
              map['shareType'] as String,
            ),
    );
  }
}
