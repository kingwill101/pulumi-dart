// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_dev_environment_repository/get_dev_environment_repository.dart';

/// Arguments for getDevEnvironment.
class GetDevEnvironmentArgs {
  /// The user-specified alias for the Dev Environment.
  final pulumi.Input<String>? alias;

  /// The system-generated unique ID of the user who created the Dev Environment.
  final pulumi.Input<String>? creatorId;

  /// - (Required) The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use [ListDevEnvironments](https://docs.aws.amazon.com/codecatalyst/latest/APIReference/API_ListDevEnvironments.html).
  final pulumi.Input<String> envId;

  /// The name of the project in the space.
  final pulumi.Input<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The source repository that contains the branch to clone into the Dev Environment.
  final pulumi.Input<List<GetDevEnvironmentRepository>>? repositories;

  /// The name of the space.
  final pulumi.Input<String> spaceName;
  final pulumi.Input<Map<String, String>>? tags;

  GetDevEnvironmentArgs({
    this.alias,
    this.creatorId,
    required this.envId,
    required this.projectName,
    this.region,
    this.repositories,
    required this.spaceName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    final creatorIdValue = creatorId;
    if (creatorIdValue != null) {
      map['creatorId'] = creatorIdValue;
    }
    map['envId'] = envId;
    map['projectName'] = projectName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final repositoriesValue = repositories;
    if (repositoriesValue != null) {
      map['repositories'] = pulumi.Input.mapOptionalInputValue<
              List<GetDevEnvironmentRepository>, List<Map<String, dynamic>>>(
          repositoriesValue,
          (value) => pulumi.Input.encodeList<GetDevEnvironmentRepository,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['spaceName'] = spaceName;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetDevEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentArgs(
      alias: pulumi.Input.asOptionalInput<String>(map['alias']),
      creatorId: pulumi.Input.asOptionalInput<String>(map['creatorId']),
      envId: pulumi.Input.asInput<String>(map['envId']),
      projectName: pulumi.Input.asInput<String>(map['projectName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositories:
          pulumi.Input.asOptionalInput<List<GetDevEnvironmentRepository>>(
              map['repositories']),
      spaceName: pulumi.Input.asInput<String>(map['spaceName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
