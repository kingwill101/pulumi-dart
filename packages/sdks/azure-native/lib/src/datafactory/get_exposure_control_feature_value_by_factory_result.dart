// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExposureControlFeatureValueByFactory.
class GetExposureControlFeatureValueByFactoryResult {
  /// The feature name.
  final String? featureName;
  /// The feature value.
  final String? value;

  /// Creates a new [GetExposureControlFeatureValueByFactoryResult].
  /// [featureName] The feature name.
  /// [value] The feature value.
  const GetExposureControlFeatureValueByFactoryResult({
    this.featureName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'value': ?value,
    };
  }

  factory GetExposureControlFeatureValueByFactoryResult.fromMap(Map<String, dynamic> map) {
    return GetExposureControlFeatureValueByFactoryResult(
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
