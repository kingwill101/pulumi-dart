import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_recipe_block_device_mapping/image_recipe_block_device_mapping.dart';
import '../image_recipe_component/image_recipe_component.dart';
import '../image_recipe_systems_manager_agent/image_recipe_systems_manager_agent.dart';
import 'image_recipe_args.dart';

/// Manages an Image Builder Image Recipe.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder image recipe.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.ImageRecipe` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/imageRecipe:ImageRecipe example arn:aws:imagebuilder:us-east-1:123456789012:image-recipe/example/1.0.0
/// ```
class ImageRecipe extends pulumi.CustomResource {
  /// Tags that are applied to the AMI that Image Builder creates during the Build phase prior to image distribution. Maximum of 50 tags.
  late final pulumi.Output<Map<String, String>?> amiTags;

  /// Amazon Resource Name (ARN) of the image recipe.
  late final pulumi.Output<String> arn;

  /// Configuration block(s) with block device mappings for the image recipe. Detailed below.
  late final pulumi.Output<List<ImageRecipeBlockDeviceMapping>?>
      blockDeviceMappings;

  /// Ordered configuration block(s) with components for the image recipe. Detailed below.
  late final pulumi.Output<List<ImageRecipeComponent>> components;

  /// Date the image recipe was created.
  late final pulumi.Output<String> dateCreated;

  /// Description of the image recipe.
  late final pulumi.Output<String?> description;

  /// Name of the image recipe.
  late final pulumi.Output<String> name;

  /// Owner of the image recipe.
  late final pulumi.Output<String> owner;

  /// The image recipe uses this image as a base from which to build your customized image. The value can be the base image ARN, an AMI ID, or an SSM Parameter referencing the AMI. For an SSM Parameter, enter the prefix `ssm:`, followed by the parameter name or ARN.
  late final pulumi.Output<String> parentImage;

  /// Platform of the image recipe.
  late final pulumi.Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for the Systems Manager Agent installed by default by Image Builder. Detailed below.
  late final pulumi.Output<ImageRecipeSystemsManagerAgent> systemsManagerAgent;

  /// Key-value map of resource tags for the image recipe. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Base64 encoded user data. Use this to provide commands or a command script to run when you launch your build instance.
  late final pulumi.Output<String> userDataBase64;

  /// The semantic version of the image recipe, which specifies the version in the following format, with numeric values in each position to indicate a specific version: major.minor.patch. For example: 1.0.0.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> version;

  /// The working directory to be used during build and test workflows.
  late final pulumi.Output<String?> workingDirectory;

  ImageRecipe(
    String name, {
    ImageRecipeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imageRecipe:ImageRecipe',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.amiTags = registerOutput<Map<String, String>?>('amiTags');
    this.arn = registerOutput<String>('arn');
    this.blockDeviceMappings =
        registerOutput<List<ImageRecipeBlockDeviceMapping>?>(
            'blockDeviceMappings');
    this.components = registerOutput<List<ImageRecipeComponent>>('components');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.owner = registerOutput<String>('owner');
    this.parentImage = registerOutput<String>('parentImage');
    this.platform = registerOutput<String>('platform');
    this.region = registerOutput<String>('region');
    this.systemsManagerAgent =
        registerOutput<ImageRecipeSystemsManagerAgent>('systemsManagerAgent');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.userDataBase64 = registerOutput<String>('userDataBase64');
    this.version = registerOutput<String>('version');
    this.workingDirectory = registerOutput<String?>('workingDirectory');
  }
}
