// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_categorical_stats_config_response.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_config_response.dart';
import 'google_privacy_dlp_v2_kanonymity_config_response.dart';
import 'google_privacy_dlp_v2_kmap_estimation_config_response.dart';
import 'google_privacy_dlp_v2_ldiversity_config_response.dart';
import 'google_privacy_dlp_v2_numerical_stats_config_response.dart';

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2PrivacyMetricResponse {
  /// Categorical stats
  final GooglePrivacyDlpV2CategoricalStatsConfigResponse categoricalStatsConfig;

  /// delta-presence
  final GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse
      deltaPresenceEstimationConfig;

  /// K-anonymity
  final GooglePrivacyDlpV2KAnonymityConfigResponse kAnonymityConfig;

  /// k-map
  final GooglePrivacyDlpV2KMapEstimationConfigResponse kMapEstimationConfig;

  /// l-diversity
  final GooglePrivacyDlpV2LDiversityConfigResponse lDiversityConfig;

  /// Numerical stats
  final GooglePrivacyDlpV2NumericalStatsConfigResponse numericalStatsConfig;

  /// Creates a new [GooglePrivacyDlpV2PrivacyMetricResponse].
  /// [categoricalStatsConfig] Categorical stats
  /// [deltaPresenceEstimationConfig] delta-presence
  /// [kAnonymityConfig] K-anonymity
  /// [kMapEstimationConfig] k-map
  /// [lDiversityConfig] l-diversity
  /// [numericalStatsConfig] Numerical stats
  GooglePrivacyDlpV2PrivacyMetricResponse({
    required this.categoricalStatsConfig,
    required this.deltaPresenceEstimationConfig,
    required this.kAnonymityConfig,
    required this.kMapEstimationConfig,
    required this.lDiversityConfig,
    required this.numericalStatsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categoricalStatsConfig'] = categoricalStatsConfig.toMap();
    map['deltaPresenceEstimationConfig'] =
        deltaPresenceEstimationConfig.toMap();
    map['kAnonymityConfig'] = kAnonymityConfig.toMap();
    map['kMapEstimationConfig'] = kMapEstimationConfig.toMap();
    map['lDiversityConfig'] = lDiversityConfig.toMap();
    map['numericalStatsConfig'] = numericalStatsConfig.toMap();
    return map;
  }

  factory GooglePrivacyDlpV2PrivacyMetricResponse.fromMap(
      Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrivacyMetricResponse(
      categoricalStatsConfig:
          GooglePrivacyDlpV2CategoricalStatsConfigResponse.fromMap(
              (map['categoricalStatsConfig'] as Map).cast<String, dynamic>()),
      deltaPresenceEstimationConfig:
          GooglePrivacyDlpV2DeltaPresenceEstimationConfigResponse.fromMap(
              (map['deltaPresenceEstimationConfig'] as Map)
                  .cast<String, dynamic>()),
      kAnonymityConfig: GooglePrivacyDlpV2KAnonymityConfigResponse.fromMap(
          (map['kAnonymityConfig'] as Map).cast<String, dynamic>()),
      kMapEstimationConfig:
          GooglePrivacyDlpV2KMapEstimationConfigResponse.fromMap(
              (map['kMapEstimationConfig'] as Map).cast<String, dynamic>()),
      lDiversityConfig: GooglePrivacyDlpV2LDiversityConfigResponse.fromMap(
          (map['lDiversityConfig'] as Map).cast<String, dynamic>()),
      numericalStatsConfig:
          GooglePrivacyDlpV2NumericalStatsConfigResponse.fromMap(
              (map['numericalStatsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
