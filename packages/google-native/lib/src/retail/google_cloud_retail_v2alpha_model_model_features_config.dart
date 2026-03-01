// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2alphaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig?
  frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2alphaModelModelFeaturesConfig].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2alphaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': ?frequentlyBoughtTogetherConfig == null
          ? null
          : frequentlyBoughtTogetherConfig!.toMap(),
    };
  }

  factory GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2alphaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig:
          map['frequentlyBoughtTogetherConfig'] == null
          ? null
          : GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap(
              (map['frequentlyBoughtTogetherConfig'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
