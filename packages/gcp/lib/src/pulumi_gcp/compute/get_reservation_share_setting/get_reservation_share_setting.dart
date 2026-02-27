// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_reservation_share_setting_project_map/get_reservation_share_setting_project_map.dart';

class GetReservationShareSetting {
  /// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  final List<GetReservationShareSettingProjectMap> projectMaps;

  /// List of project IDs with which the reservation is shared.
  final List<String> projects;

  /// Type of sharing for this shared-reservation Possible values: ["LOCAL", "SPECIFIC_PROJECTS"]
  final String shareType;

  GetReservationShareSetting({
    required this.projectMaps,
    required this.projects,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectMaps'] = pulumi.Input.encodeList<
        GetReservationShareSettingProjectMap,
        Map<String, dynamic>>(projectMaps, (value) => value.toMap());
    map['projects'] = projects;
    map['shareType'] = shareType;
    return map;
  }

  factory GetReservationShareSetting.fromMap(Map<String, dynamic> map) {
    return GetReservationShareSetting(
      projectMaps:
          pulumi.Input.decodeList<GetReservationShareSettingProjectMap>(
              map['projectMaps'],
              (value) => GetReservationShareSettingProjectMap.fromMap(
                  (value as Map).cast<String, dynamic>())),
      projects: (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] as String,
    );
  }
}
