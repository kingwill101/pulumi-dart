// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2betaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig?
      frequentlyBoughtTogetherConfig;

  GoogleCloudRetailV2betaModelModelFeaturesConfig({
    this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final frequentlyBoughtTogetherConfigValue = frequentlyBoughtTogetherConfig;
    if (frequentlyBoughtTogetherConfigValue != null) {
      map['frequentlyBoughtTogetherConfig'] =
          frequentlyBoughtTogetherConfigValue.toMap();
    }
    return map;
  }

  factory GoogleCloudRetailV2betaModelModelFeaturesConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2betaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig: map['frequentlyBoughtTogetherConfig'] ==
              null
          ? null
          : GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfig
              .fromMap((map['frequentlyBoughtTogetherConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
