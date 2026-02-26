// ignore_for_file: unused_element, unnecessary_cast

import 'google_privacy_dlp_v2_categorical_stats_config.dart';
import 'google_privacy_dlp_v2_delta_presence_estimation_config.dart';
import 'google_privacy_dlp_v2_kanonymity_config.dart';
import 'google_privacy_dlp_v2_kmap_estimation_config.dart';
import 'google_privacy_dlp_v2_ldiversity_config.dart';
import 'google_privacy_dlp_v2_numerical_stats_config.dart';

/// Privacy metric to compute for reidentification risk analysis.
class GooglePrivacyDlpV2PrivacyMetric {
  /// Categorical stats
  final GooglePrivacyDlpV2CategoricalStatsConfig? categoricalStatsConfig;

  /// delta-presence
  final GooglePrivacyDlpV2DeltaPresenceEstimationConfig?
      deltaPresenceEstimationConfig;

  /// K-anonymity
  final GooglePrivacyDlpV2KAnonymityConfig? kAnonymityConfig;

  /// k-map
  final GooglePrivacyDlpV2KMapEstimationConfig? kMapEstimationConfig;

  /// l-diversity
  final GooglePrivacyDlpV2LDiversityConfig? lDiversityConfig;

  /// Numerical stats
  final GooglePrivacyDlpV2NumericalStatsConfig? numericalStatsConfig;

  GooglePrivacyDlpV2PrivacyMetric({
    this.categoricalStatsConfig,
    this.deltaPresenceEstimationConfig,
    this.kAnonymityConfig,
    this.kMapEstimationConfig,
    this.lDiversityConfig,
    this.numericalStatsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoricalStatsConfigValue = categoricalStatsConfig;
    if (categoricalStatsConfigValue != null) {
      map['categoricalStatsConfig'] = categoricalStatsConfigValue.toMap();
    }
    final deltaPresenceEstimationConfigValue = deltaPresenceEstimationConfig;
    if (deltaPresenceEstimationConfigValue != null) {
      map['deltaPresenceEstimationConfig'] =
          deltaPresenceEstimationConfigValue.toMap();
    }
    final kAnonymityConfigValue = kAnonymityConfig;
    if (kAnonymityConfigValue != null) {
      map['kAnonymityConfig'] = kAnonymityConfigValue.toMap();
    }
    final kMapEstimationConfigValue = kMapEstimationConfig;
    if (kMapEstimationConfigValue != null) {
      map['kMapEstimationConfig'] = kMapEstimationConfigValue.toMap();
    }
    final lDiversityConfigValue = lDiversityConfig;
    if (lDiversityConfigValue != null) {
      map['lDiversityConfig'] = lDiversityConfigValue.toMap();
    }
    final numericalStatsConfigValue = numericalStatsConfig;
    if (numericalStatsConfigValue != null) {
      map['numericalStatsConfig'] = numericalStatsConfigValue.toMap();
    }
    return map;
  }

  factory GooglePrivacyDlpV2PrivacyMetric.fromMap(Map<String, dynamic> map) {
    return GooglePrivacyDlpV2PrivacyMetric(
      categoricalStatsConfig: map['categoricalStatsConfig'] == null
          ? null
          : GooglePrivacyDlpV2CategoricalStatsConfig.fromMap(
              (map['categoricalStatsConfig'] as Map).cast<String, dynamic>()),
      deltaPresenceEstimationConfig:
          map['deltaPresenceEstimationConfig'] == null
              ? null
              : GooglePrivacyDlpV2DeltaPresenceEstimationConfig.fromMap(
                  (map['deltaPresenceEstimationConfig'] as Map)
                      .cast<String, dynamic>()),
      kAnonymityConfig: map['kAnonymityConfig'] == null
          ? null
          : GooglePrivacyDlpV2KAnonymityConfig.fromMap(
              (map['kAnonymityConfig'] as Map).cast<String, dynamic>()),
      kMapEstimationConfig: map['kMapEstimationConfig'] == null
          ? null
          : GooglePrivacyDlpV2KMapEstimationConfig.fromMap(
              (map['kMapEstimationConfig'] as Map).cast<String, dynamic>()),
      lDiversityConfig: map['lDiversityConfig'] == null
          ? null
          : GooglePrivacyDlpV2LDiversityConfig.fromMap(
              (map['lDiversityConfig'] as Map).cast<String, dynamic>()),
      numericalStatsConfig: map['numericalStatsConfig'] == null
          ? null
          : GooglePrivacyDlpV2NumericalStatsConfig.fromMap(
              (map['numericalStatsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
