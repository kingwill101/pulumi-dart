// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EnvFeature resources.
class EnvFeatureState {
  /// The name of the resource.
  final pulumi.Input<String>? envFeatureName;
  /// The first ID of the resource.
  final pulumi.Input<String>? environmentId;
  /// Version information of the Feature. You can query Feature information by using ListEnvironmentFeatures.
  final pulumi.Input<String>? featureVersion;
  /// Namespace.
  final pulumi.Input<String>? namespace;
  /// Status.
  final pulumi.Input<String>? status;

  /// Creates a new [EnvFeatureState].
  /// [envFeatureName] The name of the resource.
  /// [environmentId] The first ID of the resource.
  /// [featureVersion] Version information of the Feature. You can query Feature information by using ListEnvironmentFeatures.
  /// [namespace] Namespace.
  /// [status] Status.
  EnvFeatureState({
    this.envFeatureName,
    this.environmentId,
    this.featureVersion,
    this.namespace,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'envFeatureName': ?envFeatureName,
      'environmentId': ?environmentId,
      'featureVersion': ?featureVersion,
      'namespace': ?namespace,
      'status': ?status,
    };
  }

  factory EnvFeatureState.fromMap(Map<String, dynamic> map) {
    return EnvFeatureState(
      envFeatureName: map['envFeatureName'] == null ? null : (map['envFeatureName']! as String).input(),
      environmentId: map['environmentId'] == null ? null : (map['environmentId']! as String).input(),
      featureVersion: map['featureVersion'] == null ? null : (map['featureVersion']! as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

