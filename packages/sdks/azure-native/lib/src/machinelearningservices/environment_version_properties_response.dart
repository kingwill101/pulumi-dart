// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'build_context_response.dart';
import 'inference_container_properties_environment_version_response.dart';

/// Environment version details.
class EnvironmentVersionPropertiesResponse {
  /// AutoRebuild setting for the derived image
  final pulumi.Input<String?>? autoRebuild;
  /// Configuration settings for Docker build context.
  final pulumi.Input<BuildContextResponse?>? build;
  /// Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// &lt;see href="https://repo2docker.readthedocs.io/en/latest/config_files.html#environment-yml-install-a-conda-environment" /&gt;
  final pulumi.Input<String?>? condaFile;
  /// The asset description text.
  final pulumi.Input<String?>? description;
  /// Environment type is either user managed or curated by the Azure ML service
  /// &lt;see href="https://docs.microsoft.com/en-us/azure/machine-learning/resource-curated-environments" /&gt;
  final pulumi.Input<String> environmentType;
  /// Name of the image that will be used for the environment.
  /// &lt;seealso href="https://docs.microsoft.com/en-us/azure/machine-learning/how-to-deploy-custom-docker-image#use-a-custom-base-image" /&gt;
  final pulumi.Input<String?>? image;
  /// Defines configuration specific to inference.
  final pulumi.Input<InferenceContainerPropertiesEnvironmentVersionResponse?>? inferenceConfig;
  /// If the name version are system generated (anonymous registration).
  final pulumi.Input<bool?>? isAnonymous;
  /// Is the asset archived?
  final pulumi.Input<bool?>? isArchived;
  /// The type of operating system.
  final pulumi.Input<String?>? osType;
  /// The asset property dictionary.
  final pulumi.Input<Map<String, String>?>? properties;
  /// Provisioning state for the environment version.
  final pulumi.Input<String> provisioningState;
  /// Stage in the environment lifecycle assigned to this environment
  final pulumi.Input<String?>? stage;
  /// Tag dictionary. Tags can be added, removed, and updated.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [EnvironmentVersionPropertiesResponse].
  /// [autoRebuild] AutoRebuild setting for the derived image
  /// [build] Configuration settings for Docker build context.
  /// [condaFile] Standard configuration file used by Conda that lets you install any kind of package, including Python, R, and C/C++ packages.
  /// [description] The asset description text.
  /// [environmentType] Environment type is either user managed or curated by the Azure ML service
  /// [image] Name of the image that will be used for the environment.
  /// [inferenceConfig] Defines configuration specific to inference.
  /// [isAnonymous] If the name version are system generated (anonymous registration).
  /// [isArchived] Is the asset archived?
  /// [osType] The type of operating system.
  /// [properties] The asset property dictionary.
  /// [provisioningState] Provisioning state for the environment version.
  /// [stage] Stage in the environment lifecycle assigned to this environment
  /// [tags] Tag dictionary. Tags can be added, removed, and updated.
  EnvironmentVersionPropertiesResponse({
    pulumi.Input<String?>? autoRebuild,
    this.build,
    this.condaFile,
    this.description,
    required this.environmentType,
    this.image,
    this.inferenceConfig,
    pulumi.Input<bool?>? isAnonymous,
    pulumi.Input<bool?>? isArchived,
    pulumi.Input<String?>? osType,
    this.properties,
    required this.provisioningState,
    this.stage,
    this.tags,
  }) : autoRebuild = autoRebuild ?? pulumi.Input.fromValue('Disabled'), isAnonymous = isAnonymous ?? pulumi.Input.fromValue(false), isArchived = isArchived ?? pulumi.Input.fromValue(false), osType = osType ?? pulumi.Input.fromValue('Linux');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRebuild': ?autoRebuild,
      'build': ?pulumi.Input.mapOptionalInputValue<BuildContextResponse, Map<String, dynamic>>(build, (value) => value.toMap()),
      'condaFile': ?condaFile,
      'description': ?description,
      'environmentType': environmentType,
      'image': ?image,
      'inferenceConfig': ?pulumi.Input.mapOptionalInputValue<InferenceContainerPropertiesEnvironmentVersionResponse, Map<String, dynamic>>(inferenceConfig, (value) => value.toMap()),
      'isAnonymous': ?isAnonymous,
      'isArchived': ?isArchived,
      'osType': ?osType,
      'properties': ?properties,
      'provisioningState': provisioningState,
      'stage': ?stage,
      'tags': ?tags,
    };
  }

  factory EnvironmentVersionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EnvironmentVersionPropertiesResponse(
      autoRebuild: (() { final guardedValue = map['autoRebuild']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      build: (() { final guardedValue = map['build']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BuildContextResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      condaFile: (() { final guardedValue = map['condaFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      environmentType: pulumi.Input.fromValue(map['environmentType'] as String),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceConfig: (() { final guardedValue = map['inferenceConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InferenceContainerPropertiesEnvironmentVersionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
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
