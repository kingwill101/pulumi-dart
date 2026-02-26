// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_retail_v2alpha_model_frequently_bought_together_features_config_context_products_type.dart';

/// Additional configs for the frequently-bought-together model type.
class GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig {
  /// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  final GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType?
      contextProductsType;

  GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig({
    this.contextProductsType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contextProductsTypeValue = contextProductsType;
    if (contextProductsTypeValue != null) {
      map['contextProductsType'] = contextProductsTypeValue.value;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfig(
      contextProductsType: map['contextProductsType'] == null
          ? null
          : GoogleCloudRetailV2alphaModelFrequentlyBoughtTogetherFeaturesConfigContextProductsType
              .fromValue(map['contextProductsType'] as String),
    );
  }
}
