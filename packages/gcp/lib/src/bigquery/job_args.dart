// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_copy.dart';
import 'job_extract.dart';
import 'job_load.dart';
import 'job_query.dart';

/// {@template pulumi_bigquery_job_job_args_doc}
/// The set of arguments for Job.
/// {@endtemplate}
/// {@macro pulumi_bigquery_job_job_args_doc}
class JobArgs {
  /// Copies a table.
  /// Structure is documented below.
  final pulumi.Input<JobCopy>? copy;
  /// Configures an extract job.
  /// Structure is documented below.
  final pulumi.Input<JobExtract>? extract;
  /// The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  final pulumi.Input<String> jobId;
  /// Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final pulumi.Input<String>? jobTimeoutMs;
  /// The labels associated with this job. You can use these to organize and group your jobs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Configures a load job.
  /// Structure is documented below.
  final pulumi.Input<JobLoad>? load;
  /// The geographic location of the job. The default value is US.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configures a query job.
  /// Structure is documented below.
  final pulumi.Input<JobQuery>? query;
  /// The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  /// The expected format is `projects/{project}/locations/{location}/reservations/{reservation}`.
  final pulumi.Input<String>? reservation;

  /// Creates a new [JobArgs].
  /// [copy] Copies a table.
  /// [extract] Configures an extract job.
  /// [jobId] The ID of the job. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), or dashes (-). The maximum length is 1,024 characters.
  /// [jobTimeoutMs] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs.
  /// [load] Configures a load job.
  /// [location] The geographic location of the job. The default value is US.
  /// [project] The ID of the project in which the resource belongs.
  /// [query] Configures a query job.
  /// [reservation] The reservation that job would use. User can specify a reservation to execute the job. If this field is not set, reservation is determined based on the rules defined by the reservation assignments.
  JobArgs({
    JobCopy? copy,
    JobExtract? extract,
    required String jobId,
    String? jobTimeoutMs,
    Map<String, String>? labels,
    JobLoad? load,
    String? location,
    String? project,
    JobQuery? query,
    String? reservation,
  }) :
      copy = pulumi.Input.asOptionalInput<JobCopy>(copy),
      extract = pulumi.Input.asOptionalInput<JobExtract>(extract),
      jobId = pulumi.Input.asInput<String>(jobId),
      jobTimeoutMs = pulumi.Input.asOptionalInput<String>(jobTimeoutMs),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      load = pulumi.Input.asOptionalInput<JobLoad>(load),
      location = pulumi.Input.asOptionalInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project),
      query = pulumi.Input.asOptionalInput<JobQuery>(query),
      reservation = pulumi.Input.asOptionalInput<String>(reservation);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'copy': ?pulumi.Input.mapOptionalInputValue<JobCopy, Map<String, dynamic>>(copy, (value) => value.toMap()),
      'extract': ?pulumi.Input.mapOptionalInputValue<JobExtract, Map<String, dynamic>>(extract, (value) => value.toMap()),
      'jobId': jobId,
      'jobTimeoutMs': ?jobTimeoutMs,
      'labels': ?labels,
      'load': ?pulumi.Input.mapOptionalInputValue<JobLoad, Map<String, dynamic>>(load, (value) => value.toMap()),
      'location': ?location,
      'project': ?project,
      'query': ?pulumi.Input.mapOptionalInputValue<JobQuery, Map<String, dynamic>>(query, (value) => value.toMap()),
      'reservation': ?reservation,
    };
  }

  factory JobArgs.fromMap(Map<String, dynamic> map) {
    return JobArgs(
      copy: map['copy'] == null ? null : JobCopy.fromMap((map['copy'] as Map).cast<String, dynamic>()),
      extract: map['extract'] == null ? null : JobExtract.fromMap((map['extract'] as Map).cast<String, dynamic>()),
      jobId: map['jobId'] as String,
      jobTimeoutMs: map['jobTimeoutMs'] == null ? null : map['jobTimeoutMs'] as String,
      labels: map['labels'] == null ? null : (map['labels'] as Map).cast<String, String>(),
      load: map['load'] == null ? null : JobLoad.fromMap((map['load'] as Map).cast<String, dynamic>()),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      query: map['query'] == null ? null : JobQuery.fromMap((map['query'] as Map).cast<String, dynamic>()),
      reservation: map['reservation'] == null ? null : map['reservation'] as String,
    );
  }
}

