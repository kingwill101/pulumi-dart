// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dev_environment_ides.dart';
import 'dev_environment_persistent_storage.dart';
import 'dev_environment_repository.dart';

/// Input properties used for looking up and filtering DevEnvironment resources.
class DevEnvironmentState {
  final pulumi.Input<String>? alias;
  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  final pulumi.Input<DevEnvironmentIdes>? ides;
  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  final pulumi.Input<int>? inactivityTimeoutMinutes;
  /// The Amazon EC2 instace type to use for the Dev Environment. Valid values include dev.standard1.small,dev.standard1.medium,dev.standard1.large,dev.standard1.xlarge
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? instanceType;
  /// Information about the amount of storage allocated to the Dev Environment.
  final pulumi.Input<DevEnvironmentPersistentStorage>? persistentStorage;
  /// The name of the project in the space.
  final pulumi.Input<String>? projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The source repository that contains the branch to clone into the Dev Environment.
  final pulumi.Input<List<DevEnvironmentRepository>>? repositories;
  /// The name of the space.
  final pulumi.Input<String>? spaceName;

  /// Creates a new [DevEnvironmentState].
  /// [alias] Optional.
  /// [ides] Information about the integrated development environment (IDE) configured for a Dev Environment.
  /// [inactivityTimeoutMinutes] The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  /// [instanceType] The Amazon EC2 instace type to use for the Dev Environment. Valid values include dev.standard1.small,dev.standard1.medium,dev.standard1.large,dev.standard1.xlarge
  /// [persistentStorage] Information about the amount of storage allocated to the Dev Environment.
  /// [projectName] The name of the project in the space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repositories] The source repository that contains the branch to clone into the Dev Environment.
  /// [spaceName] The name of the space.
  DevEnvironmentState({
    pulumi.Output<String>? alias,
    pulumi.Output<DevEnvironmentIdes>? ides,
    pulumi.Output<int>? inactivityTimeoutMinutes,
    pulumi.Output<String>? instanceType,
    pulumi.Output<DevEnvironmentPersistentStorage>? persistentStorage,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? region,
    pulumi.Output<List<DevEnvironmentRepository>>? repositories,
    pulumi.Output<String>? spaceName,
  }) :
      alias = pulumi.Input.asOptionalInput<String>(alias),
      ides = pulumi.Input.asOptionalInput<DevEnvironmentIdes>(ides),
      inactivityTimeoutMinutes = pulumi.Input.asOptionalInput<int>(inactivityTimeoutMinutes),
      instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
      persistentStorage = pulumi.Input.asOptionalInput<DevEnvironmentPersistentStorage>(persistentStorage),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      region = pulumi.Input.asOptionalInput<String>(region),
      repositories = pulumi.Input.asOptionalInput<List<DevEnvironmentRepository>>(repositories),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'ides': ?pulumi.Input.mapOptionalInputValue<DevEnvironmentIdes, Map<String, dynamic>>(ides, (value) => value.toMap()),
      'inactivityTimeoutMinutes': ?inactivityTimeoutMinutes,
      'instanceType': ?instanceType,
      'persistentStorage': ?pulumi.Input.mapOptionalInputValue<DevEnvironmentPersistentStorage, Map<String, dynamic>>(persistentStorage, (value) => value.toMap()),
      'projectName': ?projectName,
      'region': ?region,
      'repositories': ?pulumi.Input.mapOptionalInputValue<List<DevEnvironmentRepository>, List<Map<String, dynamic>>>(repositories, (value) => pulumi.Input.encodeList<DevEnvironmentRepository, Map<String, dynamic>>(value, (value) => value.toMap())),
      'spaceName': ?spaceName,
    };
  }

  factory DevEnvironmentState.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentState(
      alias: map['alias'] == null ? null : pulumi.Output.create<String>(map['alias'] as String),
      ides: map['ides'] == null ? null : pulumi.Output.create<DevEnvironmentIdes>(DevEnvironmentIdes.fromMap((map['ides'] as Map).cast<String, dynamic>())),
      inactivityTimeoutMinutes: map['inactivityTimeoutMinutes'] == null ? null : pulumi.Output.create<int>(map['inactivityTimeoutMinutes'] as int),
      instanceType: map['instanceType'] == null ? null : pulumi.Output.create<String>(map['instanceType'] as String),
      persistentStorage: map['persistentStorage'] == null ? null : pulumi.Output.create<DevEnvironmentPersistentStorage>(DevEnvironmentPersistentStorage.fromMap((map['persistentStorage'] as Map).cast<String, dynamic>())),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      repositories: map['repositories'] == null ? null : pulumi.Output.create<List<DevEnvironmentRepository>>(pulumi.Input.decodeList<DevEnvironmentRepository>(map['repositories'], (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>()))),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

