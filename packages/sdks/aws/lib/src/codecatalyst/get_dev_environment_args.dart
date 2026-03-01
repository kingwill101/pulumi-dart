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
  GetDevEnvironmentArgs({
    pulumi.Output<String>? alias,
    pulumi.Output<String>? creatorId,
    required pulumi.Output<String> envId,
    required pulumi.Output<String> projectName,
    pulumi.Output<String>? region,
    pulumi.Output<List<GetDevEnvironmentRepository>>? repositories,
    required pulumi.Output<String> spaceName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      creatorId = pulumi.Input.asOptionalInput<String>(creatorId),
      envId = pulumi.Input.asInput<String>(envId),
      projectName = pulumi.Input.asInput<String>(projectName),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositories = pulumi.Input.asOptionalInput<List<GetDevEnvironmentRepository>>(repositories),
      spaceName = pulumi.Input.asInput<String>(spaceName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      creatorId: map['creatorId'] == null ? null : pulumi.Output.create<String>(map['creatorId'] as String),
      envId: pulumi.Output.create<String>(map['envId'] as String),
      projectName: pulumi.Output.create<String>(map['projectName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositories: map['repositories'] == null ? null : pulumi.Output.create<List<GetDevEnvironmentRepository>>(pulumi.Input.decodeList<GetDevEnvironmentRepository>(map['repositories'], (value) => GetDevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>()))),
      spaceName: pulumi.Output.create<String>(map['spaceName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

