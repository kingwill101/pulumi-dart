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
  EtlState({
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
      configuration: map['configuration'] == null ? null : (EtlConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      jobName: map['jobName'] == null ? null : (map['jobName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

