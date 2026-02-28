// ignore_for_file: unused_element, unnecessary_cast


/// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
class GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse {
  /// The number of feature permutations to consider when approximating the Shapley values. Valid range of its value is [1, 50], inclusively.
  final int pathCount;

  /// Creates a new [GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse].
  /// [pathCount] The number of feature permutations to consider when approximating the Shapley values. Valid range of its value is [1, 50], inclusively.
  GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse({
    required this.pathCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'pathCount': pathCount,
    };
  }

  factory GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1SampledShapleyAttributionResponse(
      pathCount: map['pathCount'] as int,
    );
  }
}

