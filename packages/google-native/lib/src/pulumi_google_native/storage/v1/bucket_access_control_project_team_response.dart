// ignore_for_file: unused_element, unnecessary_cast

/// The project team associated with the entity, if any.
class BucketAccessControlProjectTeamResponse {
  /// The project number.
  final String projectNumber;

  /// The team.
  final String team;

  BucketAccessControlProjectTeamResponse({
    required this.projectNumber,
    required this.team,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['projectNumber'] = projectNumber;
    map['team'] = team;
    return map;
  }

  factory BucketAccessControlProjectTeamResponse.fromMap(
      Map<String, dynamic> map) {
    return BucketAccessControlProjectTeamResponse(
      projectNumber: map['projectNumber'] as String,
      team: map['team'] as String,
    );
  }
}
