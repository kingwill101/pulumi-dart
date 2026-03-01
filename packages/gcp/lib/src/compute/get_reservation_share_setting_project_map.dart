// ignore_for_file: unused_element, unnecessary_cast

class GetReservationShareSettingProjectMap {
  final String id;

  /// The project id/number, should be same as the key of this project config in the project map.
  final String projectId;

  /// Creates a new [GetReservationShareSettingProjectMap].
  /// [id] Required.
  /// [projectId] The project id/number, should be same as the key of this project config in the project map.
  GetReservationShareSettingProjectMap({
    required this.id,
    required this.projectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'projectId': projectId};
  }

  factory GetReservationShareSettingProjectMap.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetReservationShareSettingProjectMap(
      id: map['id'] as String,
      projectId: map['projectId'] as String,
    );
  }
}
