// ignore_for_file: unused_element, unnecessary_cast

/// The project team associated with the entity, if any.
class ObjectAccessControlProjectTeamResponse {
  /// The project number.
  final String projectNumber;

  /// The team.
  final String team;

  /// Creates a new [ObjectAccessControlProjectTeamResponse].
  /// [projectNumber] The project number.
  /// [team] The team.
  ObjectAccessControlProjectTeamResponse({
    required this.projectNumber,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectNumber'] = projectNumber;
    map['team'] = team;
    return map;
  }

  factory ObjectAccessControlProjectTeamResponse.fromMap(
      Map<String, dynamic> map) {
    return ObjectAccessControlProjectTeamResponse(
      projectNumber: map['projectNumber'] as String,
      team: map['team'] as String,
    );
  }
}
