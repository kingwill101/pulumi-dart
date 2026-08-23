// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExposureControlFeatureValueByFactory.
class GetExposureControlFeatureValueByFactoryResult {
  /// The feature name.
  final String featureName;
  /// The feature value.
  final String value;

  /// Creates a new [GetExposureControlFeatureValueByFactoryResult].
  /// [featureName] The feature name.
  /// [value] The feature value.
  const GetExposureControlFeatureValueByFactoryResult({
    required this.featureName,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': featureName,
      'value': value,
    };
  }

  factory GetExposureControlFeatureValueByFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetExposureControlFeatureValueByFactoryResult(
      featureName: map['featureName'] as String,
      value: map['value'] as String,
    );
  }
}
