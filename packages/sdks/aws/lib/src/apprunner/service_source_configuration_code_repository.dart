// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_source_configuration_code_repository_code_configuration.dart';
import 'service_source_configuration_code_repository_source_code_version.dart';

class ServiceSourceConfigurationCodeRepository {
  /// Configuration for building and running the service from a source code repository. See Code Configuration below for more details.
  final pulumi.Input<ServiceSourceConfigurationCodeRepositoryCodeConfiguration>? codeConfiguration;
  /// Location of the repository that contains the source code.
  final pulumi.Input<String> repositoryUrl;
  /// Version that should be used within the source code repository. See Source Code Version below for more details.
  final pulumi.Input<ServiceSourceConfigurationCodeRepositorySourceCodeVersion> sourceCodeVersion;
  /// The path of the directory that stores source code and configuration files. The build and start commands also execute from here. The path is absolute from root and, if not specified, defaults to the repository root.
  final pulumi.Input<String>? sourceDirectory;

  /// Creates a new [ServiceSourceConfigurationCodeRepository].
  /// [codeConfiguration] Configuration for building and running the service from a source code repository. See Code Configuration below for more details.
  /// [repositoryUrl] Location of the repository that contains the source code.
  /// [sourceCodeVersion] Version that should be used within the source code repository. See Source Code Version below for more details.
  /// [sourceDirectory] The path of the directory that stores source code and configuration files. The build and start commands also execute from here. The path is absolute from root and, if not specified, defaults to the repository root.
  ServiceSourceConfigurationCodeRepository({
    this.codeConfiguration,
    required this.repositoryUrl,
    required this.sourceCodeVersion,
    this.sourceDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'codeConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceSourceConfigurationCodeRepositoryCodeConfiguration, Map<String, dynamic>>(codeConfiguration, (value) => value.toMap()),
      'repositoryUrl': repositoryUrl,
      'sourceCodeVersion': pulumi.Input.mapInputValue<ServiceSourceConfigurationCodeRepositorySourceCodeVersion, Map<String, dynamic>>(sourceCodeVersion, (value) => value.toMap()),
      'sourceDirectory': ?sourceDirectory,
    };
  }

  factory ServiceSourceConfigurationCodeRepository.fromMap(Map<String, dynamic> map) {
    return ServiceSourceConfigurationCodeRepository(
      codeConfiguration: (() { final guardedValue = map['codeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ServiceSourceConfigurationCodeRepositoryCodeConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      repositoryUrl: pulumi.Input.fromValue(map['repositoryUrl'] as String),
      sourceCodeVersion: pulumi.Input.fromValue(ServiceSourceConfigurationCodeRepositorySourceCodeVersion.fromMap((map['sourceCodeVersion']! as Map).cast<String, dynamic>())),
      sourceDirectory: (() { final guardedValue = map['sourceDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

