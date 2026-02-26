// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'job_configuration.dart';
import 'job_reference.dart';

/// The set of arguments for Job.
class JobArgs2 {
  /// [Required] Describes the job configuration.
  final Input<JobConfiguration>? configuration;

  /// [Optional] Reference describing the unique-per-user name of the job.
  final Input<JobReference>? jobReference;
  final Input<String>? project;
  final Input<dynamic>? source;

  JobArgs2({
    this.configuration,
    this.jobReference,
    this.project,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final configurationValue = configuration;
    if (configurationValue != null) {
      map['configuration'] =
          Input.mapOptionalInputValue<JobConfiguration, Map<String, dynamic>>(
              configurationValue, (value) => value.toMap());
    }
    final jobReferenceValue = jobReference;
    if (jobReferenceValue != null) {
      map['jobReference'] =
          Input.mapOptionalInputValue<JobReference, Map<String, dynamic>>(
              jobReferenceValue, (value) => value.toMap());
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

  factory JobArgs2.fromMap(Map<String, dynamic> map) {
    return JobArgs2(
      configuration:
          Input.asOptionalInput<JobConfiguration>(map['configuration']),
      jobReference: Input.asOptionalInput<JobReference>(map['jobReference']),
      project: Input.asOptionalInput<String>(map['project']),
      source: Input.asOptionalInput<dynamic>(map['source']),
    );
  }
}
