// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_component.dart';
import 'container_recipe_instance_configuration.dart';
import 'container_recipe_target_repository.dart';

/// Input properties used for looking up and filtering ContainerRecipe resources.
class ContainerRecipeState {
  /// (Required) Amazon Resource Name (ARN) of the container recipe.
  final pulumi.Input<String>? arn;
  /// Ordered configuration block(s) with components for the container recipe. Detailed below.
  final pulumi.Input<List<ContainerRecipeComponent>>? components;
  /// The type of the container to create. Valid values: `DOCKER`.
  final pulumi.Input<String>? containerType;
  /// Date the container recipe was created.
  final pulumi.Input<String>? dateCreated;
  /// The description of the container recipe.
  final pulumi.Input<String>? description;
  /// The Dockerfile template used to build the image as an inline data blob.
  final pulumi.Input<String>? dockerfileTemplateData;
  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  final pulumi.Input<String>? dockerfileTemplateUri;
  /// A flag that indicates if the target container is encrypted.
  final pulumi.Input<bool>? encrypted;
  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  final pulumi.Input<ContainerRecipeInstanceConfiguration>? instanceConfiguration;
  /// The KMS key used to encrypt the container image.
  final pulumi.Input<String>? kmsKeyId;
  /// The name of the container recipe.
  final pulumi.Input<String>? name;
  /// Owner of the container recipe.
  final pulumi.Input<String>? owner;
  /// The base image for the container recipe.
  final pulumi.Input<String>? parentImage;
  /// Platform of the container recipe.
  final pulumi.Input<String>? platform;
  /// Specifies the operating system platform when you use a custom base image.
  final pulumi.Input<String>? platformOverride;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The destination repository for the container image. Detailed below.
  final pulumi.Input<ContainerRecipeTargetRepository>? targetRepository;
  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? version;
  /// The working directory to be used during build and test workflows.
  final pulumi.Input<String>? workingDirectory;

  /// Creates a new [ContainerRecipeState].
  /// [arn] (Required) Amazon Resource Name (ARN) of the container recipe.
  /// [components] Ordered configuration block(s) with components for the container recipe. Detailed below.
  /// [containerType] The type of the container to create. Valid values: `DOCKER`.
  /// [dateCreated] Date the container recipe was created.
  /// [description] The description of the container recipe.
  /// [dockerfileTemplateData] The Dockerfile template used to build the image as an inline data blob.
  /// [dockerfileTemplateUri] The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  /// [encrypted] A flag that indicates if the target container is encrypted.
  /// [instanceConfiguration] Configuration block used to configure an instance for building and testing container images. Detailed below.
  /// [kmsKeyId] The KMS key used to encrypt the container image.
  /// [name] The name of the container recipe.
  /// [owner] Owner of the container recipe.
  /// [parentImage] The base image for the container recipe.
  /// [platform] Platform of the container recipe.
  /// [platformOverride] Specifies the operating system platform when you use a custom base image.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetRepository] The destination repository for the container image. Detailed below.
  /// [version] Version of the container recipe.
  /// [workingDirectory] The working directory to be used during build and test workflows.
  ContainerRecipeState({
    this.arn,
    this.components,
    this.containerType,
    this.dateCreated,
    this.description,
    this.dockerfileTemplateData,
    this.dockerfileTemplateUri,
    this.encrypted,
    this.instanceConfiguration,
    this.kmsKeyId,
    this.name,
    this.owner,
    this.parentImage,
    this.platform,
    this.platformOverride,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetRepository,
    this.version,
    this.workingDirectory,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'components': ?pulumi.Input.mapOptionalInputValue<List<ContainerRecipeComponent>, List<Map<String, dynamic>>>(components, (value) => pulumi.Input.encodeList<ContainerRecipeComponent, Map<String, dynamic>>(value, (value) => value.toMap())),
      'containerType': ?containerType,
      'dateCreated': ?dateCreated,
      'description': ?description,
      'dockerfileTemplateData': ?dockerfileTemplateData,
      'dockerfileTemplateUri': ?dockerfileTemplateUri,
      'encrypted': ?encrypted,
      'instanceConfiguration': ?pulumi.Input.mapOptionalInputValue<ContainerRecipeInstanceConfiguration, Map<String, dynamic>>(instanceConfiguration, (value) => value.toMap()),
      'kmsKeyId': ?kmsKeyId,
      'name': ?name,
      'owner': ?owner,
      'parentImage': ?parentImage,
      'platform': ?platform,
      'platformOverride': ?platformOverride,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetRepository': ?pulumi.Input.mapOptionalInputValue<ContainerRecipeTargetRepository, Map<String, dynamic>>(targetRepository, (value) => value.toMap()),
      'version': ?version,
      'workingDirectory': ?workingDirectory,
    };
  }

  factory ContainerRecipeState.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      components: map['components'] == null ? null : (pulumi.Input.decodeList<ContainerRecipeComponent>(map['components'], (value) => ContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))).input(),
      containerType: map['containerType'] == null ? null : (map['containerType'] as String).input(),
      dateCreated: map['dateCreated'] == null ? null : (map['dateCreated'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      dockerfileTemplateData: map['dockerfileTemplateData'] == null ? null : (map['dockerfileTemplateData'] as String).input(),
      dockerfileTemplateUri: map['dockerfileTemplateUri'] == null ? null : (map['dockerfileTemplateUri'] as String).input(),
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as bool).input(),
      instanceConfiguration: map['instanceConfiguration'] == null ? null : (ContainerRecipeInstanceConfiguration.fromMap((map['instanceConfiguration'] as Map).cast<String, dynamic>())).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : (map['kmsKeyId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      parentImage: map['parentImage'] == null ? null : (map['parentImage'] as String).input(),
      platform: map['platform'] == null ? null : (map['platform'] as String).input(),
      platformOverride: map['platformOverride'] == null ? null : (map['platformOverride'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetRepository: map['targetRepository'] == null ? null : (ContainerRecipeTargetRepository.fromMap((map['targetRepository'] as Map).cast<String, dynamic>())).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      workingDirectory: map['workingDirectory'] == null ? null : (map['workingDirectory'] as String).input(),
    );
  }
}

