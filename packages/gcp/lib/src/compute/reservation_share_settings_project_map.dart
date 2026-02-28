// ignore_for_file: unused_element, unnecessary_cast

class ReservationShareSettingsProjectMap {
  /// The identifier for this object. Format specified above.
  final String id;

  /// The project id/number, should be same as the key of this project config in the project map.
  final String? projectId;

  /// Creates a new [ReservationShareSettingsProjectMap].
  /// [id] The identifier for this object. Format specified above.
  /// [projectId] The project id/number, should be same as the key of this project config in the project map.
  ReservationShareSettingsProjectMap({
    required this.id,
    this.projectId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    final projectIdValue = projectId;
    if (projectIdValue != null) {
      map['projectId'] = projectIdValue;
    }
    return map;
  }

  factory ReservationShareSettingsProjectMap.fromMap(Map<String, dynamic> map) {
    return ReservationShareSettingsProjectMap(
      id: map['id'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
    );
  }
}
