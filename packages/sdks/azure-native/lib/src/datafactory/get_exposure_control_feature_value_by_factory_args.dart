// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_get_exposure_control_feature_value_by_factory_args_doc}
/// Arguments for getExposureControlFeatureValueByFactory.
/// {@endtemplate}
/// {@macro pulumi_datafactory_get_exposure_control_feature_value_by_factory_args_doc}
class GetExposureControlFeatureValueByFactoryArgs {
  /// The factory name.
  final pulumi.Input<String> factoryName;
  /// The feature name.
  final pulumi.Input<String?>? featureName;
  /// The feature type.
  final pulumi.Input<String?>? featureType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExposureControlFeatureValueByFactoryArgs].
  /// [factoryName] The factory name.
  /// [featureName] The feature name.
  /// [featureType] The feature type.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const GetExposureControlFeatureValueByFactoryArgs({
    required this.factoryName,
    this.featureName,
    this.featureType,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'factoryName': factoryName,
      'featureName': ?featureName,
      'featureType': ?featureType,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetExposureControlFeatureValueByFactoryArgs.fromMap(Map<String, dynamic> map) {
    return GetExposureControlFeatureValueByFactoryArgs(
      factoryName: pulumi.Input.fromValue(map['factoryName'] as String),
      featureName: (() { final guardedValue = map['featureName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      featureType: (() { final guardedValue = map['featureType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
