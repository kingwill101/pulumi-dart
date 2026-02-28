// ignore_for_file: unused_element, unnecessary_cast

import 'service_source_configuration_authentication_configuration.dart';
import 'service_source_configuration_code_repository.dart';
import 'service_source_configuration_image_repository.dart';

class ServiceSourceConfiguration {
  /// Describes resources needed to authenticate access to some source repositories. See Authentication Configuration below for more details.
  final ServiceSourceConfigurationAuthenticationConfiguration?
      authenticationConfiguration;

  /// Whether continuous integration from the source repository is enabled for the App Runner service. If set to `true`, each repository change (source code commit or new image version) starts a deployment. Defaults to `true`.
  final bool? autoDeploymentsEnabled;

  /// Description of a source code repository. See Code Repository below for more details.
  final ServiceSourceConfigurationCodeRepository? codeRepository;

  /// Description of a source image repository. See Image Repository below for more details.
  final ServiceSourceConfigurationImageRepository? imageRepository;

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
    final map = <String, dynamic>{};
    final authenticationConfigurationValue = authenticationConfiguration;
    if (authenticationConfigurationValue != null) {
      map['authenticationConfiguration'] =
          authenticationConfigurationValue.toMap();
    }
    final autoDeploymentsEnabledValue = autoDeploymentsEnabled;
    if (autoDeploymentsEnabledValue != null) {
      map['autoDeploymentsEnabled'] = autoDeploymentsEnabledValue;
    }
    final codeRepositoryValue = codeRepository;
    if (codeRepositoryValue != null) {
      map['codeRepository'] = codeRepositoryValue.toMap();
    }
    final imageRepositoryValue = imageRepository;
    if (imageRepositoryValue != null) {
      map['imageRepository'] = imageRepositoryValue.toMap();
    }
    return map;
  }

  factory ServiceSourceConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfiguration(
      authenticationConfiguration: map['authenticationConfiguration'] == null
          ? null
          : ServiceSourceConfigurationAuthenticationConfiguration.fromMap(
              (map['authenticationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      autoDeploymentsEnabled: map['autoDeploymentsEnabled'] == null
          ? null
          : map['autoDeploymentsEnabled'] as bool,
      codeRepository: map['codeRepository'] == null
          ? null
          : ServiceSourceConfigurationCodeRepository.fromMap(
              (map['codeRepository'] as Map).cast<String, dynamic>()),
      imageRepository: map['imageRepository'] == null
          ? null
          : ServiceSourceConfigurationImageRepository.fromMap(
              (map['imageRepository'] as Map).cast<String, dynamic>()),
    );
  }
}
