// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../container_recipe_component/container_recipe_component.dart';
import '../container_recipe_instance_configuration/container_recipe_instance_configuration.dart';
import '../container_recipe_target_repository/container_recipe_target_repository.dart';

/// The set of arguments for ContainerRecipe.
class ContainerRecipeArgs {
  /// Ordered configuration block(s) with components for the container recipe. Detailed below.
  final Input<List<ContainerRecipeComponent>> components;

  /// The type of the container to create. Valid values: `DOCKER`.
  final Input<String> containerType;

  /// The description of the container recipe.
  final Input<String>? description;

  /// The Dockerfile template used to build the image as an inline data blob.
  final Input<String>? dockerfileTemplateData;

  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  final Input<String>? dockerfileTemplateUri;

  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  final Input<ContainerRecipeInstanceConfiguration>? instanceConfiguration;

  /// The KMS key used to encrypt the container image.
  final Input<String>? kmsKeyId;

  /// The name of the container recipe.
  final Input<String>? name;

  /// The base image for the container recipe.
  final Input<String> parentImage;

  /// Specifies the operating system platform when you use a custom base image.
  final Input<String>? platformOverride;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The destination repository for the container image. Detailed below.
  final Input<ContainerRecipeTargetRepository> targetRepository;

  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  final Input<String> version;

  /// The working directory to be used during build and test workflows.
  final Input<String>? workingDirectory;

  ContainerRecipeArgs({
    required this.components,
    required this.containerType,
    this.description,
    this.dockerfileTemplateData,
    this.dockerfileTemplateUri,
    this.instanceConfiguration,
    this.kmsKeyId,
    this.name,
    required this.parentImage,
    this.platformOverride,
    this.region,
    this.tags,
    required this.targetRepository,
    required this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['components'] = Input.mapInputValue<List<ContainerRecipeComponent>,
            List<Map<String, dynamic>>>(
        components,
        (value) =>
            Input.encodeList<ContainerRecipeComponent, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['containerType'] = containerType;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final dockerfileTemplateDataValue = dockerfileTemplateData;
    if (dockerfileTemplateDataValue != null) {
      map['dockerfileTemplateData'] = dockerfileTemplateDataValue;
    }
    final dockerfileTemplateUriValue = dockerfileTemplateUri;
    if (dockerfileTemplateUriValue != null) {
      map['dockerfileTemplateUri'] = dockerfileTemplateUriValue;
    }
    final instanceConfigurationValue = instanceConfiguration;
    if (instanceConfigurationValue != null) {
      map['instanceConfiguration'] = Input.mapOptionalInputValue<
              ContainerRecipeInstanceConfiguration, Map<String, dynamic>>(
          instanceConfigurationValue, (value) => value.toMap());
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parentImage'] = parentImage;
    final platformOverrideValue = platformOverride;
    if (platformOverrideValue != null) {
      map['platformOverride'] = platformOverrideValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['targetRepository'] = Input.mapInputValue<
        ContainerRecipeTargetRepository,
        Map<String, dynamic>>(targetRepository, (value) => value.toMap());
    map['version'] = version;
    final workingDirectoryValue = workingDirectory;
    if (workingDirectoryValue != null) {
      map['workingDirectory'] = workingDirectoryValue;
    }
    return map;
  }

  factory ContainerRecipeArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeArgs(
      components:
          Input.asInput<List<ContainerRecipeComponent>>(map['components']),
      containerType: Input.asInput<String>(map['containerType']),
      description: Input.asOptionalInput<String>(map['description']),
      dockerfileTemplateData:
          Input.asOptionalInput<String>(map['dockerfileTemplateData']),
      dockerfileTemplateUri:
          Input.asOptionalInput<String>(map['dockerfileTemplateUri']),
      instanceConfiguration:
          Input.asOptionalInput<ContainerRecipeInstanceConfiguration>(
              map['instanceConfiguration']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      name: Input.asOptionalInput<String>(map['name']),
      parentImage: Input.asInput<String>(map['parentImage']),
      platformOverride: Input.asOptionalInput<String>(map['platformOverride']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetRepository: Input.asInput<ContainerRecipeTargetRepository>(
          map['targetRepository']),
      version: Input.asInput<String>(map['version']),
      workingDirectory: Input.asOptionalInput<String>(map['workingDirectory']),
    );
  }
}
