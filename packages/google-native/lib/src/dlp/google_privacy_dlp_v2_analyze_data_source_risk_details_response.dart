// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_big_query_table_response.dart';
import 'google_privacy_dlp_v2_categorical_stats_result_response.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_result_response.dart';
import 'google_privacy_dlp_v2_kanonymity_result_response.dart';
import 'google_privacy_dlp_v2_kmap_estimation_result_response.dart';
import 'google_privacy_dlp_v2_ldiversity_result_response.dart';
import 'google_privacy_dlp_v2_numerical_stats_result_response.dart';
import 'google_privacy_dlp_v2_privacy_metric_response.dart';
import 'google_privacy_dlp_v2_requested_risk_analysis_options_response.dart';

/// Result of a risk analysis operation request.
class GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse {
  /// Categorical stats result
  final GooglePrivacyDlpV2CategoricalStatsResultResponse categoricalStatsResult;
  /// Delta-presence result
  final GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse deltaPresenceEstimationResult;
  /// K-anonymity result
  final GooglePrivacyDlpV2KAnonymityResultResponse kAnonymityResult;
  /// K-map result
  final GooglePrivacyDlpV2KMapEstimationResultResponse kMapEstimationResult;
  /// L-divesity result
  final GooglePrivacyDlpV2LDiversityResultResponse lDiversityResult;
  /// Numerical stats result
  final GooglePrivacyDlpV2NumericalStatsResultResponse numericalStatsResult;
  /// The configuration used for this job.
  final GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse requestedOptions;
  /// Privacy metric to compute.
  final GooglePrivacyDlpV2PrivacyMetricResponse requestedPrivacyMetric;
  /// Input dataset to compute metrics over.
  final GooglePrivacyDlpV2BigQueryTableResponse requestedSourceTable;

  /// Creates a new [GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse].
  /// [categoricalStatsResult] Categorical stats result
  /// [deltaPresenceEstimationResult] Delta-presence result
  /// [kAnonymityResult] K-anonymity result
  /// [kMapEstimationResult] K-map result
  /// [lDiversityResult] L-divesity result
  /// [numericalStatsResult] Numerical stats result
  /// [requestedOptions] The configuration used for this job.
  /// [requestedPrivacyMetric] Privacy metric to compute.
  /// [requestedSourceTable] Input dataset to compute metrics over.
  GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse({
    required this.categoricalStatsResult,
    required this.deltaPresenceEstimationResult,
    required this.kAnonymityResult,
    required this.kMapEstimationResult,
    required this.lDiversityResult,
    required this.numericalStatsResult,
    required this.requestedOptions,
    required this.requestedPrivacyMetric,
    required this.requestedSourceTable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalStatsResult': categoricalStatsResult.toMap(),
      'deltaPresenceEstimationResult': deltaPresenceEstimationResult.toMap(),
      'kAnonymityResult': kAnonymityResult.toMap(),
      'kMapEstimationResult': kMapEstimationResult.toMap(),
      'lDiversityResult': lDiversityResult.toMap(),
      'numericalStatsResult': numericalStatsResult.toMap(),
      'requestedOptions': requestedOptions.toMap(),
      'requestedPrivacyMetric': requestedPrivacyMetric.toMap(),
      'requestedSourceTable': requestedSourceTable.toMap(),
    };
  }

  factory GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2AnalyzeDataSourceRiskDetailsResponse(
      categoricalStatsResult: GooglePrivacyDlpV2CategoricalStatsResultResponse.fromMap((map['categoricalStatsResult'] as Map).cast<String, dynamic>()),
      deltaPresenceEstimationResult: GooglePrivacyDlpV2DeltaPresenceEstimationResultResponse.fromMap((map['deltaPresenceEstimationResult'] as Map).cast<String, dynamic>()),
      kAnonymityResult: GooglePrivacyDlpV2KAnonymityResultResponse.fromMap((map['kAnonymityResult'] as Map).cast<String, dynamic>()),
      kMapEstimationResult: GooglePrivacyDlpV2KMapEstimationResultResponse.fromMap((map['kMapEstimationResult'] as Map).cast<String, dynamic>()),
      lDiversityResult: GooglePrivacyDlpV2LDiversityResultResponse.fromMap((map['lDiversityResult'] as Map).cast<String, dynamic>()),
      numericalStatsResult: GooglePrivacyDlpV2NumericalStatsResultResponse.fromMap((map['numericalStatsResult'] as Map).cast<String, dynamic>()),
      requestedOptions: GooglePrivacyDlpV2RequestedRiskAnalysisOptionsResponse.fromMap((map['requestedOptions'] as Map).cast<String, dynamic>()),
      requestedPrivacyMetric: GooglePrivacyDlpV2PrivacyMetricResponse.fromMap((map['requestedPrivacyMetric'] as Map).cast<String, dynamic>()),
      requestedSourceTable: GooglePrivacyDlpV2BigQueryTableResponse.fromMap((map['requestedSourceTable'] as Map).cast<String, dynamic>()),
    );
  }
}

