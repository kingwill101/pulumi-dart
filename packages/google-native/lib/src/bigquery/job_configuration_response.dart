// ignore_for_file: unused_element, unnecessary_cast

import 'job_configuration_extract_response.dart';
import 'job_configuration_load_response.dart';
import 'job_configuration_query_response.dart';
import 'job_configuration_table_copy_response.dart';

class JobConfigurationResponse {
  /// [Pick one] Copies a table.
  final JobConfigurationTableCopyResponse copy;

  /// [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  final bool dryRun;

  /// [Pick one] Configures an extract job.
  final JobConfigurationExtractResponse extract;

  /// [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  final String jobTimeoutMs;

  /// The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
  final String jobType;

  /// The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  final Map<String, String> labels;

  /// [Pick one] Configures a load job.
  final JobConfigurationLoadResponse load;

  /// [Pick one] Configures a query job.
  final JobConfigurationQueryResponse query;

  /// Creates a new [JobConfigurationResponse].
  /// [copy] [Pick one] Copies a table.
  /// [dryRun] [Optional] If set, don't actually run this job. A valid query will return a mostly empty response with some processing statistics, while an invalid query will return the same error it would if it wasn't a dry run. Behavior of non-query jobs is undefined.
  /// [extract] [Pick one] Configures an extract job.
  /// [jobTimeoutMs] [Optional] Job timeout in milliseconds. If this time limit is exceeded, BigQuery may attempt to terminate the job.
  /// [jobType] The type of the job. Can be QUERY, LOAD, EXTRACT, COPY or UNKNOWN.
  /// [labels] The labels associated with this job. You can use these to organize and group your jobs. Label keys and values can be no longer than 63 characters, can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. Label values are optional. Label keys must start with a letter and each label in the list must have a different key.
  /// [load] [Pick one] Configures a load job.
  /// [query] [Pick one] Configures a query job.
  JobConfigurationResponse({
    required this.copy,
    required this.dryRun,
    required this.extract,
    required this.jobTimeoutMs,
    required this.jobType,
    required this.labels,
    required this.load,
    required this.query,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['copy'] = copy.toMap();
    map['dryRun'] = dryRun;
    map['extract'] = extract.toMap();
    map['jobTimeoutMs'] = jobTimeoutMs;
    map['jobType'] = jobType;
    map['labels'] = labels;
    map['load'] = load.toMap();
    map['query'] = query.toMap();
    return map;
  }

  factory JobConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return JobConfigurationResponse(
      copy: JobConfigurationTableCopyResponse.fromMap(
          (map['copy'] as Map).cast<String, dynamic>()),
      dryRun: map['dryRun'] as bool,
      extract: JobConfigurationExtractResponse.fromMap(
          (map['extract'] as Map).cast<String, dynamic>()),
      jobTimeoutMs: map['jobTimeoutMs'] as String,
      jobType: map['jobType'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      load: JobConfigurationLoadResponse.fromMap(
          (map['load'] as Map).cast<String, dynamic>()),
      query: JobConfigurationQueryResponse.fromMap(
          (map['query'] as Map).cast<String, dynamic>()),
    );
  }
}
