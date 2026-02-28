// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_risk_analysis_job_config.dart';

/// {@template pulumi_dlp_v2_dlp_job_args_doc}
/// The set of arguments for DlpJob.
/// {@endtemplate}
/// {@macro pulumi_dlp_v2_dlp_job_args_doc}
class DlpJobArgs {
  /// An inspection job scans a storage repository for InfoTypes.
  final pulumi.Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;

  /// The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final pulumi.Input<String>? jobId;

  /// Deprecated. This field has no effect.
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// A risk analysis job calculates re-identification risk metrics for a BigQuery table.
  final pulumi.Input<GooglePrivacyDlpV2RiskAnalysisJobConfig>? riskJob;

  /// Creates a new [DlpJobArgs].
  /// [inspectJob] An inspection job scans a storage repository for InfoTypes.
  /// [jobId] The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  /// [location] Deprecated. This field has no effect.
  /// [project] Optional.
  /// [riskJob] A risk analysis job calculates re-identification risk metrics for a BigQuery table.
  DlpJobArgs({
    GooglePrivacyDlpV2InspectJobConfig? inspectJob,
    String? jobId,
    String? location,
    String? project,
    GooglePrivacyDlpV2RiskAnalysisJobConfig? riskJob,
  })  : inspectJob =
            pulumi.Input.asOptionalInput<GooglePrivacyDlpV2InspectJobConfig>(
                inspectJob),
        jobId = pulumi.Input.asOptionalInput<String>(jobId),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        riskJob = pulumi.Input.asOptionalInput<
            GooglePrivacyDlpV2RiskAnalysisJobConfig>(riskJob);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inspectJobValue = inspectJob;
    if (inspectJobValue != null) {
      map['inspectJob'] = pulumi.Input.mapOptionalInputValue<
          GooglePrivacyDlpV2InspectJobConfig,
          Map<String, dynamic>>(inspectJobValue, (value) => value.toMap());
    }
    final jobIdValue = jobId;
    if (jobIdValue != null) {
      map['jobId'] = jobIdValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final riskJobValue = riskJob;
    if (riskJobValue != null) {
      map['riskJob'] = pulumi.Input.mapOptionalInputValue<
          GooglePrivacyDlpV2RiskAnalysisJobConfig,
          Map<String, dynamic>>(riskJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory DlpJobArgs.fromMap(Map<String, dynamic> map) {
    return DlpJobArgs(
      inspectJob: map['inspectJob'] == null
          ? null
          : GooglePrivacyDlpV2InspectJobConfig.fromMap(
              (map['inspectJob'] as Map).cast<String, dynamic>()),
      jobId: map['jobId'] == null ? null : map['jobId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      riskJob: map['riskJob'] == null
          ? null
          : GooglePrivacyDlpV2RiskAnalysisJobConfig.fromMap(
              (map['riskJob'] as Map).cast<String, dynamic>()),
    );
  }
}
