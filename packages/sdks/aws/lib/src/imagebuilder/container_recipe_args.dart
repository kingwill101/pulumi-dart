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
  final pulumi.Input<String?>? description;
  /// The Dockerfile template used to build the image as an inline data blob.
  final pulumi.Input<String?>? dockerfileTemplateData;
  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  final pulumi.Input<String?>? dockerfileTemplateUri;
  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  final pulumi.Input<ContainerRecipeInstanceConfiguration?>? instanceConfiguration;
  /// The KMS key used to encrypt the container image.
  final pulumi.Input<String?>? kmsKeyId;
  /// The name of the container recipe.
  final pulumi.Input<String?>? name;
  /// The base image for the container recipe.
  final pulumi.Input<String> parentImage;
  /// Specifies the operating system platform when you use a custom base image.
  final pulumi.Input<String?>? platformOverride;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags for the container recipe. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// The destination repository for the container image. Detailed below.
  final pulumi.Input<ContainerRecipeTargetRepository> targetRepository;
  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> version;
  /// The working directory to be used during build and test workflows.
  final pulumi.Input<String?>? workingDirectory;

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
  /// [tags] Key-value map of resource tags for the container recipe. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetRepository] The destination repository for the container image. Detailed below.
  /// [version] Version of the container recipe.
  /// [workingDirectory] The working directory to be used during build and test workflows.
  const ContainerRecipeArgs({
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
      components: pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerRecipeComponent>(map['components']!, (value) => ContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))),
      containerType: pulumi.Input.fromValue(map['containerType'] as String),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfileTemplateData: (() { final guardedValue = map['dockerfileTemplateData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dockerfileTemplateUri: (() { final guardedValue = map['dockerfileTemplateUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceConfiguration: (() { final guardedValue = map['instanceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ContainerRecipeInstanceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentImage: pulumi.Input.fromValue(map['parentImage'] as String),
      platformOverride: (() { final guardedValue = map['platformOverride']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetRepository: pulumi.Input.fromValue(ContainerRecipeTargetRepository.fromMap((map['targetRepository']! as Map).cast<String, dynamic>())),
      version: pulumi.Input.fromValue(map['version'] as String),
      workingDirectory: (() { final guardedValue = map['workingDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
