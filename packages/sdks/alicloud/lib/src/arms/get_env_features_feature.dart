// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvFeaturesFeature {
  /// The language.
  final pulumi.Input<String> aliyunLang;
  /// The name of the feature.
  final pulumi.Input<String> envFeatureName;
  /// The ID of the environment instance.
  final pulumi.Input<String> environmentId;
  /// The version of the feature.
  final pulumi.Input<String> featureVersion;
  /// The ID of the Env Feature. It formats as `<environment_id>:<env_feature_name>`.
  final pulumi.Input<String> id;
  /// The status of the feature.
  final pulumi.Input<String> status;

  /// Creates a new [GetEnvFeaturesFeature].
  /// [aliyunLang] The language.
  /// [envFeatureName] The name of the feature.
  /// [environmentId] The ID of the environment instance.
  /// [featureVersion] The version of the feature.
  /// [id] The ID of the Env Feature. It formats as `<environment_id>:<env_feature_name>`.
  /// [status] The status of the feature.
  GetEnvFeaturesFeature({
    required this.aliyunLang,
    required this.envFeatureName,
    required this.environmentId,
    required this.featureVersion,
    required this.id,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aliyunLang': aliyunLang,
      'envFeatureName': envFeatureName,
      'environmentId': environmentId,
      'featureVersion': featureVersion,
      'id': id,
      'status': status,
    };
  }

  factory GetEnvFeaturesFeature.fromMap(Map<String, dynamic> map) {
    return GetEnvFeaturesFeature(
      aliyunLang: (map['aliyunLang'] as String).input(),
      envFeatureName: (map['envFeatureName'] as String).input(),
      environmentId: (map['environmentId'] as String).input(),
      featureVersion: (map['featureVersion'] as String).input(),
      id: (map['id'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

