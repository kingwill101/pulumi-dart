// ignore_for_file: unused_element, unnecessary_cast

import 'execution_report_response.dart';
import 'validation_report_response.dart';

/// Result data returned by getImportJob.
class GetImportJobMigrationcenterV1Result {
  /// Reference to a source.
  final String assetSource;

  /// The timestamp when the import job was completed.
  final String completeTime;

  /// The timestamp when the import job was created.
  final String createTime;

  /// Optional. User-friendly display name. Maximum length is 256 characters.
  final String displayName;

  /// The report with the results of running the import job.
  final ExecutionReportResponse executionReport;

  /// Labels as key value pairs.
  final Map<String, String> labels;

  /// The full name of the import job.
  final String name;

  /// The state of the import job.
  final String state;

  /// The timestamp when the import job was last updated.
  final String updateTime;

  /// The report with the validation results of the import job.
  final ValidationReportResponse validationReport;

  GetImportJobMigrationcenterV1Result({
    required this.assetSource,
    required this.completeTime,
    required this.createTime,
    required this.displayName,
    required this.executionReport,
    required this.labels,
    required this.name,
    required this.state,
    required this.updateTime,
    required this.validationReport,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetSource'] = assetSource;
    map['completeTime'] = completeTime;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['executionReport'] = executionReport.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['validationReport'] = validationReport.toMap();
    return map;
  }

  factory GetImportJobMigrationcenterV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetImportJobMigrationcenterV1Result(
      assetSource: map['assetSource'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      executionReport: ExecutionReportResponse.fromMap(
          (map['executionReport'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      validationReport: ValidationReportResponse.fromMap(
          (map['validationReport'] as Map).cast<String, dynamic>()),
    );
  }
}
