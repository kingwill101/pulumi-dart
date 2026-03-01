// ignore_for_file: unused_element, unnecessary_cast

import 'docker_build_response.dart';
import 'inference_container_properties_response.dart';

/// Environment specification version details.
/// <see href="https://repo2docker.readthedocs.io/en/latest/specification.html" />
class EnvironmentSpecificationVersionResponse {
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final String? condaFile;
  /// The asset description text.
  final String? description;
  /// Configuration settings for Docker.
  final DockerBuildResponse? docker;
  /// Environment specification is either user managed or curated by the Azure ML service
  /// <see href="https://docs.microsoft.com/en-us/azure/machine-learning/resource-curated-environments" />
  final String environmentSpecificationType;
  /// Defines configuration specific to inference.
  final InferenceContainerPropertiesResponse? inferenceContainerProperties;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [EnvironmentSpecificationVersionResponse].
  /// [condaFile] Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// [description] The asset description text.
  /// [docker] Configuration settings for Docker.
  /// [environmentSpecificationType] Environment specification is either user managed or curated by the Azure ML service
  /// [inferenceContainerProperties] Defines configuration specific to inference.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  EnvironmentSpecificationVersionResponse({
    this.condaFile,
    this.description,
    this.docker,
    required this.environmentSpecificationType,
    this.inferenceContainerProperties,
    this.isAnonymous,
    this.properties,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condaFile': ?condaFile,
      'description': ?description,
      'docker': ?docker == null ? null : docker!.toMap(),
      'environmentSpecificationType': environmentSpecificationType,
      'inferenceContainerProperties': ?inferenceContainerProperties == null ? null : inferenceContainerProperties!.toMap(),
      'isAnonymous': ?isAnonymous,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory EnvironmentSpecificationVersionResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentSpecificationVersionResponse(
      condaFile: map['condaFile'] == null ? null : map['condaFile'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      docker: map['docker'] == null ? null : DockerBuildResponse.fromMap((map['docker'] as Map).cast<String, dynamic>()),
      environmentSpecificationType: map['environmentSpecificationType'] as String,
      inferenceContainerProperties: map['inferenceContainerProperties'] == null ? null : InferenceContainerPropertiesResponse.fromMap((map['inferenceContainerProperties'] as Map).cast<String, dynamic>()),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

