// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config_response.dart';

/// Additional model features config.
class GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse {
  /// Additional configs for frequently-bought-together models.
  final GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse
      frequentlyBoughtTogetherConfig;

  GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse({
    required this.frequentlyBoughtTogetherConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['frequentlyBoughtTogetherConfig'] =
        frequentlyBoughtTogetherConfig.toMap();
    return map;
  }

  factory GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelModelFeaturesConfigResponse(
      frequentlyBoughtTogetherConfig:
          GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigResponse
              .fromMap((map['frequentlyBoughtTogetherConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
