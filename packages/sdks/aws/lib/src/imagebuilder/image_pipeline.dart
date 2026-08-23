import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_args.dart';
import 'image_pipeline_image_scanning_configuration.dart';
import 'image_pipeline_image_tests_configuration.dart';
import 'image_pipeline_logging_configuration.dart';
import 'image_pipeline_schedule.dart';
import 'image_pipeline_state.dart';

/// Manages an Image Builder Image Pipeline.
///
/// &gt; **NOTE:** Starting with version `5.74.0`, lifecycle meta-argument `replaceTriggeredBy` must be used in order to prevent a dependency error on destroy.
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
class ImagePipeline extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the image pipeline.
  late final pulumi.Output<String> arn;
  /// Amazon Resource Name (ARN) of the container recipe.
  late final pulumi.Output<String?> containerRecipeArn;
  /// Date the image pipeline was created.
  late final pulumi.Output<String> dateCreated;
  /// Date the image pipeline was last run.
  late final pulumi.Output<String> dateLastRun;
  /// Date the image pipeline will run next.
  late final pulumi.Output<String> dateNextRun;
  /// Date the image pipeline was updated.
  late final pulumi.Output<String> dateUpdated;
  /// Description of the image pipeline.
  late final pulumi.Output<String?> description;
  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  late final pulumi.Output<String?> distributionConfigurationArn;
  /// Whether additional information about the image being created is collected. Defaults to `true`.
  late final pulumi.Output<bool?> enhancedImageMetadataEnabled;
  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  late final pulumi.Output<String?> executionRole;
  /// Amazon Resource Name (ARN) of the image recipe.
  late final pulumi.Output<String?> imageRecipeArn;
  /// Configuration block with image scanning configuration. Detailed below.
  late final pulumi.Output<ImagePipelineImageScanningConfiguration> imageScanningConfiguration;
  /// Configuration block with image tests configuration. Detailed below.
  late final pulumi.Output<ImagePipelineImageTestsConfiguration> imageTestsConfiguration;
  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  late final pulumi.Output<String> infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  late final pulumi.Output<ImagePipelineLoggingConfiguration?> loggingConfiguration;
  /// Name of the image pipeline.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Platform of the image pipeline.
  late final pulumi.Output<String> platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Configuration block with schedule settings. Detailed below.
  late final pulumi.Output<ImagePipelineSchedule?> schedule;
  /// Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  late final pulumi.Output<String?> status;
  /// Key-value map of resource tags for the image pipeline. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block with the workflow configuration. Detailed below.
  late final pulumi.Output<List<Map<String, dynamic>>> workflows;

  /// Creates a new [ImagePipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImagePipeline]. {@macro pulumi_imagebuilder_image_pipeline_image_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImagePipeline(
    String name, {
    ImagePipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imagePipeline:ImagePipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    dateCreated = registerOutput<String>('dateCreated');
    dateLastRun = registerOutput<String>('dateLastRun');
    dateNextRun = registerOutput<String>('dateNextRun');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    distributionConfigurationArn = registerOutput<String?>('distributionConfigurationArn');
    enhancedImageMetadataEnabled = registerOutput<bool?>('enhancedImageMetadataEnabled');
    executionRole = registerOutput<String?>('executionRole');
    imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    imageScanningConfiguration = registerOutput<ImagePipelineImageScanningConfiguration>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTestsConfiguration = registerOutput<ImagePipelineImageTestsConfiguration>('imageTestsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfigurationArn = registerOutput<String>('infrastructureConfigurationArn');
    loggingConfiguration = registerOutput<ImagePipelineLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    schedule = registerOutput<ImagePipelineSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    workflows = registerOutput<List<Map<String, dynamic>>>('workflows');
  }

  /// Gets an existing [ImagePipeline] resource's state with the given [name] and [id].
  static ImagePipeline get(
    String name,
    pulumi.Input<String> id, {
    ImagePipelineState? state,
  }) {
    return ImagePipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImagePipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:imagebuilder/imagePipeline:ImagePipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    containerRecipeArn = registerOutput<String?>('containerRecipeArn');
    dateCreated = registerOutput<String>('dateCreated');
    dateLastRun = registerOutput<String>('dateLastRun');
    dateNextRun = registerOutput<String>('dateNextRun');
    dateUpdated = registerOutput<String>('dateUpdated');
    description = registerOutput<String?>('description');
    distributionConfigurationArn = registerOutput<String?>('distributionConfigurationArn');
    enhancedImageMetadataEnabled = registerOutput<bool?>('enhancedImageMetadataEnabled');
    executionRole = registerOutput<String?>('executionRole');
    imageRecipeArn = registerOutput<String?>('imageRecipeArn');
    imageScanningConfiguration = registerOutput<ImagePipelineImageScanningConfiguration>('imageScanningConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    imageTestsConfiguration = registerOutput<ImagePipelineImageTestsConfiguration>('imageTestsConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    infrastructureConfigurationArn = registerOutput<String>('infrastructureConfigurationArn');
    loggingConfiguration = registerOutput<ImagePipelineLoggingConfiguration?>('loggingConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    platform = registerOutput<String>('platform');
    region = registerOutput<String>('region');
    schedule = registerOutput<ImagePipelineSchedule?>('schedule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImagePipelineSchedule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String?>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    workflows = registerOutput<List<Map<String, dynamic>>>('workflows');
  }
}
