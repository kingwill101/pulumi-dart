// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getExposureControlFeatureValue.
class GetExposureControlFeatureValueResult {
  /// The feature name.
  final String? featureName;
  /// The feature value.
  final String? value;

  /// Creates a new [GetExposureControlFeatureValueResult].
  /// [featureName] The feature name.
  /// [value] The feature value.
  const GetExposureControlFeatureValueResult({
    this.featureName,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'value': ?value,
    };
  }

  factory GetExposureControlFeatureValueResult.fromMap(Map<String, dynamic> map) {
    return GetExposureControlFeatureValueResult(
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
