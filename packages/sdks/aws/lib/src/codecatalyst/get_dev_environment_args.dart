// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dev_environment_repository.dart';

/// {@template pulumi_codecatalyst_get_dev_environment_get_dev_environment_args_doc}
/// Arguments for getDevEnvironment.
/// {@endtemplate}
/// {@macro pulumi_codecatalyst_get_dev_environment_get_dev_environment_args_doc}
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

  /// Creates a new [GetDevEnvironmentArgs].
  /// [alias] The user-specified alias for the Dev Environment.
  /// [creatorId] The system-generated unique ID of the user who created the Dev Environment.
  /// [envId] - (Required) The system-generated unique ID of the Dev Environment for which you want to view information. To retrieve a list of Dev Environment IDs, use [ListDevEnvironments](https://docs.aws.amazon.com/codecatalyst/latest/APIReference/API_ListDevEnvironments.html).
  /// [projectName] The name of the project in the space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositories] The source repository that contains the branch to clone into the Dev Environment.
  /// [spaceName] The name of the space.
  /// [tags] Optional.
  const GetDevEnvironmentArgs({
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
    return <String, dynamic>{
      'alias': ?alias,
      'creatorId': ?creatorId,
      'envId': envId,
      'projectName': projectName,
      'region': ?region,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<GetDevEnvironmentRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<GetDevEnvironmentRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spaceName': spaceName,
      'tags': ?tags,
    };
  }

  factory GetDevEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentArgs(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorId: (() { final guardedValue = map['creatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      envId: pulumi.Input.fromValue(map['envId'] as String),
      projectName: pulumi.Input.fromValue(map['projectName'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetDevEnvironmentRepository>(guardedValue, (value) => GetDevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spaceName: pulumi.Input.fromValue(map['spaceName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
