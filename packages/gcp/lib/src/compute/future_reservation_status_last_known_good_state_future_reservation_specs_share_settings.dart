// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'future_reservation_status_last_known_good_state_future_reservation_specs_share_settings_project_map.dart';

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings {
  /// A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// Structure is documented below.
  final List<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap>?
      projectMaps;

  /// list of Project names to specify consumer projects for this shared-reservation. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  final List<String>? projects;

  /// Type of sharing for this future reservation.
  /// Possible values are: `LOCAL`, `SPECIFIC_PROJECTS`.
  final String? shareType;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings].
  /// [projectMaps] A map of project id and project config. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [projects] list of Project names to specify consumer projects for this shared-reservation. This is only valid when shareType's value is SPECIFIC_PROJECTS.
  /// [shareType] Type of sharing for this future reservation.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings({
    this.projectMaps,
    this.projects,
    this.shareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectMapsValue = projectMaps;
    if (projectMapsValue != null) {
      map['projectMaps'] = pulumi.Input.encodeList<
          FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap,
          Map<String, dynamic>>(projectMapsValue, (value) => value.toMap());
    }
    final projectsValue = projects;
    if (projectsValue != null) {
      map['projects'] = projectsValue;
    }
    final shareTypeValue = shareType;
    if (shareTypeValue != null) {
      map['shareType'] = shareTypeValue;
    }
    return map;
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings.fromMap(
      Map<String, dynamic> map) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettings(
      projectMaps: map['projectMaps'] == null
          ? null
          : pulumi.Input.decodeList<
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap>(
              map['projectMaps'],
              (value) =>
                  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap
                      .fromMap((value as Map).cast<String, dynamic>())),
      projects: map['projects'] == null
          ? null
          : (map['projects'] as List).cast<String>(),
      shareType: map['shareType'] == null ? null : map['shareType'] as String,
    );
  }
}
