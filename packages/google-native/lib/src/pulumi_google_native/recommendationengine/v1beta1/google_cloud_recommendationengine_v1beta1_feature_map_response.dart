// ignore_for_file: unused_element, unnecessary_cast

/// FeatureMap represents extra features that customers want to include in the recommendation model for catalogs/user events as categorical/numerical features.
class GoogleCloudRecommendationengineV1beta1FeatureMapResponse {
  /// Categorical features that can take on one of a limited number of possible values. Some examples would be the brand/maker of a product, or country of a customer. Feature names and values must be UTF-8 encoded strings. For example: `{ "colors": {"value": ["yellow", "green"]}, "sizes": {"value":["S", "M"]}`
  final Map<String, String> categoricalFeatures;

  /// Numerical features. Some examples would be the height/weight of a product, or age of a customer. Feature names must be UTF-8 encoded strings. For example: `{ "lengths_cm": {"value":[2.3, 15.4]}, "heights_cm": {"value":[8.1, 6.4]} }`
  final Map<String, String> numericalFeatures;

  GoogleCloudRecommendationengineV1beta1FeatureMapResponse({
    required this.categoricalFeatures,
    required this.numericalFeatures,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categoricalFeatures'] = categoricalFeatures;
    map['numericalFeatures'] = numericalFeatures;
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1FeatureMapResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1FeatureMapResponse(
      categoricalFeatures:
          (map['categoricalFeatures'] as Map).cast<String, String>(),
      numericalFeatures:
          (map['numericalFeatures'] as Map).cast<String, String>(),
    );
  }
}
