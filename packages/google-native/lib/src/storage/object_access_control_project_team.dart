// ignore_for_file: unused_element, unnecessary_cast

/// The project team associated with the entity, if any.
class ObjectAccessControlProjectTeam {
  /// The project number.
  final String? projectNumber;

  /// The team.
  final String? team;

  /// Creates a new [ObjectAccessControlProjectTeam].
  /// [projectNumber] The project number.
  /// [team] The team.
  ObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectNumberValue = projectNumber;
    if (projectNumberValue != null) {
      map['projectNumber'] = projectNumberValue;
    }
    final teamValue = team;
    if (teamValue != null) {
      map['team'] = teamValue;
    }
    return map;
  }

  factory ObjectAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return ObjectAccessControlProjectTeam(
      projectNumber:
          map['projectNumber'] == null ? null : map['projectNumber'] as String,
      team: map['team'] == null ? null : map['team'] as String,
    );
  }
}
