// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_risk_analysis_job_config_response.dart';

/// Risk analysis options.
class GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse {
  /// The job config for the risk job.
  final GooglePrivacyDlpV2RiskAnalysisJobConfigResponse jobConfig;

  GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse({
    required this.jobConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['jobConfig'] = jobConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse(
      jobConfig: GooglePrivacyDlpV2RiskAnalysisJobConfigResponse.fromMap(
          (map['jobConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
