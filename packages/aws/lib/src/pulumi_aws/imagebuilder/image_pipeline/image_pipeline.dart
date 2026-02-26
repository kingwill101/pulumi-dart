import 'package:pulumi/pulumi.dart';
import '../image_pipeline_image_scanning_configuration/image_pipeline_image_scanning_configuration.dart';
import '../image_pipeline_image_tests_configuration/image_pipeline_image_tests_configuration.dart';
import '../image_pipeline_logging_configuration/image_pipeline_logging_configuration.dart';
import '../image_pipeline_schedule/image_pipeline_schedule.dart';
import '../image_pipeline_workflow/image_pipeline_workflow.dart';
import 'image_pipeline_args.dart';

/// Manages an Image Builder Image Pipeline.
///
/// > **NOTE:** Starting with version `5.74.0`, lifecycle meta-argument <span pulumi-lang-nodejs="`replaceTriggeredBy`" pulumi-lang-dotnet="`ReplaceTriggeredBy`" pulumi-lang-go="`replaceTriggeredBy`" pulumi-lang-python="`replace_triggered_by`" pulumi-lang-yaml="`replaceTriggeredBy`" pulumi-lang-java="`replaceTriggeredBy`">`replace_triggered_by`</span> must be used in order to prevent a dependency error on destroy.
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the Image Builder image pipeline.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.imagebuilder.ImagePipeline`" pulumi-lang-dotnet="`aws.imagebuilder.ImagePipeline`" pulumi-lang-go="`imagebuilder.ImagePipeline`" pulumi-lang-python="`imagebuilder.ImagePipeline`" pulumi-lang-yaml="`aws.imagebuilder.ImagePipeline`" pulumi-lang-java="`aws.imagebuilder.ImagePipeline`">`aws.imagebuilder.ImagePipeline`</span> resources using the Amazon Resource Name (ARN). For example:
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

  /// Whether additional information about the image being created is collected. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
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

  /// Key-value map of resource tags for the image pipeline. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
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
    this.arn = Output.createUnknown<String>();
    this.containerRecipeArn = Output.createUnknown<String?>();
    this.dateCreated = Output.createUnknown<String>();
    this.dateLastRun = Output.createUnknown<String>();
    this.dateNextRun = Output.createUnknown<String>();
    this.dateUpdated = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.distributionConfigurationArn = Output.createUnknown<String?>();
    this.enhancedImageMetadataEnabled = Output.createUnknown<bool?>();
    this.executionRole = Output.createUnknown<String?>();
    this.imageRecipeArn = Output.createUnknown<String?>();
    this.imageScanningConfiguration =
        Output.createUnknown<ImagePipelineImageScanningConfiguration>();
    this.imageTestsConfiguration =
        Output.createUnknown<ImagePipelineImageTestsConfiguration>();
    this.infrastructureConfigurationArn = Output.createUnknown<String>();
    this.loggingConfiguration =
        Output.createUnknown<ImagePipelineLoggingConfiguration?>();
    this.name = Output.createUnknown<String>();
    this.platform = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.schedule = Output.createUnknown<ImagePipelineSchedule?>();
    this.status = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.workflows = Output.createUnknown<List<ImagePipelineWorkflow>>();
  }
}
