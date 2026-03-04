// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_source_configuration_code_repository_code_configuration_code_configuration_values.dart';

class ServiceSourceConfigurationCodeRepositoryCodeConfiguration {
  /// Basic configuration for building and running the App Runner service. Use this parameter to quickly launch an App Runner service without providing an apprunner.yaml file in the source code repository (or ignoring the file if it exists). See Code Configuration Values below for more details.
  final pulumi.Input<
    ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues
  >?
  codeConfigurationValues;

  /// Source of the App Runner configuration. Valid values: `REPOSITORY`, `API`. Values are interpreted as follows:
  /// * `REPOSITORY` - App Runner reads configuration values from the apprunner.yaml file in the
  /// source code repository and ignores the CodeConfigurationValues parameter.
  /// * `API` - App Runner uses configuration values provided in the CodeConfigurationValues
  /// parameter and ignores the apprunner.yaml file in the source code repository.
  final pulumi.Input<String> configurationSource;

  /// Creates a new [ServiceSourceConfigurationCodeRepositoryCodeConfiguration].
  /// [codeConfigurationValues] Basic configuration for building and running the App Runner service. Use this parameter to quickly launch an App Runner service without providing an apprunner.yaml file in the source code repository (or ignoring the file if it exists). See Code Configuration Values below for more details.
  /// [configurationSource] Source of the App Runner configuration. Valid values: `REPOSITORY`, `API`. Values are interpreted as follows:
  ServiceSourceConfigurationCodeRepositoryCodeConfiguration({
    this.codeConfigurationValues,
    required this.configurationSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfigurationValues':
          ?pulumi.Input.mapOptionalInputValue<
            ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues,
            Map<String, dynamic>
          >(codeConfigurationValues, (value) => value.toMap()),
      'configurationSource': configurationSource,
    };
  }

  factory ServiceSourceConfigurationCodeRepositoryCodeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceSourceConfigurationCodeRepositoryCodeConfiguration(
      codeConfigurationValues: (() {
        final guardedValue = map['codeConfigurationValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ServiceSourceConfigurationCodeRepositoryCodeConfigurationCodeConfigurationValues.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      configurationSource: pulumi.Input.fromValue(
        map['configurationSource'] as String,
      ),
    );
  }
}
