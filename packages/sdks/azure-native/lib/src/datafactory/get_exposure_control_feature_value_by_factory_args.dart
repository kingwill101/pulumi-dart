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
  final pulumi.Input<String>? featureName;
  /// The feature type.
  final pulumi.Input<String>? featureType;
  /// The resource group name.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetExposureControlFeatureValueByFactoryArgs].
  /// [factoryName] The factory name.
  /// [featureName] The feature name.
  /// [featureType] The feature type.
  /// [resourceGroupName] The resource group name.
  GetExposureControlFeatureValueByFactoryArgs({
    required pulumi.Output<String> factoryName,
    pulumi.Output<String>? featureName,
    pulumi.Output<String>? featureType,
    required pulumi.Output<String> resourceGroupName,
  }) :
      factoryName = pulumi.Input.asInput<String>(factoryName),
      featureName = pulumi.Input.asOptionalInput<String>(featureName),
      featureType = pulumi.Input.asOptionalInput<String>(featureType),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

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
      factoryName: pulumi.Output.create<String>(map['factoryName'] as String),
      featureName: map['featureName'] == null ? null : pulumi.Output.create<String>(map['featureName'] as String),
      featureType: map['featureType'] == null ? null : pulumi.Output.create<String>(map['featureType'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

