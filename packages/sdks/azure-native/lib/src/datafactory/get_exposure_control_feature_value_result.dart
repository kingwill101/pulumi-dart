// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getExposureControlFeatureValue.
class GetExposureControlFeatureValueResult {
  /// The feature name.
  final String featureName;

  /// The feature value.
  final String value;

  /// Creates a new [GetExposureControlFeatureValueResult].
  /// [featureName] The feature name.
  /// [value] The feature value.
  GetExposureControlFeatureValueResult({
    required this.featureName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'featureName': featureName, 'value': value};
  }

  factory GetExposureControlFeatureValueResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetExposureControlFeatureValueResult(
      featureName: map['featureName'] as String,
      value: map['value'] as String,
    );
  }
}
