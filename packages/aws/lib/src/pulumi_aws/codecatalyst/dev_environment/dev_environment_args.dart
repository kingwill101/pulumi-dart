// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dev_environment_ides/dev_environment_ides.dart';
import '../dev_environment_persistent_storage/dev_environment_persistent_storage.dart';
import '../dev_environment_repository/dev_environment_repository.dart';

/// The set of arguments for DevEnvironment.
class DevEnvironmentArgs {
  final pulumi.Input<String>? alias;

  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  final pulumi.Input<DevEnvironmentIdes> ides;

  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  final pulumi.Input<int>? inactivityTimeoutMinutes;

  /// The Amazon EC2 instace type to use for the Dev Environment. Valid values include dev.standard1.small,dev.standard1.medium,dev.standard1.large,dev.standard1.xlarge
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> instanceType;

  /// Information about the amount of storage allocated to the Dev Environment.
  final pulumi.Input<DevEnvironmentPersistentStorage> persistentStorage;

  /// The name of the project in the space.
  final pulumi.Input<String> projectName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The source repository that contains the branch to clone into the Dev Environment.
  final pulumi.Input<List<DevEnvironmentRepository>>? repositories;

  /// The name of the space.
  final pulumi.Input<String> spaceName;

  DevEnvironmentArgs({
    this.alias,
    required this.ides,
    this.inactivityTimeoutMinutes,
    required this.instanceType,
    required this.persistentStorage,
    required this.projectName,
    this.region,
    this.repositories,
    required this.spaceName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aliasValue = alias;
    if (aliasValue != null) {
      map['alias'] = aliasValue;
    }
    map['ides'] =
        pulumi.Input.mapInputValue<DevEnvironmentIdes, Map<String, dynamic>>(
            ides, (value) => value.toMap());
    final inactivityTimeoutMinutesValue = inactivityTimeoutMinutes;
    if (inactivityTimeoutMinutesValue != null) {
      map['inactivityTimeoutMinutes'] = inactivityTimeoutMinutesValue;
    }
    map['instanceType'] = instanceType;
    map['persistentStorage'] = pulumi.Input.mapInputValue<
        DevEnvironmentPersistentStorage,
        Map<String, dynamic>>(persistentStorage, (value) => value.toMap());
    map['projectName'] = projectName;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final repositoriesValue = repositories;
    if (repositoriesValue != null) {
      map['repositories'] = pulumi.Input.mapOptionalInputValue<
              List<DevEnvironmentRepository>, List<Map<String, dynamic>>>(
          repositoriesValue,
          (value) => pulumi.Input.encodeList<DevEnvironmentRepository,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['spaceName'] = spaceName;
    return map;
  }

  factory DevEnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return DevEnvironmentArgs(
      alias: pulumi.Input.asOptionalInput<String>(map['alias']),
      ides: pulumi.Input.asInput<DevEnvironmentIdes>(map['ides']),
      inactivityTimeoutMinutes:
          pulumi.Input.asOptionalInput<int>(map['inactivityTimeoutMinutes']),
      instanceType: pulumi.Input.asInput<String>(map['instanceType']),
      persistentStorage: pulumi.Input.asInput<DevEnvironmentPersistentStorage>(
          map['persistentStorage']),
      projectName: pulumi.Input.asInput<String>(map['projectName']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      repositories:
          pulumi.Input.asOptionalInput<List<DevEnvironmentRepository>>(
              map['repositories']),
      spaceName: pulumi.Input.asInput<String>(map['spaceName']),
    );
  }
}
