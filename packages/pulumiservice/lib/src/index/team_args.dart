// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_team_args_doc}
/// The set of arguments for Team.
/// {@endtemplate}
/// {@macro pulumi_index_team_args_doc}
class TeamArgs {
  /// Optional. Team description.
  final pulumi.Input<String>? description;
  /// Optional. Team display name.
  final pulumi.Input<String>? displayName;
  /// The GitHub ID of the team to mirror. Must be in the same GitHub organization that the Pulumi org is backed by. Required for "github" teams.
  final pulumi.Input<double>? githubTeamId;
  /// List of Pulumi Cloud usernames of team members.
  final pulumi.Input<List<String>>? members;
  /// The team's name. Required for "pulumi" teams.
  final pulumi.Input<String>? name;
  /// The name of the Pulumi organization the team belongs to.
  final pulumi.Input<String> organizationName;
  /// The type of team. Must be either `pulumi` or `github`.
  final pulumi.Input<String> teamType;

  /// Creates a new [TeamArgs].
  /// [description] Optional. Team description.
  /// [displayName] Optional. Team display name.
  /// [githubTeamId] The GitHub ID of the team to mirror. Must be in the same GitHub organization that the Pulumi org is backed by. Required for "github" teams.
  /// [members] List of Pulumi Cloud usernames of team members.
  /// [name] The team's name. Required for "pulumi" teams.
  /// [organizationName] The name of the Pulumi organization the team belongs to.
  /// [teamType] The type of team. Must be either `pulumi` or `github`.
  TeamArgs({
    String? description,
    String? displayName,
    double? githubTeamId,
    List<String>? members,
    String? name,
    required String organizationName,
    required String teamType,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      githubTeamId = pulumi.Input.asOptionalInput<double>(githubTeamId),
      members = pulumi.Input.asOptionalInput<List<String>>(members),
      name = pulumi.Input.asOptionalInput<String>(name),
      organizationName = pulumi.Input.asInput<String>(organizationName),
      teamType = pulumi.Input.asInput<String>(teamType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'githubTeamId': ?githubTeamId,
      'members': ?members,
      'name': ?name,
      'organizationName': organizationName,
      'teamType': teamType,
    };
  }

  factory TeamArgs.fromMap(Map<String, dynamic> map) {
    return TeamArgs(
      description: map['description'] == null ? null : map['description'] as String,
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      githubTeamId: map['githubTeamId'] == null ? null : map['githubTeamId'] as double,
      members: map['members'] == null ? null : (map['members'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      organizationName: map['organizationName'] as String,
      teamType: map['teamType'] as String,
    );
  }
}

