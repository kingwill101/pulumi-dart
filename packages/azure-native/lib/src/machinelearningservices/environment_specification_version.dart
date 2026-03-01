// ignore_for_file: unused_element, unnecessary_cast

import 'docker_build.dart';
import 'inference_container_properties.dart';

/// Environment specification version details.
/// <see href="https://repo2docker.readthedocs.io/en/latest/specification.html" />
class EnvironmentSpecificationVersion {
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final String? condaFile;
  /// The asset description text.
  final String? description;
  /// Configuration settings for Docker.
  final DockerBuild? docker;
  /// Defines configuration specific to inference.
  final InferenceContainerProperties? inferenceContainerProperties;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [EnvironmentSpecificationVersion].
  /// [condaFile] Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// [description] The asset description text.
  /// [docker] Configuration settings for Docker.
  /// [inferenceContainerProperties] Defines configuration specific to inference.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [properties] The asset property dictionary.
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  EnvironmentSpecificationVersion({
    this.condaFile,
    this.description,
    this.docker,
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
      'inferenceContainerProperties': ?inferenceContainerProperties == null ? null : inferenceContainerProperties!.toMap(),
      'isAnonymous': ?isAnonymous,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory EnvironmentSpecificationVersion.fromMap(Map<String, dynamic> map) {
    return EnvironmentSpecificationVersion(
      condaFile: map['condaFile'] == null ? null : map['condaFile'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      docker: map['docker'] == null ? null : DockerBuild.fromMap((map['docker'] as Map).cast<String, dynamic>()),
      inferenceContainerProperties: map['inferenceContainerProperties'] == null ? null : InferenceContainerProperties.fromMap((map['inferenceContainerProperties'] as Map).cast<String, dynamic>()),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

