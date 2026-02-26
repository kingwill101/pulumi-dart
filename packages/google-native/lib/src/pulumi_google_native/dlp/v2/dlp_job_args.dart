// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_privacy_dlp_v2_inspect_job_config.dart';
import 'google_privacy_dlp_v2_risk_analysis_job_config.dart';

/// The set of arguments for DlpJob.
class DlpJobArgs {
  /// An inspection job scans a storage repository for InfoTypes.
  final Input<GooglePrivacyDlpV2InspectJobConfig>? inspectJob;

  /// The job id can contain uppercase and lowercase letters, numbers, and hyphens; that is, it must match the regular expression: `[a-zA-Z\d-_]+`. The maximum length is 100 characters. Can be empty to allow the system to generate one.
  final Input<String>? jobId;

  /// Deprecated. This field has no effect.
  final Input<String>? location;
  final Input<String>? project;

  /// A risk analysis job calculates re-identification risk metrics for a BigQuery table.
  final Input<GooglePrivacyDlpV2RiskAnalysisJobConfig>? riskJob;

  DlpJobArgs({
    this.inspectJob,
    this.jobId,
    this.location,
    this.project,
    this.riskJob,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inspectJobValue = inspectJob;
    if (inspectJobValue != null) {
      map['inspectJob'] = Input.mapOptionalInputValue<
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
      map['riskJob'] = Input.mapOptionalInputValue<
          GooglePrivacyDlpV2RiskAnalysisJobConfig,
          Map<String, dynamic>>(riskJobValue, (value) => value.toMap());
    }
    return map;
  }

  factory DlpJobArgs.fromMap(Map<String, dynamic> map) {
    return DlpJobArgs(
      inspectJob: Input.asOptionalInput<GooglePrivacyDlpV2InspectJobConfig>(
          map['inspectJob']),
      jobId: Input.asOptionalInput<String>(map['jobId']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      riskJob: Input.asOptionalInput<GooglePrivacyDlpV2RiskAnalysisJobConfig>(
          map['riskJob']),
    );
  }
}
