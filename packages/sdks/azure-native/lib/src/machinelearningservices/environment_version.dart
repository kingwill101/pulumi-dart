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
  /// &lt;see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" /&gt;
  final pulumi.Input<String>? condaFile;
  /// The asset description text.
  final pulumi.Input<String>? description;
  /// Name of the image that will be used for the environment.
  /// &lt;seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" /&gt;
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
  const EnvironmentVersion({
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
      autoRebuild: (() { final guardedValue = map['autoRebuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condaFile: (() { final guardedValue = map['condaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceConfig: (() { final guardedValue = map['inferenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceContainerProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      isAnonymous: (() { final guardedValue = map['isAnonymous']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isArchived: (() { final guardedValue = map['isArchived']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      stage: (() { final guardedValue = map['stage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

