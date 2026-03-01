// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the feature window
class FeatureWindowResponse {
  /// Specifies the feature window end time
  final String? featureWindowEnd;
  /// Specifies the feature window start time
  final String? featureWindowStart;

  /// Creates a new [FeatureWindowResponse].
  /// [featureWindowEnd] Specifies the feature window end time
  /// [featureWindowStart] Specifies the feature window start time
  FeatureWindowResponse({
    this.featureWindowEnd,
    this.featureWindowStart,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureWindowEnd': ?featureWindowEnd,
      'featureWindowStart': ?featureWindowStart,
    };
  }

  factory FeatureWindowResponse.fromMap(Map<String, dynamic> map) {
    return FeatureWindowResponse(
      featureWindowEnd: map['featureWindowEnd'] == null ? null : map['featureWindowEnd'] as String,
      featureWindowStart: map['featureWindowStart'] == null ? null : map['featureWindowStart'] as String,
    );
  }
}

