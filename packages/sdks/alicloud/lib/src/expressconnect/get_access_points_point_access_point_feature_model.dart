// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAccessPointsPointAccessPointFeatureModel {
  /// The Access Point Properties.
  final pulumi.Input<String> featureKey;
  /// The Access Point Characteristic Value.
  final pulumi.Input<String> featureValue;

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
      featureKey: pulumi.Input.fromValue(map['featureKey'] as String),
      featureValue: pulumi.Input.fromValue(map['featureValue'] as String),
    );
  }
}

