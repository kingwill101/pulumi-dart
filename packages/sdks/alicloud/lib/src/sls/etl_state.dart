// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'etl_configuration.dart';

/// Input properties used for looking up and filtering Etl resources.
class EtlState {
  /// Detailed configuration of the data processing task.   See `configuration` below.
  final pulumi.Input<EtlConfiguration>? configuration;
  /// The time when the task was created.
  final pulumi.Input<int>? createTime;
  /// Description of the data processing task.
  final pulumi.Input<String>? description;
  /// The display name of the data processing task.
  final pulumi.Input<String>? displayName;
  /// The job name. Naming rules are as follows:
  /// - Job names must be unique within the same project.
  /// - Can only contain lowercase letters, digits, hyphens (-), and underscores (_).
  /// - Must start and end with a lowercase letter or digit.
  /// - Must be 2 to 64 characters in length.
  final pulumi.Input<String>? jobName;
  /// Project name.
  final pulumi.Input<String>? project;
  /// Task status.
  final pulumi.Input<String>? status;

  /// Creates a new [EtlState].
  /// [configuration] Detailed configuration of the data processing task.   See `configuration` below.
  /// [createTime] The time when the task was created.
  /// [description] Description of the data processing task.
  /// [displayName] The display name of the data processing task.
  /// [jobName] The job name. Naming rules are as follows:
  /// [project] Project name.
  /// [status] Task status.
  const EtlState({
    this.configuration,
    this.createTime,
    this.description,
    this.displayName,
    this.jobName,
    this.project,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<EtlConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'jobName': ?jobName,
      'project': ?project,
      'status': ?status,
    };
  }

  factory EtlState.fromMap(Map<String, dynamic> map) {
    return EtlState(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EtlConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      jobName: (() { final guardedValue = map['jobName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

