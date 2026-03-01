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
    pulumi.Output<String>? arn,
    pulumi.Output<List<ContainerRecipeComponent>>? components,
    pulumi.Output<String>? containerType,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? description,
    pulumi.Output<String>? dockerfileTemplateData,
    pulumi.Output<String>? dockerfileTemplateUri,
    pulumi.Output<bool>? encrypted,
    pulumi.Output<ContainerRecipeInstanceConfiguration>? instanceConfiguration,
    pulumi.Output<String>? kmsKeyId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? owner,
    pulumi.Output<String>? parentImage,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? platformOverride,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<ContainerRecipeTargetRepository>? targetRepository,
    pulumi.Output<String>? version,
    pulumi.Output<String>? workingDirectory,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      components = pulumi.Input.asOptionalInput<List<ContainerRecipeComponent>>(components),
      containerType = pulumi.Input.asOptionalInput<String>(containerType),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      description = pulumi.Input.asOptionalInput<String>(description),
      dockerfileTemplateData = pulumi.Input.asOptionalInput<String>(dockerfileTemplateData),
      dockerfileTemplateUri = pulumi.Input.asOptionalInput<String>(dockerfileTemplateUri),
      encrypted = pulumi.Input.asOptionalInput<bool>(encrypted),
      instanceConfiguration = pulumi.Input.asOptionalInput<ContainerRecipeInstanceConfiguration>(instanceConfiguration),
      kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
      name = pulumi.Input.asOptionalInput<String>(name),
      owner = pulumi.Input.asOptionalInput<String>(owner),
      parentImage = pulumi.Input.asOptionalInput<String>(parentImage),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      platformOverride = pulumi.Input.asOptionalInput<String>(platformOverride),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetRepository = pulumi.Input.asOptionalInput<ContainerRecipeTargetRepository>(targetRepository),
      version = pulumi.Input.asOptionalInput<String>(version),
      workingDirectory = pulumi.Input.asOptionalInput<String>(workingDirectory);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      components: map['components'] == null ? null : pulumi.Output.create<List<ContainerRecipeComponent>>(pulumi.Input.decodeList<ContainerRecipeComponent>(map['components'], (value) => ContainerRecipeComponent.fromMap((value as Map).cast<String, dynamic>()))),
      containerType: map['containerType'] == null ? null : pulumi.Output.create<String>(map['containerType'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dockerfileTemplateData: map['dockerfileTemplateData'] == null ? null : pulumi.Output.create<String>(map['dockerfileTemplateData'] as String),
      dockerfileTemplateUri: map['dockerfileTemplateUri'] == null ? null : pulumi.Output.create<String>(map['dockerfileTemplateUri'] as String),
      encrypted: map['encrypted'] == null ? null : pulumi.Output.create<bool>(map['encrypted'] as bool),
      instanceConfiguration: map['instanceConfiguration'] == null ? null : pulumi.Output.create<ContainerRecipeInstanceConfiguration>(ContainerRecipeInstanceConfiguration.fromMap((map['instanceConfiguration'] as Map).cast<String, dynamic>())),
      kmsKeyId: map['kmsKeyId'] == null ? null : pulumi.Output.create<String>(map['kmsKeyId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      owner: map['owner'] == null ? null : pulumi.Output.create<String>(map['owner'] as String),
      parentImage: map['parentImage'] == null ? null : pulumi.Output.create<String>(map['parentImage'] as String),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      platformOverride: map['platformOverride'] == null ? null : pulumi.Output.create<String>(map['platformOverride'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetRepository: map['targetRepository'] == null ? null : pulumi.Output.create<ContainerRecipeTargetRepository>(ContainerRecipeTargetRepository.fromMap((map['targetRepository'] as Map).cast<String, dynamic>())),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      workingDirectory: map['workingDirectory'] == null ? null : pulumi.Output.create<String>(map['workingDirectory'] as String),
    );
  }
}

