// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_share_setting_project_map.dart';

class GetReservationShareSetting {
  /// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  final List<GetReservationShareSettingProjectMap> projectMaps;

  /// List of project IDs with which the reservation is shared.
  final List<String> projects;

  /// Type of sharing for this shared-reservation Possible values: ["LOCAL", "SPECIFIC_PROJECTS"]
  final String shareType;

  /// Creates a new [GetReservationShareSetting].
  /// [projectMaps] A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [projects] List of project IDs with which the reservation is shared.
  /// [shareType] Type of sharing for this shared-reservation Possible values: ["LOCAL", "SPECIFIC_PROJECTS"]
  GetReservationShareSetting({
    required this.projectMaps,
    required this.projects,
    required this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMaps':
          pulumi.Input.encodeList<
            GetReservationShareSettingProjectMap,
            Map<String, dynamic>
          >(projectMaps, (value) => value.toMap()),
      'projects': projects,
      'shareType': shareType,
    };
  }

  factory GetReservationShareSetting.fromMap(Map<String, dynamic> map) {
    return GetReservationShareSetting(
      projectMaps:
          pulumi.Input.decodeList<GetReservationShareSettingProjectMap>(
            map['projectMaps'],
            (value) => GetReservationShareSettingProjectMap.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      projects: (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] as String,
    );
  }
}
