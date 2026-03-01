// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2_model_frequently_bought_together_features_config_response.dart';

/// Additional model features config.
class GoogleCloudRetailV2ModelModelFeaturesConfigResponse {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse
  frequentlyBoughtTogetherConfig;

  /// Creates a new [GoogleCloudRetailV2ModelModelFeaturesConfigResponse].
  /// [frequentlyBoughtTogetherConfig] Additional configs for frequently-bought-together models.
  GoogleCloudRetailV2ModelModelFeaturesConfigResponse({
    required this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'frequentlyBoughtTogetherConfig': frequentlyBoughtTogetherConfig.toMap(),
    };
  }

  factory GoogleCloudRetailV2ModelModelFeaturesConfigResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudRetailV2ModelModelFeaturesConfigResponse(
      frequentlyBoughtTogetherConfig:
          GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap(
            (map['frequentlyBoughtTogetherConfig'] as Map)
                .cast<String, dynamic>(),
          ),
    );
  }
}
