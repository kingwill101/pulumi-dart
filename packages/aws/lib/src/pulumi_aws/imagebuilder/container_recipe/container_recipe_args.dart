// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../container_recipe_component/container_recipe_component.dart';
import '../container_recipe_instance_configuration/container_recipe_instance_configuration.dart';
import '../container_recipe_target_repository/container_recipe_target_repository.dart';

/// The set of arguments for ContainerRecipe.
class ContainerRecipeArgs {
  /// Ordered configuration block(s) with components for the container recipe. Detailed below.
  final pulumi.Input<List<ContainerRecipeComponent>> components;

  /// The type of the container to create. Valid values: `DOCKER`.
  final pulumi.Input<String> containerType;

  /// The description of the container recipe.
  final pulumi.Input<String>? description;

  /// The Dockerfile template used to build the image as an inline data blob.
  final pulumi.Input<String>? dockerfileTemplateData;

  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  final pulumi.Input<String>? dockerfileTemplateUri;

  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  final pulumi.Input<ContainerRecipeInstanceConfiguration>?
      instanceConfiguration;

  /// The KMS key used to encrypt the container image.
  final pulumi.Input<String>? kmsKeyId;

  /// The name of the container recipe.
  final pulumi.Input<String>? name;

  /// The base image for the container recipe.
  final pulumi.Input<String> parentImage;

  /// Specifies the operating system platform when you use a custom base image.
  final pulumi.Input<String>? platformOverride;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The destination repository for the container image. Detailed below.
  final pulumi.Input<ContainerRecipeTargetRepository> targetRepository;

  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;

  /// The working directory to be used during build and test workflows.
  final pulumi.Input<String>? workingDirectory;

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
    map['components'] = pulumi.Input.mapInputValue<
            List<ContainerRecipeComponent>, List<Map<String, dynamic>>>(
        components,
        (value) => pulumi.Input.encodeList<ContainerRecipeComponent,
            Map<String, dynamic>>(value, (value) => value.toMap()));
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
      map['instanceConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
    map['targetRepository'] = pulumi.Input.mapInputValue<
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
      components: pulumi.Input.asInput<List<ContainerRecipeComponent>>(
          map['components']),
      containerType: pulumi.Input.asInput<String>(map['containerType']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      dockerfileTemplateData:
          pulumi.Input.asOptionalInput<String>(map['dockerfileTemplateData']),
      dockerfileTemplateUri:
          pulumi.Input.asOptionalInput<String>(map['dockerfileTemplateUri']),
      instanceConfiguration:
          pulumi.Input.asOptionalInput<ContainerRecipeInstanceConfiguration>(
              map['instanceConfiguration']),
      kmsKeyId: pulumi.Input.asOptionalInput<String>(map['kmsKeyId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentImage: pulumi.Input.asInput<String>(map['parentImage']),
      platformOverride:
          pulumi.Input.asOptionalInput<String>(map['platformOverride']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetRepository: pulumi.Input.asInput<ContainerRecipeTargetRepository>(
          map['targetRepository']),
      version: pulumi.Input.asInput<String>(map['version']),
      workingDirectory:
          pulumi.Input.asOptionalInput<String>(map['workingDirectory']),
    );
  }
}
