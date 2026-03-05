// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_context_response.dart';
import 'inference_container_properties_response.dart';

/// Environment version details.
class EnvironmentVersionResponse {
  /// Defines if image needs to be rebuilt based on base image changes.
  final pulumi.Input<String>? autoRebuild;
  /// Configuration settings for Docker build context.
  final pulumi.Input<BuildContextResponse>? build;
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// &lt;see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" /&gt;
  final pulumi.Input<String>? condaFile;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Environment type is either user managed or curated by the Azure ML service
  /// &lt;see href="https://docs.microsoft.com/en-us/azure/machine-learning/resource-curated-environments" /&gt;
  final pulumi.Input<String> environmentType;
  /// Name of the image that will be used for the environment.
  /// &lt;seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" /&gt;
  final pulumi.Input<String>? image;
  /// Defines configuration specific to inference.
  final pulumi.Input<InferenceContainerPropertiesResponse>? inferenceConfig;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The OS type of the environment.
  final pulumi.Input<String>? osType;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Provisioning state for the environment version.
  final pulumi.Input<String> provisioningState;
  /// Stage in the environment lifecycle assigned to this environment
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentVersionResponse].
  /// [autoRebuild] Defines if image needs to be rebuilt based on base image changes.
  /// [build] Configuration settings for Docker build context.
  /// [condaFile] Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// [description] The asset description text.
  /// [environmentType] Environment type is either user managed or curated by the Azure ML service
  /// [image] Name of the image that will be used for the environment.
  /// [inferenceConfig] Defines configuration specific to inference.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [osType] The OS type of the environment.
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the environment version.
  /// [stage] Stage in the environment lifecycle assigned to this environment
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  EnvironmentVersionResponse({
    this.autoRebuild,
    this.build,
    this.condaFile,
    this.description,
    required this.environmentType,
    this.image,
    this.inferenceConfig,
    this.isAnonymous,
    this.isArchived,
    this.osType,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRebuild': ?autoRebuild,
      'build': ?pulumi.Input.mapOptionalInputValue<BuildContextResponse, Map<String, dynamic>>(build, (value) => value.toMap()),
      'condaFile': ?condaFile,
      'description': ?description,
      'environmentType': environmentType,
      'image': ?image,
      'inferenceConfig': ?pulumi.Input.mapOptionalInputValue<InferenceContainerPropertiesResponse, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'osType': ?osType,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory EnvironmentVersionResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersionResponse(
      autoRebuild: (() { final guardedValue = map['autoRebuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildContextResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condaFile: (() { final guardedValue = map['condaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceConfig: (() { final guardedValue = map['inferenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceContainerPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

