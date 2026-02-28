// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_dev_environment_ide.dart';
import 'get_dev_environment_persistent_storage.dart';
import 'get_dev_environment_repository.dart';

/// Result data returned by getDevEnvironment.
class GetDevEnvironmentResult {
  /// The user-specified alias for the Dev Environment.
  final String? alias;

  /// The system-generated unique ID of the user who created the Dev Environment.
  final String? creatorId;
  final String envId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  final List<GetDevEnvironmentIde> ides;

  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  final int inactivityTimeoutMinutes;

  /// The Amazon EC2 instace type to use for the Dev Environment.
  final String instanceType;

  /// The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339#section-5.6).
  final String lastUpdatedTime;

  /// Information about the amount of storage allocated to the Dev Environment.
  final List<GetDevEnvironmentPersistentStorage> persistentStorages;
  final String projectName;
  final String region;

  /// The source repository that contains the branch to clone into the Dev Environment.
  final List<GetDevEnvironmentRepository>? repositories;
  final String spaceName;

  /// The current status of the Dev Environment. From: PENDING | RUNNING | STARTING | STOPPING | STOPPED | FAILED | DELETING | DELETED.
  final String status;

  /// The reason for the status.
  final String statusReason;
  final Map<String, String> tags;

  /// Creates a new [GetDevEnvironmentResult].
  /// [alias] The user-specified alias for the Dev Environment.
  /// [creatorId] The system-generated unique ID of the user who created the Dev Environment.
  /// [envId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ides] Information about the integrated development environment (IDE) configured for a Dev Environment.
  /// [inactivityTimeoutMinutes] The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  /// [instanceType] The Amazon EC2 instace type to use for the Dev Environment.
  /// [lastUpdatedTime] The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339#section-5.6).
  /// [persistentStorages] Information about the amount of storage allocated to the Dev Environment.
  /// [projectName] Required.
  /// [region] Required.
  /// [repositories] The source repository that contains the branch to clone into the Dev Environment.
  /// [spaceName] Required.
  /// [status] The current status of the Dev Environment. From: PENDING | RUNNING | STARTING | STOPPING | STOPPED | FAILED | DELETING | DELETED.
  /// [statusReason] The reason for the status.
  /// [tags] Required.
  GetDevEnvironmentResult({
    this.alias,
    this.creatorId,
    required this.envId,
    required this.id,
    required this.ides,
    required this.inactivityTimeoutMinutes,
    required this.instanceType,
    required this.lastUpdatedTime,
    required this.persistentStorages,
    required this.projectName,
    required this.region,
    this.repositories,
    required this.spaceName,
    required this.status,
    required this.statusReason,
    required this.tags,
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
    map['id'] = id;
    map['ides'] =
        pulumi.Input.encodeList<GetDevEnvironmentIde, Map<String, dynamic>>(
            ides, (value) => value.toMap());
    map['inactivityTimeoutMinutes'] = inactivityTimeoutMinutes;
    map['instanceType'] = instanceType;
    map['lastUpdatedTime'] = lastUpdatedTime;
    map['persistentStorages'] = pulumi.Input.encodeList<
        GetDevEnvironmentPersistentStorage,
        Map<String, dynamic>>(persistentStorages, (value) => value.toMap());
    map['projectName'] = projectName;
    map['region'] = region;
    final repositoriesValue = repositories;
    if (repositoriesValue != null) {
      map['repositories'] = pulumi.Input.encodeList<GetDevEnvironmentRepository,
          Map<String, dynamic>>(repositoriesValue, (value) => value.toMap());
    }
    map['spaceName'] = spaceName;
    map['status'] = status;
    map['statusReason'] = statusReason;
    map['tags'] = tags;
    return map;
  }

  factory GetDevEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentResult(
      alias: map['alias'] == null ? null : map['alias'] as String,
      creatorId: map['creatorId'] == null ? null : map['creatorId'] as String,
      envId: map['envId'] as String,
      id: map['id'] as String,
      ides: pulumi.Input.decodeList<GetDevEnvironmentIde>(
          map['ides'],
          (value) => GetDevEnvironmentIde.fromMap(
              (value as Map).cast<String, dynamic>())),
      inactivityTimeoutMinutes: map['inactivityTimeoutMinutes'] as int,
      instanceType: map['instanceType'] as String,
      lastUpdatedTime: map['lastUpdatedTime'] as String,
      persistentStorages:
          pulumi.Input.decodeList<GetDevEnvironmentPersistentStorage>(
              map['persistentStorages'],
              (value) => GetDevEnvironmentPersistentStorage.fromMap(
                  (value as Map).cast<String, dynamic>())),
      projectName: map['projectName'] as String,
      region: map['region'] as String,
      repositories: map['repositories'] == null
          ? null
          : pulumi.Input.decodeList<GetDevEnvironmentRepository>(
              map['repositories'],
              (value) => GetDevEnvironmentRepository.fromMap(
                  (value as Map).cast<String, dynamic>())),
      spaceName: map['spaceName'] as String,
      status: map['status'] as String,
      statusReason: map['statusReason'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
