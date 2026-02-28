// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_import_features_analysis.dart';
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_snapshot_analysis.dart';
import 'google_cloud_aiplatform_v1_featurestore_monitoring_config_threshold_config.dart';

/// Configuration of how features in Featurestore are monitored.
class GoogleCloudAiplatformV1FeaturestoreMonitoringConfig {
  /// Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig? categoricalThresholdConfig;
  /// The config for ImportFeatures Analysis Based Feature Monitoring.
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis? importFeaturesAnalysis;
  /// Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig? numericalThresholdConfig;
  /// The config for Snapshot Analysis Based Feature Monitoring.
  final GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis? snapshotAnalysis;

  /// Creates a new [GoogleCloudAiplatformV1FeaturestoreMonitoringConfig].
  /// [categoricalThresholdConfig] Threshold for categorical features of anomaly detection. This is shared by all types of Featurestore Monitoring for categorical features (i.e. Features with type (Feature.ValueType) BOOL or STRING).
  /// [importFeaturesAnalysis] The config for ImportFeatures Analysis Based Feature Monitoring.
  /// [numericalThresholdConfig] Threshold for numerical features of anomaly detection. This is shared by all objectives of Featurestore Monitoring for numerical features (i.e. Features with type (Feature.ValueType) DOUBLE or INT64).
  /// [snapshotAnalysis] The config for Snapshot Analysis Based Feature Monitoring.
  GoogleCloudAiplatformV1FeaturestoreMonitoringConfig({
    this.categoricalThresholdConfig,
    this.importFeaturesAnalysis,
    this.numericalThresholdConfig,
    this.snapshotAnalysis,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categoricalThresholdConfig': ?categoricalThresholdConfig == null ? null : categoricalThresholdConfig!.toMap(),
      'importFeaturesAnalysis': ?importFeaturesAnalysis == null ? null : importFeaturesAnalysis!.toMap(),
      'numericalThresholdConfig': ?numericalThresholdConfig == null ? null : numericalThresholdConfig!.toMap(),
      'snapshotAnalysis': ?snapshotAnalysis == null ? null : snapshotAnalysis!.toMap(),
    };
  }

  factory GoogleCloudAiplatformV1FeaturestoreMonitoringConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreMonitoringConfig(
      categoricalThresholdConfig: map['categoricalThresholdConfig'] == null ? null : GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig.fromMap((map['categoricalThresholdConfig'] as Map).cast<String, dynamic>()),
      importFeaturesAnalysis: map['importFeaturesAnalysis'] == null ? null : GoogleCloudAiplatformV1FeaturestoreMonitoringConfigImportFeaturesAnalysis.fromMap((map['importFeaturesAnalysis'] as Map).cast<String, dynamic>()),
      numericalThresholdConfig: map['numericalThresholdConfig'] == null ? null : GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfig.fromMap((map['numericalThresholdConfig'] as Map).cast<String, dynamic>()),
      snapshotAnalysis: map['snapshotAnalysis'] == null ? null : GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis.fromMap((map['snapshotAnalysis'] as Map).cast<String, dynamic>()),
    );
  }
}

