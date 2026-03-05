// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_arms_env_feature_env_feature_args_doc}
/// The set of arguments for EnvFeature.
/// {@endtemplate}
/// {@macro pulumi_arms_env_feature_env_feature_args_doc}
class EnvFeatureArgs {
  /// The name of the resource.
  final pulumi.Input<String> envFeatureName;
  /// The first ID of the resource.
  final pulumi.Input<String> environmentId;
  /// Version information of the Feature. You can query Feature information by using ListEnvironmentFeatures.
  final pulumi.Input<String> featureVersion;

  /// Creates a new [EnvFeatureArgs].
  /// [envFeatureName] The name of the resource.
  /// [environmentId] The first ID of the resource.
  /// [featureVersion] Version information of the Feature. You can query Feature information by using ListEnvironmentFeatures.
  EnvFeatureArgs({
    required this.envFeatureName,
    required this.environmentId,
    required this.featureVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envFeatureName': envFeatureName,
      'environmentId': environmentId,
      'featureVersion': featureVersion,
    };
  }

  factory EnvFeatureArgs.fromMap(Map<String, dynamic> map) {
    return EnvFeatureArgs(
      envFeatureName: pulumi.Input.fromValue(map['envFeatureName'] as String),
      environmentId: pulumi.Input.fromValue(map['environmentId'] as String),
      featureVersion: pulumi.Input.fromValue(map['featureVersion'] as String),
    );
  }
}

