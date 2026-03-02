// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_container_image_config_repository_auth_config.dart';

class ModelContainerImageConfig {
  /// Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  final pulumi.Input<String> repositoryAccessMode;
  /// Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  final pulumi.Input<ModelContainerImageConfigRepositoryAuthConfig>? repositoryAuthConfig;

  /// Creates a new [ModelContainerImageConfig].
  /// [repositoryAccessMode] Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  /// [repositoryAuthConfig] Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  ModelContainerImageConfig({
    required this.repositoryAccessMode,
    this.repositoryAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryAccessMode': repositoryAccessMode,
      'repositoryAuthConfig': ?pulumi.Input.mapOptionalInputValue<ModelContainerImageConfigRepositoryAuthConfig, Map<String, dynamic>>(repositoryAuthConfig, (value) => value.toMap()),
    };
  }

  factory ModelContainerImageConfig.fromMap(Map<String, dynamic> map) {
    return ModelContainerImageConfig(
      repositoryAccessMode: (map['repositoryAccessMode'] as String).input(),
      repositoryAuthConfig: map['repositoryAuthConfig'] == null ? null : ((ModelContainerImageConfigRepositoryAuthConfig.fromMap((map['repositoryAuthConfig']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

