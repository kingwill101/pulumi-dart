// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FeatureSubsetResponse {
  /// [Required] The list of features to include.
  final pulumi.Input<List<String>> features;
  /// Expected value is 'FeatureSubset'.
  final pulumi.Input<String> filterType;

  /// Creates a new [FeatureSubsetResponse].
  /// [features] [Required] The list of features to include.
  /// [filterType] Expected value is 'FeatureSubset'.
  const FeatureSubsetResponse({
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
      features: pulumi.Input.fromValue((map['features'] as List).cast<String>()),
      filterType: pulumi.Input.fromValue(map['filterType'] as String),
    );
  }
}

