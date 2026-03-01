// ignore_for_file: unused_element, unnecessary_cast

import 'build_context_response.dart';
import 'inference_container_properties_response.dart';

/// Environment version details.
class EnvironmentVersionResponse {
  /// Defines if image needs to be rebuilt based on base image changes.
  final String? autoRebuild;
  /// Configuration settings for Docker build context.
  final BuildContextResponse? build;
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final String? condaFile;
  /// The asset description text.
  final String? description;
  /// Environment type is either user managed or curated by the Azure ML service
  /// <see href="https://docs.microsoft.com/en-us/azure/machine-learning/resource-curated-environments" />
  final String environmentType;
  /// Name of the image that will be used for the environment.
  /// <seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" />
  final String? image;
  /// Defines configuration specific to inference.
  final InferenceContainerPropertiesResponse? inferenceConfig;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// The OS type of the environment.
  final String? osType;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Provisioning state for the environment version.
  final String provisioningState;
  /// Stage in the environment lifecycle assigned to this environment
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

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
      'build': ?build == null ? null : build!.toMap(),
      'condaFile': ?condaFile,
      'description': ?description,
      'environmentType': environmentType,
      'image': ?image,
      'inferenceConfig': ?inferenceConfig == null ? null : inferenceConfig!.toMap(),
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
      autoRebuild: map['autoRebuild'] == null ? null : map['autoRebuild'] as String,
      build: map['build'] == null ? null : BuildContextResponse.fromMap((map['build'] as Map).cast<String, dynamic>()),
      condaFile: map['condaFile'] == null ? null : map['condaFile'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      environmentType: map['environmentType'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      inferenceConfig: map['inferenceConfig'] == null ? null : InferenceContainerPropertiesResponse.fromMap((map['inferenceConfig'] as Map).cast<String, dynamic>()),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      osType: map['osType'] == null ? null : map['osType'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      provisioningState: map['provisioningState'] as String,
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

