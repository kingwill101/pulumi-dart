// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../job_copy/job_copy.dart';
import '../job_extract/job_extract.dart';
import '../job_load/job_load.dart';
import '../job_query/job_query.dart';

/// The set of arguments for Job.
class JobArgs {
  /// Copies a table.
  /// Structure is documented below.
  final Input<JobCopy>? copy;

  /// Configures an extract job.
  /// Structure is documented below.
  final Input<JobExtract>? extract;

  /// The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final Input<String> jobId;

  /// Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final Input<String>? jobTimeoutMs;

  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Configures a load job.
  /// Structure is documented below.
  final Input<JobLoad>? load;

  /// The geographic location of the job. The default value is US.
  final Input<String>? location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Configures a query job.
  /// Structure is documented below.
  final Input<JobQuery>? query;

  /// The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// The expected format is `projects/{project}/locations/{location}/reservations/{reservation}`.
  final Input<String>? reservation;

  JobArgs({
    this.copy,
    this.extract,
    required this.jobId,
    this.jobTimeoutMs,
    this.labels,
    this.load,
    this.location,
    this.project,
    this.query,
    this.reservation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final copyValue = copy;
    if (copyValue != null) {
      map['copy'] = Input.mapOptionalInputValue<JobCopy, Map<String, dynamic>>(
          copyValue, (value) => value.toMap());
    }
    final extractValue = extract;
    if (extractValue != null) {
      map['extract'] =
          Input.mapOptionalInputValue<JobExtract, Map<String, dynamic>>(
              extractValue, (value) => value.toMap());
    }
    map['jobId'] = jobId;
    final jobTimeoutMsValue = jobTimeoutMs;
    if (jobTimeoutMsValue != null) {
      map['jobTimeoutMs'] = jobTimeoutMsValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final loadValue = load;
    if (loadValue != null) {
      map['load'] = Input.mapOptionalInputValue<JobLoad, Map<String, dynamic>>(
          loadValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryValue = query;
    if (queryValue != null) {
      map['query'] =
          Input.mapOptionalInputValue<JobQuery, Map<String, dynamic>>(
              queryValue, (value) => value.toMap());
    }
    final reservationValue = reservation;
    if (reservationValue != null) {
      map['reservation'] = reservationValue;
    }
    return map;
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      copy: Input.asOptionalInput<JobCopy>(map['copy']),
      extract: Input.asOptionalInput<JobExtract>(map['extract']),
      jobId: Input.asInput<String>(map['jobId']),
      jobTimeoutMs: Input.asOptionalInput<String>(map['jobTimeoutMs']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      load: Input.asOptionalInput<JobLoad>(map['load']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      query: Input.asOptionalInput<JobQuery>(map['query']),
      reservation: Input.asOptionalInput<String>(map['reservation']),
    );
  }
}
