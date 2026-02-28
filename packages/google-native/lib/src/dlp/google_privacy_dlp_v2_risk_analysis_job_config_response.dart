// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_privacy_dlp_v2_action_response.dart';
import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_privacy_metric_response.dart';

/// Configuration for a risk analysis job. See https://cloud.google.com/dlp/docs/concepts-risk-analysis to learn more.
class GooglePrivacyDlpV2RiskAnalysisJobConfigResponse {
  /// Actions to execute at the completion of the job. Are executed in the order provided.
  final List<GooglePrivacyDlpV2ActionResponse> actions;

  /// Privacy metric to compute.
  final GooglePrivacyDlpV2PrivacyMetricResponse privacyMetric;

  /// Input dataset to compute metrics over.
  final GooglePrivacyDlpV2BigQueryTableResponse sourceTable;

  /// Creates a new [GooglePrivacyDlpV2RiskAnalysisJobConfigResponse].
  /// [actions] Actions to execute at the completion of the job. Are executed in the order provided.
  /// [privacyMetric] Privacy metric to compute.
  /// [sourceTable] Input dataset to compute metrics over.
  GooglePrivacyDlpV2RiskAnalysisJobConfigResponse({
    required this.actions,
    required this.privacyMetric,
    required this.sourceTable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = pulumi.Input.encodeList<GooglePrivacyDlpV2ActionResponse,
        Map<String, dynamic>>(actions, (value) => value.toMap());
    map['privacyMetric'] = privacyMetric.toMap();
    map['sourceTable'] = sourceTable.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2RiskAnalysisJobConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2RiskAnalysisJobConfigResponse(
      actions: pulumi.Input.decodeList<GooglePrivacyDlpV2ActionResponse>(
          map['actions'],
          (value) => GooglePrivacyDlpV2ActionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      privacyMetric: GooglePrivacyDlpV2PrivacyMetricResponse.fromMap(
          (map['privacyMetric'] as Map).cast<String, dynamic>()),
      sourceTable: GooglePrivacyDlpV2BigQueryTableResponse.fromMap(
          (map['sourceTable'] as Map).cast<String, dynamic>()),
    );
  }
}
