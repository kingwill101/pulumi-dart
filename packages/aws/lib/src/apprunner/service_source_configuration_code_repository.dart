// ignore_for_file: unused_element, unnecessary_cast

import 'service_source_configuration_code_repository_code_configuration.dart';
import 'service_source_configuration_code_repository_source_code_version.dart';

class ServiceSourceConfigurationCodeRepository {
  /// Configuration for building and running the service from a source code repository. See Code Configuration below for more details.
  final ServiceSourceConfigurationCodeRepositoryCodeConfiguration?
  codeConfiguration;

  /// Location of the repository that contains the source code.
  final String repositoryUrl;

  /// Version that should be used within the source code repository. See Source Code Version below for more details.
  final ServiceSourceConfigurationCodeRepositorySourceCodeVersion
  sourceCodeVersion;

  /// The path of the directory that stores source code and configuration files. The build and start commands also execute from here. The path is absolute from root and, if not specified, defaults to the repository root.
  final String? sourceDirectory;

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
      'codeConfiguration': ?codeConfiguration == null
          ? null
          : codeConfiguration!.toMap(),
      'repositoryUrl': repositoryUrl,
      'sourceCodeVersion': sourceCodeVersion.toMap(),
      'sourceDirectory': ?sourceDirectory,
    };
  }

  factory ServiceSourceConfigurationCodeRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return ServiceSourceConfigurationCodeRepository(
      codeConfiguration: map['codeConfiguration'] == null
          ? null
          : ServiceSourceConfigurationCodeRepositoryCodeConfiguration.fromMap(
              (map['codeConfiguration'] as Map).cast<String, dynamic>(),
            ),
      repositoryUrl: map['repositoryUrl'] as String,
      sourceCodeVersion:
          ServiceSourceConfigurationCodeRepositorySourceCodeVersion.fromMap(
            (map['sourceCodeVersion'] as Map).cast<String, dynamic>(),
          ),
      sourceDirectory: map['sourceDirectory'] == null
          ? null
          : map['sourceDirectory'] as String,
    );
  }
}
