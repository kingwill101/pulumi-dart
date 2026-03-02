// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_export_sink_configuration.dart';

/// {@template pulumi_sls_oss_export_sink_oss_export_sink_args_doc}
/// The set of arguments for OssExportSink.
/// {@endtemplate}
/// {@macro pulumi_sls_oss_export_sink_oss_export_sink_args_doc}
class OssExportSinkArgs {
  /// OSSExportConfiguration See `configuration` below.
  final pulumi.Input<OssExportSinkConfiguration> configuration;
  /// The description of the job.
  final pulumi.Input<String>? description;
  /// The display name of the job.
  final pulumi.Input<String> displayName;
  /// The unique identifier of the OSS data shipping job.
  final pulumi.Input<String> jobName;
  /// The name of the project.
  final pulumi.Input<String> project;

  /// Creates a new [OssExportSinkArgs].
  /// [configuration] OSSExportConfiguration See `configuration` below.
  /// [description] The description of the job.
  /// [displayName] The display name of the job.
  /// [jobName] The unique identifier of the OSS data shipping job.
  /// [project] The name of the project.
  OssExportSinkArgs({
    required this.configuration,
    this.description,
    required this.displayName,
    required this.jobName,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<OssExportSinkConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'jobName': jobName,
      'project': project,
    };
  }

  factory OssExportSinkArgs.fromMap(Map<String, dynamic> map) {
    return OssExportSinkArgs(
      configuration: (OssExportSinkConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      displayName: (map['displayName'] as String).input(),
      jobName: (map['jobName'] as String).input(),
      project: (map['project'] as String).input(),
    );
  }
}

