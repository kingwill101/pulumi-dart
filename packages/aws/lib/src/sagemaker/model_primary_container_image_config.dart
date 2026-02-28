// ignore_for_file: unused_element, unnecessary_cast

import 'model_primary_container_image_config_repository_auth_config.dart';

class ModelPrimaryContainerImageConfig {
  /// Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  final String repositoryAccessMode;

  /// Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  final ModelPrimaryContainerImageConfigRepositoryAuthConfig?
      repositoryAuthConfig;

  /// Creates a new [ModelPrimaryContainerImageConfig].
  /// [repositoryAccessMode] Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  /// [repositoryAuthConfig] Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  ModelPrimaryContainerImageConfig({
    required this.repositoryAccessMode,
    this.repositoryAuthConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['repositoryAccessMode'] = repositoryAccessMode;
    final repositoryAuthConfigValue = repositoryAuthConfig;
    if (repositoryAuthConfigValue != null) {
      map['repositoryAuthConfig'] = repositoryAuthConfigValue.toMap();
    }
    return map;
  }

  factory ModelPrimaryContainerImageConfig.fromMap(Map<String, dynamic> map) {
    return ModelPrimaryContainerImageConfig(
      repositoryAccessMode: map['repositoryAccessMode'] as String,
      repositoryAuthConfig: map['repositoryAuthConfig'] == null
          ? null
          : ModelPrimaryContainerImageConfigRepositoryAuthConfig.fromMap(
              (map['repositoryAuthConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
