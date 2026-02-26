// ignore_for_file: unused_element, unnecessary_cast

import '../ai_feature_store_entity_type_monitoring_config_categorical_threshold_config/ai_feature_store_entity_type_monitoring_config_categorical_threshold_config.dart';
import '../ai_feature_store_entity_type_monitoring_config_import_features_analysis/ai_feature_store_entity_type_monitoring_config_import_features_analysis.dart';
import '../ai_feature_store_entity_type_monitoring_config_numerical_threshold_config/ai_feature_store_entity_type_monitoring_config_numerical_threshold_config.dart';
import '../ai_feature_store_entity_type_monitoring_config_snapshot_analysis/ai_feature_store_entity_type_monitoring_config_snapshot_analysis.dart';

class AiFeatureStoreEntityTypeMonitoringConfig {
  /// Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// Structure is documented below.
  final AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig?
      categoricalThresholdConfig;

  /// The config for ImportFeatures Analysis Based Feature Monitoring.
  /// Structure is documented below.
  final AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysis?
      importFeaturesAnalysis;

  /// Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// Structure is documented below.
  final AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig?
      numericalThresholdConfig;

  /// The config for Snapshot Analysis Based Feature Monitoring.
  /// Structure is documented below.
  final AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis?
      snapshotAnalysis;

  AiFeatureStoreEntityTypeMonitoringConfig({
    this.categoricalThresholdConfig,
    this.importFeaturesAnalysis,
    this.numericalThresholdConfig,
    this.snapshotAnalysis,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoricalThresholdConfigValue = categoricalThresholdConfig;
    if (categoricalThresholdConfigValue != null) {
      map['categoricalThresholdConfig'] =
          categoricalThresholdConfigValue.toMap();
    }
    final importFeaturesAnalysisValue = importFeaturesAnalysis;
    if (importFeaturesAnalysisValue != null) {
      map['importFeaturesAnalysis'] = importFeaturesAnalysisValue.toMap();
    }
    final numericalThresholdConfigValue = numericalThresholdConfig;
    if (numericalThresholdConfigValue != null) {
      map['numericalThresholdConfig'] = numericalThresholdConfigValue.toMap();
    }
    final snapshotAnalysisValue = snapshotAnalysis;
    if (snapshotAnalysisValue != null) {
      map['snapshotAnalysis'] = snapshotAnalysisValue.toMap();
    }
    return map;
  }

  factory AiFeatureStoreEntityTypeMonitoringConfig.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeMonitoringConfig(
      categoricalThresholdConfig: map['categoricalThresholdConfig'] == null
          ? null
          : AiFeatureStoreEntityTypeMonitoringConfigCategoricalThresholdConfig
              .fromMap((map['categoricalThresholdConfig'] as Map)
                  .cast<String, dynamic>()),
      importFeaturesAnalysis: map['importFeaturesAnalysis'] == null
          ? null
          : AiFeatureStoreEntityTypeMonitoringConfigImportFeaturesAnalysis
              .fromMap((map['importFeaturesAnalysis'] as Map)
                  .cast<String, dynamic>()),
      numericalThresholdConfig: map['numericalThresholdConfig'] == null
          ? null
          : AiFeatureStoreEntityTypeMonitoringConfigNumericalThresholdConfig
              .fromMap((map['numericalThresholdConfig'] as Map)
                  .cast<String, dynamic>()),
      snapshotAnalysis: map['snapshotAnalysis'] == null
          ? null
          : AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis.fromMap(
              (map['snapshotAnalysis'] as Map).cast<String, dynamic>()),
    );
  }
}
