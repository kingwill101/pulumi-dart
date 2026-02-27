// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_configuration.dart';
import 'job_reference.dart';

/// The set of arguments for Job.
class JobBigqueryV2Args {
  /// [Required] Describes the job configuration.
  final pulumi.Input<JobConfiguration>? configuration;

  /// [Optional] Reference describing the unique-per-user name of the job.
  final pulumi.Input<JobReference>? jobReference;
  final pulumi.Input<String>? project;
  final pulumi.Input<dynamic>? source;

  JobBigqueryV2Args({
    this.configuration,
    this.jobReference,
    this.project,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] = pulumi.Input.mapOptionalInputValue<
          JobConfiguration,
          Map<String, dynamic>>(configurationValue, (value) => value.toMap());
    }
    final jobReferenceValue = jobReference;
    if (jobReferenceValue != null) {
      map['jobReference'] = pulumi.Input.mapOptionalInputValue<JobReference,
          Map<String, dynamic>>(jobReferenceValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory JobBigqueryV2Args.fromMap(Map<String, dynamic> map) {
    return JobBigqueryV2Args(
      configuration:
          pulumi.Input.asOptionalInput<JobConfiguration>(map['configuration']),
      jobReference:
          pulumi.Input.asOptionalInput<JobReference>(map['jobReference']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      source: pulumi.Input.asOptionalInput<dynamic>(map['source']),
    );
  }
}
