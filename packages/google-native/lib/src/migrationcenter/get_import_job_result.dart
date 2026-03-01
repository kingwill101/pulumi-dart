// ignore_for_file: unused_element, unnecessary_cast

import 'execution_report_response.dart';
import 'validation_report_response.dart';

/// Result data returned by getImportJob.
class GetImportJobResult {
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

  /// Creates a new [GetImportJobResult].
  /// [assetSource] Reference to a source.
  /// [completeTime] The timestamp when the import job was completed.
  /// [createTime] The timestamp when the import job was created.
  /// [displayName] Optional. User-friendly display name. Maximum length is 256 characters.
  /// [executionReport] The report with the results of running the import job.
  /// [labels] Labels as key value pairs.
  /// [name] The full name of the import job.
  /// [state] The state of the import job.
  /// [updateTime] The timestamp when the import job was last updated.
  /// [validationReport] The report with the validation results of the import job.
  GetImportJobResult({
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
    return <String, dynamic>{
      'assetSource': assetSource,
      'completeTime': completeTime,
      'createTime': createTime,
      'displayName': displayName,
      'executionReport': executionReport.toMap(),
      'labels': labels,
      'name': name,
      'state': state,
      'updateTime': updateTime,
      'validationReport': validationReport.toMap(),
    };
  }

  factory GetImportJobResult.fromMap(Map<String, dynamic> map) {
    return GetImportJobResult(
      assetSource: map['assetSource'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      executionReport: ExecutionReportResponse.fromMap(
        (map['executionReport'] as Map).cast<String, dynamic>(),
      ),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      validationReport: ValidationReportResponse.fromMap(
        (map['validationReport'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
