// ignore_for_file: unused_element, unnecessary_cast

import 'build_context.dart';
import 'inference_container_properties.dart';

/// Environment version details.
class EnvironmentVersion {
  /// Defines if image needs to be rebuilt based on base image changes.
  final String? autoRebuild;
  /// Configuration settings for Docker build context.
  final BuildContext? build;
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final String? condaFile;
  /// The asset description text.
  final String? description;
  /// Name of the image that will be used for the environment.
  /// <seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" />
  final String? image;
  /// Defines configuration specific to inference.
  final InferenceContainerProperties? inferenceConfig;
  /// If the name version are system generated (anonymous registration).
  final bool? isAnonymous;
  /// Is the asset archived?
  final bool? isArchived;
  /// The OS type of the environment.
  final String? osType;
  /// The asset property dictionary.
  final Map<String, String>? properties;
  /// Stage in the environment lifecycle assigned to this environment
  final String? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final Map<String, String>? tags;

  /// Creates a new [EnvironmentVersion].
  /// [autoRebuild] Defines if image needs to be rebuilt based on base image changes.
  /// [build] Configuration settings for Docker build context.
  /// [condaFile] Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// [description] The asset description text.
  /// [image] Name of the image that will be used for the environment.
  /// [inferenceConfig] Defines configuration specific to inference.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [osType] The OS type of the environment.
  /// [properties] The asset property dictionary.
  /// [stage] Stage in the environment lifecycle assigned to this environment
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  EnvironmentVersion({
    this.autoRebuild,
    this.build,
    this.condaFile,
    this.description,
    this.image,
    this.inferenceConfig,
    this.isAnonymous,
    this.isArchived,
    this.osType,
    this.properties,
    this.stage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRebuild': ?autoRebuild,
      'build': ?build == null ? null : build!.toMap(),
      'condaFile': ?condaFile,
      'description': ?description,
      'image': ?image,
      'inferenceConfig': ?inferenceConfig == null ? null : inferenceConfig!.toMap(),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'osType': ?osType,
      'properties': ?properties,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory EnvironmentVersion.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersion(
      autoRebuild: map['autoRebuild'] == null ? null : map['autoRebuild'] as String,
      build: map['build'] == null ? null : BuildContext.fromMap((map['build'] as Map).cast<String, dynamic>()),
      condaFile: map['condaFile'] == null ? null : map['condaFile'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      inferenceConfig: map['inferenceConfig'] == null ? null : InferenceContainerProperties.fromMap((map['inferenceConfig'] as Map).cast<String, dynamic>()),
      isAnonymous: map['isAnonymous'] == null ? null : map['isAnonymous'] as bool,
      isArchived: map['isArchived'] == null ? null : map['isArchived'] as bool,
      osType: map['osType'] == null ? null : map['osType'] as String,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, String>(),
      stage: map['stage'] == null ? null : map['stage'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

