// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_source_configuration_authentication_configuration.dart';
import 'service_source_configuration_code_repository.dart';
import 'service_source_configuration_image_repository.dart';

class ServiceSourceConfiguration {
  /// Describes resources needed to authenticate access to some source repositories. See Authentication Configuration below for more details.
  final pulumi.Input<ServiceSourceConfigurationAuthenticationConfiguration>? authenticationConfiguration;
  /// Whether continuous integration from the source repository is enabled for the App Runner service. If set to `true`, each repository change (source code commit or new image version) starts a deployment. Defaults to `true`.
  final pulumi.Input<bool>? autoDeploymentsEnabled;
  /// Description of a source code repository. See Code Repository below for more details.
  final pulumi.Input<ServiceSourceConfigurationCodeRepository>? codeRepository;
  /// Description of a source image repository. See Image Repository below for more details.
  final pulumi.Input<ServiceSourceConfigurationImageRepository>? imageRepository;

  /// Creates a new [ServiceSourceConfiguration].
  /// [authenticationConfiguration] Describes resources needed to authenticate access to some source repositories. See Authentication Configuration below for more details.
  /// [autoDeploymentsEnabled] Whether continuous integration from the source repository is enabled for the App Runner service. If set to `true`, each repository change (source code commit or new image version) starts a deployment. Defaults to `true`.
  /// [codeRepository] Description of a source code repository. See Code Repository below for more details.
  /// [imageRepository] Description of a source image repository. See Image Repository below for more details.
  ServiceSourceConfiguration({
    this.authenticationConfiguration,
    this.autoDeploymentsEnabled,
    this.codeRepository,
    this.imageRepository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceSourceConfigurationAuthenticationConfiguration, Map<String, dynamic>>(authenticationConfiguration, (value) => value.toMap()),
      'autoDeploymentsEnabled': ?autoDeploymentsEnabled,
      'codeRepository': ?pulumi.Input.mapOptionalInputValue<ServiceSourceConfigurationCodeRepository, Map<String, dynamic>>(codeRepository, (value) => value.toMap()),
      'imageRepository': ?pulumi.Input.mapOptionalInputValue<ServiceSourceConfigurationImageRepository, Map<String, dynamic>>(imageRepository, (value) => value.toMap()),
    };
  }

  factory ServiceSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfiguration(
      authenticationConfiguration: (() { final guardedValue = map['authenticationConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSourceConfigurationAuthenticationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      autoDeploymentsEnabled: (() { final guardedValue = map['autoDeploymentsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      codeRepository: (() { final guardedValue = map['codeRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSourceConfigurationCodeRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageRepository: (() { final guardedValue = map['imageRepository']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSourceConfigurationImageRepository.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

