// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_component.dart';
import 'container_recipe_instance_configuration.dart';
import 'container_recipe_target_repository.dart';

/// {@template pulumi_imagebuilder_container_recipe_container_recipe_args_doc}
/// The set of arguments for ContainerRecipe.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_container_recipe_container_recipe_args_doc}
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
  final pulumi.Input<ContainerRecipeInstanceConfiguration>? instanceConfiguration;
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

  /// Creates a new [ContainerRecipeArgs].
  /// [components] Ordered configuration block(s) with components for the container recipe. Detailed below.
  /// [containerType] The type of the container to create. Valid values: `DOCKER`.
  /// [description] The description of the container recipe.
  /// [dockerfileTemplateData] The Dockerfile template used to build the image as an inline data blob.
  /// [dockerfileTemplateUri] The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  /// [instanceConfiguration] Configuration block used to configure an instance for building and testing container images. Detailed below.
  /// [kmsKeyId] The KMS key used to encrypt the container image.
  /// [name] The name of the container recipe.
  /// [parentImage] The base image for the container recipe.
  /// [platformOverride] Specifies the operating system platform when you use a custom base image.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetRepository] The destination repository for the container image. Detailed below.
  /// [version] Version of the container recipe.
  /// [workingDirectory] The working directory to be used during build and test workflows.
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
    return <String, dynamic>{
      'components': pulumi.Input.mapInputValue<List<ContainerRecipeComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ContainerRecipeComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerType': containerType,
      'description': ?description,
      'dockerfileTemplateData': ?dockerfileTemplateData,
      'dockerfileTemplateUri': ?dockerfileTemplateUri,
      'instanceConfiguration': ?pulumi.Input.mapOptionalInputValue<ContainerRecipeInstanceConfiguration, Map<String, dynamic>>(instanceConfiguration, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'parentImage': parentImage,
      'platformOverride': ?platformOverride,
      'region': ?region,
      'tags': ?tags,
      'targetRepository': pulumi.Input.mapInputValue<ContainerRecipeTargetRepository, Map<String, dynamic>>(targetRepository, (value) => value.toMap()),
      'version': version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ContainerRecipeArgs.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeArgs(
      components: (pulumi.Input.decodeList<ContainerRecipeComponent>(map['components'], (value) => ContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerType: (map['containerType'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dockerfileTemplateData: map['dockerfileTemplateData'] == null ? null : (map['dockerfileTemplateData'] as String).input(),
      dockerfileTemplateUri: map['dockerfileTemplateUri'] == null ? null : (map['dockerfileTemplateUri'] as String).input(),
      instanceConfiguration: map['instanceConfiguration'] == null ? null : (ContainerRecipeInstanceConfiguration.fromMap((map['instanceConfiguration'] as Map).cast<String, dynamic>())).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentImage: (map['parentImage'] as String).input(),
      platformOverride: map['platformOverride'] == null ? null : (map['platformOverride'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      targetRepository: (ContainerRecipeTargetRepository.fromMap((map['targetRepository'] as Map).cast<String, dynamic>())).input(),
      version: (map['version'] as String).input(),
      workingDirectory: map['workingDirectory'] == null ? null : (map['workingDirectory'] as String).input(),
    );
  }
}

