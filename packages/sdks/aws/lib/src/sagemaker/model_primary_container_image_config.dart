// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_primary_container_image_config_repository_auth_config.dart';

class ModelPrimaryContainerImageConfig {
  /// Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  final pulumi.Input<String> repositoryAccessMode;
  /// Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  final pulumi.Input<ModelPrimaryContainerImageConfigRepositoryAuthConfig>? repositoryAuthConfig;

  /// Creates a new [ModelPrimaryContainerImageConfig].
  /// [repositoryAccessMode] Specifies whether the model container is in Amazon ECR or a private Docker registry accessible from your Amazon Virtual Private Cloud (VPC). Allowed values are: `Platform` and `Vpc`.
  /// [repositoryAuthConfig] Specifies an authentication configuration for the private docker registry where your model image is hosted. Specify a value for this property only if you specified Vpc as the value for the RepositoryAccessMode field, and the private Docker registry where the model image is hosted requires authentication. see Repository Auth Config.
  ModelPrimaryContainerImageConfig({
    required this.repositoryAccessMode,
    this.repositoryAuthConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'repositoryAccessMode': repositoryAccessMode,
      'repositoryAuthConfig': ?pulumi.Input.mapOptionalInputValue<ModelPrimaryContainerImageConfigRepositoryAuthConfig, Map<String, dynamic>>(repositoryAuthConfig, (value) => value.toMap()),
    };
  }

  factory ModelPrimaryContainerImageConfig.fromMap(Map<String, dynamic> map) {
    return ModelPrimaryContainerImageConfig(
      repositoryAccessMode: pulumi.Input.fromValue(map['repositoryAccessMode'] as String),
      repositoryAuthConfig: (() { final guardedValue = map['repositoryAuthConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelPrimaryContainerImageConfigRepositoryAuthConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

