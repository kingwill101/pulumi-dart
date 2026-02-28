// ignore_for_file: unused_element, unnecessary_cast

class ObjectAccessControlProjectTeam {
  /// The project team associated with the entity
  final String? projectNumber;

  /// The team.
  /// Possible values are: `editors`, `owners`, `viewers`.
  final String? team;

  /// Creates a new [ObjectAccessControlProjectTeam].
  /// [projectNumber] The project team associated with the entity
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
