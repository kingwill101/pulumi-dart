// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2beta_model_frequently_bought_together_features_config_response.dart';

/// Additional model features config.
class GoogleCloudRetailV2betaModelModelFeaturesConfigResponse {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse
  frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2betaModelModelFeaturesConfigResponse].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2betaModelModelFeaturesConfigResponse({
    required this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': frequentlyBoughtTogetherConfig.toMap(),
    };
  }

  factory GoogleCloudRetailV2betaModelModelFeaturesConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2betaModelModelFeaturesConfigResponse(
      frequentlyBoughtTogetherConfig:
          GoogleCloudRetailV2betaModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap(
            (map['frequentlyBoughtTogetherConfig'] as Map)
                .cast<String, dynamic>(),
          ),
    );
  }
}
