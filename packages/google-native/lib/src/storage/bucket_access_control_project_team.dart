// ignore_for_file: unused_element, unnecessary_cast

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeam {
  /// The project number.
  final String? projectNumber;

  /// The team.
  final String? team;

  /// Creates a new [BucketAccessControlProjectTeam].
  /// [projectNumber] The project number.
  /// [team] The team.
  BucketAccessControlProjectTeam({this.projectNumber, this.team});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'projectNumber': ?projectNumber, 'team': ?team};
  }

  factory BucketAccessControlProjectTeam.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlProjectTeam(
      projectNumber: map['projectNumber'] == null
          ? null
          : map['projectNumber'] as String,
      team: map['team'] == null ? null : map['team'] as String,
    );
  }
}
