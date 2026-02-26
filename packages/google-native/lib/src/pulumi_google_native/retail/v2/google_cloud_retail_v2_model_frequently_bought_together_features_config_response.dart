// ignore_for_file: unused_element, unnecessary_cast

/// Additional configs for the frequently-bought-together model type.
class GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse {
  /// Optional. Specifies the context of the model when it is used in predict requests. Can only be set for the `frequently-bought-together` type. If it isn't specified, it defaults to MULTIPLE_CONTEXT_PRODUCTS.
  final String contextProductsType;

  GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse({
    required this.contextProductsType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['contextProductsType'] = contextProductsType;
    return map;
  }

  factory GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRetailV2ModelFrequentlyBoughtTogetherFeaturesConfigResponse(
      contextProductsType: map['contextProductsType'] as String,
    );
  }
}
