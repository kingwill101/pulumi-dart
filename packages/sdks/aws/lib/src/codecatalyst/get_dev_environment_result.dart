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
  final String? envId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Information about the integrated development environment (IDE) configured for a Dev Environment.
  final List<GetDevEnvironmentIde>? ides;
  /// The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  final int? inactivityTimeoutMinutes;
  /// The Amazon EC2 instace type to use for the Dev Environment.
  final String? instanceType;
  /// The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339#section-5.6).
  final String? lastUpdatedTime;
  /// Information about the amount of storage allocated to the Dev Environment.
  final List<GetDevEnvironmentPersistentStorage>? persistentStorages;
  final String? projectName;
  final String? region;
  /// The source repository that contains the branch to clone into the Dev Environment.
  final List<GetDevEnvironmentRepository>? repositories;
  final String? spaceName;
  /// The current status of the Dev Environment. From: PENDING | RUNNING | STARTING | STOPPING | STOPPED | FAILED | DELETING | DELETED.
  final String? status;
  /// The reason for the status.
  final String? statusReason;
  final Map<String, String>? tags;

  /// Creates a new [GetDevEnvironmentResult].
  /// [alias] The user-specified alias for the Dev Environment.
  /// [creatorId] The system-generated unique ID of the user who created the Dev Environment.
  /// [envId] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ides] Information about the integrated development environment (IDE) configured for a Dev Environment.
  /// [inactivityTimeoutMinutes] The amount of time the Dev Environment will run without any activity detected before stopping, in minutes. Only whole integers are allowed. Dev Environments consume compute minutes when running.
  /// [instanceType] The Amazon EC2 instace type to use for the Dev Environment.
  /// [lastUpdatedTime] The time when the Dev Environment was last updated, in coordinated universal time (UTC) timestamp format as specified in [RFC 3339](https://www.rfc-editor.org/rfc/rfc3339#section-5.6).
  /// [persistentStorages] Information about the amount of storage allocated to the Dev Environment.
  /// [projectName] Optional.
  /// [region] Optional.
  /// [repositories] The source repository that contains the branch to clone into the Dev Environment.
  /// [spaceName] Optional.
  /// [status] The current status of the Dev Environment. From: PENDING | RUNNING | STARTING | STOPPING | STOPPED | FAILED | DELETING | DELETED.
  /// [statusReason] The reason for the status.
  /// [tags] Optional.
  const GetDevEnvironmentResult({
    this.alias,
    this.creatorId,
    this.envId,
    this.id,
    this.ides,
    this.inactivityTimeoutMinutes,
    this.instanceType,
    this.lastUpdatedTime,
    this.persistentStorages,
    this.projectName,
    this.region,
    this.repositories,
    this.spaceName,
    this.status,
    this.statusReason,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alias': ?alias,
      'creatorId': ?creatorId,
      'envId': ?envId,
      'id': ?id,
      'ides': ?(() { final guardedValue = ides; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDevEnvironmentIde, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'inactivityTimeoutMinutes': ?inactivityTimeoutMinutes,
      'instanceType': ?instanceType,
      'lastUpdatedTime': ?lastUpdatedTime,
      'persistentStorages': ?(() { final guardedValue = persistentStorages; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDevEnvironmentPersistentStorage, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'projectName': ?projectName,
      'region': ?region,
      'repositories': ?(() { final guardedValue = repositories; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDevEnvironmentRepository, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'spaceName': ?spaceName,
      'status': ?status,
      'statusReason': ?statusReason,
      'tags': ?tags,
    };
  }

  factory GetDevEnvironmentResult.fromMap(Map<String, dynamic> map) {
    return GetDevEnvironmentResult(
      alias: (() { final guardedValue = map['alias']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creatorId: (() { final guardedValue = map['creatorId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      envId: (() { final guardedValue = map['envId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ides: (() { final guardedValue = map['ides']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDevEnvironmentIde>(guardedValue, (value) => GetDevEnvironmentIde.fromMap((value as Map).cast<String, dynamic>())); })(),
      inactivityTimeoutMinutes: (() { final guardedValue = map['inactivityTimeoutMinutes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      instanceType: (() { final guardedValue = map['instanceType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastUpdatedTime: (() { final guardedValue = map['lastUpdatedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      persistentStorages: (() { final guardedValue = map['persistentStorages']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDevEnvironmentPersistentStorage>(guardedValue, (value) => GetDevEnvironmentPersistentStorage.fromMap((value as Map).cast<String, dynamic>())); })(),
      projectName: (() { final guardedValue = map['projectName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      repositories: (() { final guardedValue = map['repositories']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDevEnvironmentRepository>(guardedValue, (value) => GetDevEnvironmentRepository.fromMap((value as Map).cast<String, dynamic>())); })(),
      spaceName: (() { final guardedValue = map['spaceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      statusReason: (() { final guardedValue = map['statusReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
