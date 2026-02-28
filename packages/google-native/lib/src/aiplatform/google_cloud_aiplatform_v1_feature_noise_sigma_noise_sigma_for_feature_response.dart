// ignore_for_file: unused_element, unnecessary_cast

/// Noise sigma for a single feature.
class GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse {
  /// The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  final String name;

  /// This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  final double sigma;

  /// Creates a new [GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse].
  /// [name] The name of the input feature for which noise sigma is provided. The features are defined in explanation metadata inputs.
  /// [sigma] This represents the standard deviation of the Gaussian kernel that will be used to add noise to the feature prior to computing gradients. Similar to noise_sigma but represents the noise added to the current feature. Defaults to 0.1.
  GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse({
    required this.name,
    required this.sigma,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['sigma'] = sigma;
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureNoiseSigmaNoiseSigmaForFeatureResponse(
      name: map['name'] as String,
      sigma: map['sigma'] as double,
    );
  }
}
