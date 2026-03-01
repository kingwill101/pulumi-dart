// ignore_for_file: unused_element, unnecessary_cast


class GetEnvFeaturesFeature {
  /// The language.
  final String aliyunLang;
  /// The name of the feature.
  final String envFeatureName;
  /// The ID of the environment instance.
  final String environmentId;
  /// The version of the feature.
  final String featureVersion;
  /// The ID of the Env Feature. It formats as `<environment_id>:<env_feature_name>`.
  final String id;
  /// The status of the feature.
  final String status;

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
      aliyunLang: map['aliyunLang'] as String,
      envFeatureName: map['envFeatureName'] as String,
      environmentId: map['environmentId'] as String,
      featureVersion: map['featureVersion'] as String,
      id: map['id'] as String,
      status: map['status'] as String,
    );
  }
}

