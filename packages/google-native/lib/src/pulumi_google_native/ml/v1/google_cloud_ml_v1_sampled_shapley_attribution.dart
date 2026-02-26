// ignore_for_file: unused_element, unnecessary_cast

/// An attribution method that approximates Shapley values for features that contribute to the label being predicted. A sampling strategy is used to approximate the value rather than considering all subsets of features.
class GoogleCloudMlV1SampledShapleyAttribution {
  /// The number of feature permutations to consider when approximating the Shapley values.
  final int? numPaths;

  GoogleCloudMlV1SampledShapleyAttribution({
    this.numPaths,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final numPathsValue = numPaths;
    if (numPathsValue != null) {
      map['numPaths'] = numPathsValue;
    }
    return map;
  }

  factory GoogleCloudMlV1SampledShapleyAttribution.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudMlV1SampledShapleyAttribution(
      numPaths: map['numPaths'] == null ? null : map['numPaths'] as int,
    );
  }
}
