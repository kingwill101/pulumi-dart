// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build.dart';
import 'inference_container_properties.dart';

/// Environment specification version details.
/// <see href="https://repo2docker.readthedocs.io/en/latest/specification.html" />
class EnvironmentSpecificationVersion {
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final pulumi.Input<String>? condaFile;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Configuration settings for Docker.
  final pulumi.Input<DockerBuild>? docker;
  /// Defines configuration specific to inference.
  final pulumi.Input<InferenceContainerProperties>? inferenceContainerProperties;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'docker': ?pulumi.Input.mapOptionalInputValue<DockerBuild, Map<String, dynamic>>(docker, (value) => value.toMap()),
      'inferenceContainerProperties': ?pulumi.Input.mapOptionalInputValue<InferenceContainerProperties, Map<String, dynamic>>(inferenceContainerProperties, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory EnvironmentSpecificationVersion.fromMap(Map<String, dynamic> map) {
    return EnvironmentSpecificationVersion(
      condaFile: map['condaFile'] == null ? null : (map['condaFile']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      docker: map['docker'] == null ? null : (DockerBuild.fromMap((map['docker']! as Map).cast<String, dynamic>())).input(),
      inferenceContainerProperties: map['inferenceContainerProperties'] == null ? null : (InferenceContainerProperties.fromMap((map['inferenceContainerProperties']! as Map).cast<String, dynamic>())).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous']! as bool).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

