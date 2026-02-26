// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config.dart';

/// Additional model features config.
class GoogleCloudRetailV2alphaModelModelFeaturesConfig {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig?
      frequentlyBoughtTogetherConfig;

  GoogleCloudRetailV2alphaModelModelFeaturesConfig({
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

  factory GoogleCloudRetailV2alphaModelModelFeaturesConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelModelFeaturesConfig(
      frequentlyBoughtTogetherConfig: map['frequentlyBoughtTogetherConfig'] ==
              null
          ? null
          : GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig
              .fromMap((map['frequentlyBoughtTogetherConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
