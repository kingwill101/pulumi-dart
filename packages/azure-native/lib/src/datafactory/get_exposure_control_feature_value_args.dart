// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_exposure_control_feature_value_args_doc}
/// Arguments for getExposureControlFeatureValue.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_exposure_control_feature_value_args_doc}
class GetExposureControlFeatureValueArgs {
  /// The feature name.
  final pulumi.Input<String>? featureName;
  /// The feature type.
  final pulumi.Input<String>? featureType;
  /// The location identifier.
  final pulumi.Input<String> locationId;

  /// Creates a new [GetExposureControlFeatureValueArgs].
  /// [featureName] The feature name.
  /// [featureType] The feature type.
  /// [locationId] The location identifier.
  GetExposureControlFeatureValueArgs({
    String? featureName,
    String? featureType,
    required String locationId,
  }) :
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      featureType = pulumi.Input.asOptionalInput<String>(featureType),
      locationId = pulumi.Input.asInput<String>(locationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'featureName': ?featureName,
      'featureType': ?featureType,
      'locationId': locationId,
    };
  }

  factory GetExposureControlFeatureValueArgs.fromMap(Map<String, dynamic> map) {
    return GetExposureControlFeatureValueArgs(
      featureName: map['featureName'] == null ? null : map['featureName'] as String,
      featureType: map['featureType'] == null ? null : map['featureType'] as String,
      locationId: map['locationId'] as String,
    );
  }
}

