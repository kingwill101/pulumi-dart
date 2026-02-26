// ignore_for_file: unused_element, unnecessary_cast

import '../service_source_configuration_code_repository_code_configuration_code_configuration_values/service_source_configuration_code_repository_code_configuration_code_configuration_values.dart';

class ServiceSourceConfigurationCodeRepositoryCodeConfiguration {
  /// Basic configuration for building and running the App Runner service. Use this parameter to quickly launch an App Runner service without providing an apprunner.yaml file in the source code repository (or ignoring the file if it exists). See Code Configuration Values below for more details.
  final ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues?
      codeConfigurationValues;

  /// Source of the App Runner configuration. Valid values: `REPOSITORY`, `API`. Values are interpreted as follows:
  /// * `REPOSITORY` - App Runner reads configuration values from the apprunner.yaml file in the
  /// source code repository and ignores the CodeConfigurationValues parameter.
  /// * `API` - App Runner uses configuration values provided in the CodeConfigurationValues
  /// parameter and ignores the apprunner.yaml file in the source code repository.
  final String configurationSource;

  ServiceSourceConfigurationCodeRepositoryCodeConfiguration({
    this.codeConfigurationValues,
    required this.configurationSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final codeConfigurationValuesValue = codeConfigurationValues;
    if (codeConfigurationValuesValue != null) {
      map['codeConfigurationValues'] = codeConfigurationValuesValue.toMap();
    }
    map['configurationSource'] = configurationSource;
    return map;
  }

  factory ServiceSourceConfigurationCodeRepositoryCodeConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepositoryCodeConfiguration(
      codeConfigurationValues: map['codeConfigurationValues'] == null
          ? null
          : ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues
              .fromMap((map['codeConfigurationValues'] as Map)
                  .cast<String, dynamic>()),
      configurationSource: map['configurationSource'] as String,
    );
  }
}
