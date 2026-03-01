// ignore_for_file: unused_element, unnecessary_cast


class FeatureSubsetResponse {
  /// [Required] The list of features to include.
  final List<String> features;
  /// Expected value is 'FeatureSubset'.
  final String filterType;

  /// Creates a new [FeatureSubsetResponse].
  /// [features] [Required] The list of features to include.
  /// [filterType] Expected value is 'FeatureSubset'.
  FeatureSubsetResponse({
    required this.features,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': features,
      'filterType': filterType,
    };
  }

  factory FeatureSubsetResponse.fromMap(Map<String, dynamic> map) {
    return FeatureSubsetResponse(
      features: (map['features'] as List).cast<String>(),
      filterType: map['filterType'] as String,
    );
  }
}

