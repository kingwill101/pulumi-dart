// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_sink_configuration.dart';

/// Input properties used for looking up and filtering OssExportSink resources.
class OssExportSinkState {
  /// OSSExportConfiguration See `configuration` below.
  final pulumi.Input<OssExportSinkConfiguration>? configuration;
  /// Creation time. Example value: 1718787534
  final pulumi.Input<int>? createTime;
  /// The description of the job.
  final pulumi.Input<String>? description;
  /// The display name of the job.
  final pulumi.Input<String>? displayName;
  /// The unique identifier of the OSS data shipping job.
  final pulumi.Input<String>? jobName;
  /// The name of the project.
  final pulumi.Input<String>? project;
  /// The status of the post task. Example value: RUNNING
  final pulumi.Input<String>? status;

  /// Creates a new [OssExportSinkState].
  /// [configuration] OSSExportConfiguration See `configuration` below.
  /// [createTime] Creation time. Example value: 1718787534
  /// [description] The description of the job.
  /// [displayName] The display name of the job.
  /// [jobName] The unique identifier of the OSS data shipping job.
  /// [project] The name of the project.
  /// [status] The status of the post task. Example value: RUNNING
  OssExportSinkState({
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
      'configuration': ?pulumi.Input.mapOptionalInputValue<OssExportSinkConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'jobName': ?jobName,
      'project': ?project,
      'status': ?status,
    };
  }

  factory OssExportSinkState.fromMap(Map<String, dynamic> map) {
    return OssExportSinkState(
      configuration: map['configuration'] == null ? null : (OssExportSinkConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      jobName: map['jobName'] == null ? null : (map['jobName'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
    );
  }
}

