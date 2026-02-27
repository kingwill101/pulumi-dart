import 'package:pulumi/pulumi.dart' as pulumi;
import '../container_recipe_component/container_recipe_component.dart';
import '../container_recipe_instance_configuration/container_recipe_instance_configuration.dart';
import '../container_recipe_target_repository/container_recipe_target_repository.dart';
import 'container_recipe_args.dart';

/// Manages an Image Builder Container Recipe.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder container recipe.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.ContainerRecipe` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/containerRecipe:ContainerRecipe example arn:aws:imagebuilder:us-east-1:123456789012:container-recipe/example/1.0.0
/// ```
class ContainerRecipe extends pulumi.CustomResource {
  /// (Required) Amazon Resource Name (ARN) of the container recipe.
  late final pulumi.Output<String> arn;

  /// Ordered configuration block(s) with components for the container recipe. Detailed below.
  late final pulumi.Output<List<ContainerRecipeComponent>> components;

  /// The type of the container to create. Valid values: `DOCKER`.
  late final pulumi.Output<String> containerType;

  /// Date the container recipe was created.
  late final pulumi.Output<String> dateCreated;

  /// The description of the container recipe.
  late final pulumi.Output<String?> description;

  /// The Dockerfile template used to build the image as an inline data blob.
  late final pulumi.Output<String> dockerfileTemplateData;

  /// The Amazon S3 URI for the Dockerfile that will be used to build the container image.
  late final pulumi.Output<String?> dockerfileTemplateUri;

  /// A flag that indicates if the target container is encrypted.
  late final pulumi.Output<bool> encrypted;

  /// Configuration block used to configure an instance for building and testing container images. Detailed below.
  late final pulumi.Output<ContainerRecipeInstanceConfiguration?>
      instanceConfiguration;

  /// The KMS key used to encrypt the container image.
  late final pulumi.Output<String?> kmsKeyId;

  /// The name of the container recipe.
  late final pulumi.Output<String> name;

  /// Owner of the container recipe.
  late final pulumi.Output<String> owner;

  /// The base image for the container recipe.
  late final pulumi.Output<String> parentImage;

  /// Platform of the container recipe.
  late final pulumi.Output<String> platform;

  /// Specifies the operating system platform when you use a custom base image.
  late final pulumi.Output<String?> platformOverride;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags for the container recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The destination repository for the container image. Detailed below.
  late final pulumi.Output<ContainerRecipeTargetRepository> targetRepository;

  /// Version of the container recipe.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> version;

  /// The working directory to be used during build and test workflows.
  late final pulumi.Output<String?> workingDirectory;

  ContainerRecipe(
    String name, {
    ContainerRecipeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/containerRecipe:ContainerRecipe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.components =
        registerOutput<List<ContainerRecipeComponent>>('components');
    this.containerType = registerOutput<String>('containerType');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.dockerfileTemplateData =
        registerOutput<String>('dockerfileTemplateData');
    this.dockerfileTemplateUri =
        registerOutput<String?>('dockerfileTemplateUri');
    this.encrypted = registerOutput<bool>('encrypted');
    this.instanceConfiguration =
        registerOutput<ContainerRecipeInstanceConfiguration?>(
            'instanceConfiguration');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.parentImage = registerOutput<String>('parentImage');
    this.platform = registerOutput<String>('platform');
    this.platformOverride = registerOutput<String?>('platformOverride');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.targetRepository =
        registerOutput<ContainerRecipeTargetRepository>('targetRepository');
    this.version = registerOutput<String>('version');
    this.workingDirectory = registerOutput<String?>('workingDirectory');
  }
}
