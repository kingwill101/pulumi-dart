// ignore_for_file: unused_element, unnecessary_cast


class FeatureSubset {
  /// [Required] The list of features to include.
  final List<String> features;
  /// Expected value is 'FeatureSubset'.
  final String filterType;

  /// Creates a new [FeatureSubset].
  /// [features] [Required] The list of features to include.
  /// [filterType] Expected value is 'FeatureSubset'.
  FeatureSubset({
    required this.features,
    required this.filterType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'features': features,
      'filterType': filterType,
    };
  }

  factory FeatureSubset.fromMap(Map<String, dynamic> map) {
    return FeatureSubset(
      features: (map['features'] as List).cast<String>(),
      filterType: map['filterType'] as String,
    );
  }
}

