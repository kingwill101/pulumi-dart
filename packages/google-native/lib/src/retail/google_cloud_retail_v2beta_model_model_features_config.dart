// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2betaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig?
  frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2betaModelModelFeaturesConfig].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2betaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': ?frequentlyBoughtTogetherConfig == null
          ? null
          : frequentlyBoughtTogetherConfig!.toMap(),
    };
  }

  factory GoogleCloudRetailV2betaModelModelFeaturesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig:
          map['frequentlyBoughtTogetherConfig'] == null
          ? null
          : GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap(
              (map['frequentlyBoughtTogetherConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
