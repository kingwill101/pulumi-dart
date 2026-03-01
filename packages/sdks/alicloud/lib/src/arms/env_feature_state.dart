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
    pulumi.Output<String>? envFeatureName,
    pulumi.Output<String>? environmentId,
    pulumi.Output<String>? featureVersion,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? status,
  }) :
      envFeatureName = pulumi.Input.asOptionalInput<String>(envFeatureName),
      environmentId = pulumi.Input.asOptionalInput<String>(environmentId),
      featureVersion = pulumi.Input.asOptionalInput<String>(featureVersion),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      status = pulumi.Input.asOptionalInput<String>(status);

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
      envFeatureName: map['envFeatureName'] == null ? null : pulumi.Output.create<String>(map['envFeatureName'] as String),
      environmentId: map['environmentId'] == null ? null : pulumi.Output.create<String>(map['environmentId'] as String),
      featureVersion: map['featureVersion'] == null ? null : pulumi.Output.create<String>(map['featureVersion'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
    );
  }
}

