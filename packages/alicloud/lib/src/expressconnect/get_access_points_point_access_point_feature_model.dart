// ignore_for_file: unused_element, unnecessary_cast


class GetAccessPointsPointAccessPointFeatureModel {
  /// The Access Point Properties.
  final String featureKey;
  /// The Access Point Characteristic Value.
  final String featureValue;

  /// Creates a new [GetAccessPointsPointAccessPointFeatureModel].
  /// [featureKey] The Access Point Properties.
  /// [featureValue] The Access Point Characteristic Value.
  GetAccessPointsPointAccessPointFeatureModel({
    required this.featureKey,
    required this.featureValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureKey': featureKey,
      'featureValue': featureValue,
    };
  }

  factory GetAccessPointsPointAccessPointFeatureModel.fromMap(Map<String, dynamic> map) {
    return GetAccessPointsPointAccessPointFeatureModel(
      featureKey: map['featureKey'] as String,
      featureValue: map['featureValue'] as String,
    );
  }
}

