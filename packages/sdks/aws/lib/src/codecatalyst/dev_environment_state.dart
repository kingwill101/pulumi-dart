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
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ides: (() { final guardedValue = map['ides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevEnvironmentIdes.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inactivityTimeoutMinutes: (() { final guardedValue = map['inactivityTimeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      persistentStorage: (() { final guardedValue = map['persistentStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DevEnvironmentPersistentStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DevEnvironmentRepository>(guardedValue, (value) => DevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>()))); })(),
      spaceName: (() { final guardedValue = map['spaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

