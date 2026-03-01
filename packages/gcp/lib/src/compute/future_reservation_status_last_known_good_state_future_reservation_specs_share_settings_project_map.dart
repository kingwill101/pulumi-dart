// ignore_for_file: unused_element, unnecessary_cast

class FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap {
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final String project;

  /// The project ID, should be same as the key of this project config in the parent map.
  final String? projectId;

  /// Creates a new [FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap].
  /// [project] The ID of the project in which the resource belongs.
  /// [projectId] The project ID, should be same as the key of this project config in the parent map.
  FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap({
    required this.project,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'project': project, 'projectId': ?projectId};
  }

  factory FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap.fromMap(
    Map<String, dynamic> map,
  ) {
    return FutureReservationStatusLastKnownGoodStateFutureReservationSpecsShareSettingsProjectMap(
      project: map['project'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
