import 'package:pulumi/pulumi.dart' as pulumi;
import '../image_image_scanning_configuration/image_image_scanning_configuration.dart';
import '../image_image_tests_configuration/image_image_tests_configuration.dart';
import '../image_logging_configuration/image_logging_configuration.dart';
import '../image_output_resource/image_output_resource.dart';
import '../image_workflow/image_workflow.dart';
import 'image_args.dart';

/// Manages an Image Builder Image.
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
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder image.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.Image` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/image:Image example arn:aws:imagebuilder:us-east-1:123456789012:image/example/1.0.0/1
/// ```
class Image extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the image.
  late final pulumi.Output<String> arn;

  /// Amazon Resource Name (ARN) of the container recipe.
  late final pulumi.Output<String?> containerRecipeArn;

  /// Date the image was created.
  late final pulumi.Output<String> dateCreated;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  late final pulumi.Output<String?> distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to `true`.
  late final pulumi.Output<bool?> enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  late final pulumi.Output<String> executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  late final pulumi.Output<String?> imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  late final pulumi.Output<ImageImageScanningConfiguration>
      imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  late final pulumi.Output<ImageImageTestsConfiguration>
      imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  late final pulumi.Output<ImageLoggingConfiguration?> loggingConfiguration;

  /// Name of the AMI.
  late final pulumi.Output<String> name;

  /// Operating System version of the image.
  late final pulumi.Output<String> osVersion;

  /// List of objects with resources created by the image.
  late final pulumi.Output<List<ImageOutputResource>> outputResources;

  /// Platform of the image.
  late final pulumi.Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Version of the image.
  late final pulumi.Output<String> version;

  /// Configuration block with the workflow configuration. Detailed below.
  late final pulumi.Output<List<ImageWorkflow>> workflows;

  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.distributionConfigurationArn =
        registerOutput<String?>('distributionConfigurationArn');
    this.enhancedImageMetadataEnabled =
        registerOutput<bool?>('enhancedImageMetadataEnabled');
    this.executionRole = registerOutput<String>('executionRole');
    this.imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    this.imageScanningConfiguration =
        registerOutput<ImageImageScanningConfiguration>(
            'imageScanningConfiguration');
    this.imageTestsConfiguration =
        registerOutput<ImageImageTestsConfiguration>('imageTestsConfiguration');
    this.infrastructureConfigurationArn =
        registerOutput<String>('infrastructureConfigurationArn');
    this.loggingConfiguration =
        registerOutput<ImageLoggingConfiguration?>('loggingConfiguration');
    this.name = registerOutput<String>('name');
    this.osVersion = registerOutput<String>('osVersion');
    this.outputResources =
        registerOutput<List<ImageOutputResource>>('outputResources');
    this.platform = registerOutput<String>('platform');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<String>('version');
    this.workflows = registerOutput<List<ImageWorkflow>>('workflows');
  }
}
