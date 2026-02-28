// ignore_for_file: unused_element, unnecessary_cast


/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeamResponse {
  /// The project number.
  final String projectNumber;
  /// The team.
  final String team;

  /// Creates a new [BucketAccessControlProjectTeamResponse].
  /// [projectNumber] The project number.
  /// [team] The team.
  BucketAccessControlProjectTeamResponse({
    required this.projectNumber,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectNumber': projectNumber,
      'team': team,
    };
  }

  factory BucketAccessControlProjectTeamResponse.fromMap(Map<String, dynamic> map) {
    return BucketAccessControlProjectTeamResponse(
      projectNumber: map['projectNumber'] as String,
      team: map['team'] as String,
    );
  }
}

