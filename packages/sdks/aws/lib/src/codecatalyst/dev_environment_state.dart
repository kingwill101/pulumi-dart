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
    this.alias,
    this.ides,
    this.inactivityTimeoutMinutes,
    this.instanceType,
    this.persistentStorage,
    this.projectName,
    this.region,
    this.repositories,
    this.spaceName,
  });

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
      alias: map['alias'] == null ? null : ((map['alias'] as String).input()).input(),
      ides: map['ides'] == null ? null : ((DevEnvironmentIdes.fromMap((map['ides']! as Map).cast<String, dynamic>())).input()).input(),
      inactivityTimeoutMinutes: map['inactivityTimeoutMinutes'] == null ? null : ((map['inactivityTimeoutMinutes'] as int).input()).input(),
      instanceType: map['instanceType'] == null ? null : ((map['instanceType'] as String).input()).input(),
      persistentStorage: map['persistentStorage'] == null ? null : ((DevEnvironmentPersistentStorage.fromMap((map['persistentStorage']! as Map).cast<String, dynamic>())).input()).input(),
      projectName: map['projectName'] == null ? null : ((map['projectName'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      repositories: map['repositories'] == null ? null : ((pulumi.Input.decodeList<DevEnvironmentRepository>(map['repositories']!, (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      spaceName: map['spaceName'] == null ? null : ((map['spaceName'] as String).input()).input(),
    );
  }
}

