import 'package:pulumi/pulumi.dart';
import '../image_pipeline_image_scanning_configuration/image_pipeline_image_scanning_configuration.dart';
import '../image_pipeline_image_tests_configuration/image_pipeline_image_tests_configuration.dart';
import '../image_pipeline_logging_configuration/image_pipeline_logging_configuration.dart';
import '../image_pipeline_schedule/image_pipeline_schedule.dart';
import '../image_pipeline_workflow/image_pipeline_workflow.dart';
import 'image_pipeline_args.dart';

/// Manages an Image Builder Image Pipeline.
///
/// > **NOTE:** Starting with version `5.74.0`, lifecycle meta-argument `replace_triggered_by` must be used in order to prevent a dependency error on destroy.
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Image Builder image pipeline.
///
///
/// Using `pulumi import`, import `aws.imagebuilder.ImagePipeline` resources using the Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:imagebuilder/imagePipeline:ImagePipeline example arn:aws:imagebuilder:us-east-1:123456789012:image-pipeline/example
/// ```
class ImagePipeline extends CustomResource {
  /// Amazon Resource Name (ARN) of the image pipeline.
  late final Output<String> arn;

  /// Amazon Resource Name (ARN) of the container recipe.
  late final Output<String?> containerRecipeArn;

  /// Date the image pipeline was created.
  late final Output<String> dateCreated;

  /// Date the image pipeline was last run.
  late final Output<String> dateLastRun;

  /// Date the image pipeline will run next.
  late final Output<String> dateNextRun;

  /// Date the image pipeline was updated.
  late final Output<String> dateUpdated;

  /// Description of the image pipeline.
  late final Output<String?> description;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  late final Output<String?> distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to `true`.
  late final Output<bool?> enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  late final Output<String?> executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  late final Output<String?> imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  late final Output<ImagePipelineImageScanningConfiguration>
      imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  late final Output<ImagePipelineImageTestsConfiguration>
      imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  late final Output<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  late final Output<ImagePipelineLoggingConfiguration?> loggingConfiguration;

  /// Name of the image pipeline.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Platform of the image pipeline.
  late final Output<String> platform;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Configuration block with schedule settings. Detailed below.
  late final Output<ImagePipelineSchedule?> schedule;

  /// Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  late final Output<String?> status;

  /// Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Configuration block with the workflow configuration. Detailed below.
  late final Output<List<ImagePipelineWorkflow>> workflows;

  ImagePipeline(
    String name, {
    ImagePipelineArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imagePipeline:ImagePipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    this.dateCreated = registerOutput<String>('dateCreated');
    this.dateLastRun = registerOutput<String>('dateLastRun');
    this.dateNextRun = registerOutput<String>('dateNextRun');
    this.dateUpdated = registerOutput<String>('dateUpdated');
    this.description = registerOutput<String?>('description');
    this.distributionConfigurationArn =
        registerOutput<String?>('distributionConfigurationArn');
    this.enhancedImageMetadataEnabled =
        registerOutput<bool?>('enhancedImageMetadataEnabled');
    this.executionRole = registerOutput<String?>('executionRole');
    this.imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    this.imageScanningConfiguration =
        registerOutput<ImagePipelineImageScanningConfiguration>(
            'imageScanningConfiguration');
    this.imageTestsConfiguration =
        registerOutput<ImagePipelineImageTestsConfiguration>(
            'imageTestsConfiguration');
    this.infrastructureConfigurationArn =
        registerOutput<String>('infrastructureConfigurationArn');
    this.loggingConfiguration =
        registerOutput<ImagePipelineLoggingConfiguration?>(
            'loggingConfiguration');
    this.name = registerOutput<String>('name');
    this.platform = registerOutput<String>('platform');
    this.region = registerOutput<String>('region');
    this.schedule = registerOutput<ImagePipelineSchedule?>('schedule');
    this.status = registerOutput<String?>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.workflows = registerOutput<List<ImagePipelineWorkflow>>('workflows');
  }
}
