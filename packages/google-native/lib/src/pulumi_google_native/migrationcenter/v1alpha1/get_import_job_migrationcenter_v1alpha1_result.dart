// ignore_for_file: unused_element, unnecessary_cast

import 'execution_report_response_migrationcenter_v1alpha1.dart';
import 'gcspayload_info_response.dart';
import 'inline_payload_info_response.dart';
import 'validation_report_response_migrationcenter_v1alpha1.dart';

/// Result data returned by getImportJob.
class GetImportJobMigrationcenterV1alpha1Result {
  /// Reference to a source.
  final String assetSource;

  /// The timestamp when the import job was completed.
  final String completeTime;

  /// The timestamp when the import job was created.
  final String createTime;

  /// User-friendly display name. Maximum length is 63 characters.
  final String displayName;

  /// The report with the results of running the import job.
  final ExecutionReportResponseMigrationcenterV1alpha1 executionReport;

  /// The payload is in Google Cloud Storage.
  final GCSPayloadInfoResponse gcsPayload;

  /// The payload is included in the request, mainly used for small import jobs.
  final InlinePayloadInfoResponse inlinePayload;

  /// Labels as key value pairs.
  final Map<String, String> labels;

  /// The full name of the import job.
  final String name;

  /// The state of the import job.
  final String state;

  /// The timestamp when the import job was last updated.
  final String updateTime;

  /// The report with the validation results of the import job.
  final ValidationReportResponseMigrationcenterV1alpha1 validationReport;

  GetImportJobMigrationcenterV1alpha1Result({
    required this.assetSource,
    required this.completeTime,
    required this.createTime,
    required this.displayName,
    required this.executionReport,
    required this.gcsPayload,
    required this.inlinePayload,
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
    map['gcsPayload'] = gcsPayload.toMap();
    map['inlinePayload'] = inlinePayload.toMap();
    map['labels'] = labels;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    map['validationReport'] = validationReport.toMap();
    return map;
  }

  factory GetImportJobMigrationcenterV1alpha1Result.fromMap(
      Map<String, dynamic> map) {
    return GetImportJobMigrationcenterV1alpha1Result(
      assetSource: map['assetSource'] as String,
      completeTime: map['completeTime'] as String,
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      executionReport: ExecutionReportResponseMigrationcenterV1alpha1.fromMap(
          (map['executionReport'] as Map).cast<String, dynamic>()),
      gcsPayload: GCSPayloadInfoResponse.fromMap(
          (map['gcsPayload'] as Map).cast<String, dynamic>()),
      inlinePayload: InlinePayloadInfoResponse.fromMap(
          (map['inlinePayload'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
      validationReport: ValidationReportResponseMigrationcenterV1alpha1.fromMap(
          (map['validationReport'] as Map).cast<String, dynamic>()),
    );
  }
}
