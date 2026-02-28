// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reservation_share_settings_project_map.dart';

class ReservationShareSettings {
  /// A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final List<ReservationShareSettingsProjectMap>? projectMaps;
  /// List of project IDs with which the reservation is shared.
  final List<String>? projects;
  /// Type of sharing for this shared-reservation
  /// Possible values are: `LOCAL`, `SPECIFIC_PROJECTS`.
  final String? shareType;

  /// Creates a new [ReservationShareSettings].
  /// [projectMaps] A map of project number and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [projects] List of project IDs with which the reservation is shared.
  /// [shareType] Type of sharing for this shared-reservation
  ReservationShareSettings({
    this.projectMaps,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectMaps': ?projectMaps == null ? null : pulumi.Input.encodeList<ReservationShareSettingsProjectMap, Map<String, dynamic>>(projectMaps!, (value) => value.toMap()),
      'projects': ?projects,
      'shareType': ?shareType,
    };
  }

  factory ReservationShareSettings.fromMap(Map<String, dynamic> map) {
    return ReservationShareSettings(
      projectMaps: map['projectMaps'] == null ? null : pulumi.Input.decodeList<ReservationShareSettingsProjectMap>(map['projectMaps'], (value) => ReservationShareSettingsProjectMap.fromMap((value as Map).cast<String, dynamic>())),
      projects: map['projects'] == null ? null : (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] == null ? null : map['shareType'] as String,
    );
  }
}

