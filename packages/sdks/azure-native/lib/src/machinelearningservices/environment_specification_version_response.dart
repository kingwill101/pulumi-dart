// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_build_response.dart';
import 'inference_container_properties_response.dart';

/// Environment specification version details.
/// &lt;see href="https://repo2docker.readthedocs.io/en/latest/specification.html" /&gt;
class EnvironmentSpecificationVersionResponse {
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// &lt;see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" /&gt;
  final pulumi.Input<String>? condaFile;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Configuration settings for Docker.
  final pulumi.Input<DockerBuildResponse>? docker;
  /// Environment specification is either user managed or curated by the Azure ML service
  /// &lt;see href="https://docs.microsoft.com/en-us/azure/machine-learning/resource-curated-environments" /&gt;
  final pulumi.Input<String> environmentSpecificationType;
  /// Defines configuration specific to inference.
  final pulumi.Input<InferenceContainerPropertiesResponse>? inferenceContainerProperties;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'docker': ?pulumi.Input.mapOptionalInputValue<DockerBuildResponse, Map<String, dynamic>>(docker, (value) => value.toMap()),
      'environmentSpecificationType': environmentSpecificationType,
      'inferenceContainerProperties': ?pulumi.Input.mapOptionalInputValue<InferenceContainerPropertiesResponse, Map<String, dynamic>>(inferenceContainerProperties, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'properties': ?properties,
      'tags': ?tags,
    };
  }

  factory EnvironmentSpecificationVersionResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentSpecificationVersionResponse(
      condaFile: (() { final guardedValue = map['condaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      docker: (() { final guardedValue = map['docker']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerBuildResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      environmentSpecificationType: pulumi.Input.fromValue(map['environmentSpecificationType'] as String),
      inferenceContainerProperties: (() { final guardedValue = map['inferenceContainerProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

