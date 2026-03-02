// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_context.dart';
import 'inference_container_properties.dart';

/// Environment version details.
class EnvironmentVersion {
  /// Defines if image needs to be rebuilt based on base image changes.
  final pulumi.Input<String>? autoRebuild;
  /// Configuration settings for Docker build context.
  final pulumi.Input<BuildContext>? build;
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// <see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" />
  final pulumi.Input<String>? condaFile;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Name of the image that will be used for the environment.
  /// <seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" />
  final pulumi.Input<String>? image;
  /// Defines configuration specific to inference.
  final pulumi.Input<InferenceContainerProperties>? inferenceConfig;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool>? isArchived;
  /// The OS type of the environment.
  final pulumi.Input<String>? osType;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>>? properties;
  /// Stage in the environment lifecycle assigned to this environment
  final pulumi.Input<String>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>>? tags;

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
      'build': ?pulumi.Input.mapOptionalInputValue<BuildContext, Map<String, dynamic>>(build, (value) => value.toMap()),
      'condaFile': ?condaFile,
      'description': ?description,
      'image': ?image,
      'inferenceConfig': ?pulumi.Input.mapOptionalInputValue<InferenceContainerProperties, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
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
      autoRebuild: map['autoRebuild'] == null ? null : (map['autoRebuild']! as String).input(),
      build: map['build'] == null ? null : (BuildContext.fromMap((map['build']! as Map).cast<String, dynamic>())).input(),
      condaFile: map['condaFile'] == null ? null : (map['condaFile']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      image: map['image'] == null ? null : (map['image']! as String).input(),
      inferenceConfig: map['inferenceConfig'] == null ? null : (InferenceContainerProperties.fromMap((map['inferenceConfig']! as Map).cast<String, dynamic>())).input(),
      isAnonymous: map['isAnonymous'] == null ? null : (map['isAnonymous']! as bool).input(),
      isArchived: map['isArchived'] == null ? null : (map['isArchived']! as bool).input(),
      osType: map['osType'] == null ? null : (map['osType']! as String).input(),
      properties: map['properties'] == null ? null : ((map['properties']! as Map).cast<String, String>()).input(),
      stage: map['stage'] == null ? null : (map['stage']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

