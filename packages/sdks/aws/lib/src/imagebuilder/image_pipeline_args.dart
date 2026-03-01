// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_image_scanning_configuration.dart';
import 'image_pipeline_image_tests_configuration.dart';
import 'image_pipeline_logging_configuration.dart';
import 'image_pipeline_schedule.dart';
import 'image_pipeline_workflow.dart';

/// {@template pulumi_imagebuilder_image_pipeline_image_pipeline_args_doc}
/// The set of arguments for ImagePipeline.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_image_pipeline_image_pipeline_args_doc}
class ImagePipelineArgs {
  /// Amazon Resource Name (ARN) of the container recipe.
  final pulumi.Input<String>? containerRecipeArn;
  /// Description of the image pipeline.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  final pulumi.Input<String>? distributionConfigurationArn;
  /// Whether additional information about the image being created is collected. Defaults to `true`.
  final pulumi.Input<bool>? enhancedImageMetadataEnabled;
  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final pulumi.Input<String>? executionRole;
  /// Amazon Resource Name (ARN) of the image recipe.
  final pulumi.Input<String>? imageRecipeArn;
  /// Configuration block with image scanning configuration. Detailed below.
  final pulumi.Input<ImagePipelineImageScanningConfiguration>? imageScanningConfiguration;
  /// Configuration block with image tests configuration. Detailed below.
  final pulumi.Input<ImagePipelineImageTestsConfiguration>? imageTestsConfiguration;
  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  final pulumi.Input<String> infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  final pulumi.Input<ImagePipelineLoggingConfiguration>? loggingConfiguration;
  /// Name of the image pipeline.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block with schedule settings. Detailed below.
  final pulumi.Input<ImagePipelineSchedule>? schedule;
  /// Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Configuration block with the workflow configuration. Detailed below.
  final pulumi.Input<List<ImagePipelineWorkflow>>? workflows;

  /// Creates a new [ImagePipelineArgs].
  /// [containerRecipeArn] Amazon Resource Name (ARN) of the container recipe.
  /// [description] Description of the image pipeline.
  /// [distributionConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected. Defaults to `true`.
  /// [executionRole] Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  /// [imageRecipeArn] Amazon Resource Name (ARN) of the image recipe.
  /// [imageScanningConfiguration] Configuration block with image scanning configuration. Detailed below.
  /// [imageTestsConfiguration] Configuration block with image tests configuration. Detailed below.
  /// [infrastructureConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  /// [loggingConfiguration] Configuration block with logging configuration. Detailed below.
  /// [name] Name of the image pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] Configuration block with schedule settings. Detailed below.
  /// [status] Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workflows] Configuration block with the workflow configuration. Detailed below.
  ImagePipelineArgs({
    pulumi.Output<String>? containerRecipeArn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? distributionConfigurationArn,
    pulumi.Output<bool>? enhancedImageMetadataEnabled,
    pulumi.Output<String>? executionRole,
    pulumi.Output<String>? imageRecipeArn,
    pulumi.Output<ImagePipelineImageScanningConfiguration>? imageScanningConfiguration,
    pulumi.Output<ImagePipelineImageTestsConfiguration>? imageTestsConfiguration,
    required pulumi.Output<String> infrastructureConfigurationArn,
    pulumi.Output<ImagePipelineLoggingConfiguration>? loggingConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<ImagePipelineSchedule>? schedule,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ImagePipelineWorkflow>>? workflows,
  }) :
      containerRecipeArn = pulumi.Input.asOptionalInput<String>(containerRecipeArn),
      description = pulumi.Input.asOptionalInput<String>(description),
      distributionConfigurationArn = pulumi.Input.asOptionalInput<String>(distributionConfigurationArn),
      enhancedImageMetadataEnabled = pulumi.Input.asOptionalInput<bool>(enhancedImageMetadataEnabled),
      executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
      imageRecipeArn = pulumi.Input.asOptionalInput<String>(imageRecipeArn),
      imageScanningConfiguration = pulumi.Input.asOptionalInput<ImagePipelineImageScanningConfiguration>(imageScanningConfiguration),
      imageTestsConfiguration = pulumi.Input.asOptionalInput<ImagePipelineImageTestsConfiguration>(imageTestsConfiguration),
      infrastructureConfigurationArn = pulumi.Input.asInput<String>(infrastructureConfigurationArn),
      loggingConfiguration = pulumi.Input.asOptionalInput<ImagePipelineLoggingConfiguration>(loggingConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      schedule = pulumi.Input.asOptionalInput<ImagePipelineSchedule>(schedule),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflows = pulumi.Input.asOptionalInput<List<ImagePipelineWorkflow>>(workflows);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRecipeArn': ?containerRecipeArn,
      'description': ?description,
      'distributionConfigurationArn': ?distributionConfigurationArn,
      'enhancedImageMetadataEnabled': ?enhancedImageMetadataEnabled,
      'executionRole': ?executionRole,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTestsConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfiguration, (value) => value.toMap()),
      'infrastructureConfigurationArn': infrastructureConfigurationArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ImagePipelineSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<ImagePipelineWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<ImagePipelineWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImagePipelineArgs.fromMap(Map<String, dynamic> map) {
    return ImagePipelineArgs(
      containerRecipeArn: map['containerRecipeArn'] == null ? null : pulumi.Output.create<String>(map['containerRecipeArn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      distributionConfigurationArn: map['distributionConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['distributionConfigurationArn'] as String),
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null ? null : pulumi.Output.create<bool>(map['enhancedImageMetadataEnabled'] as bool),
      executionRole: map['executionRole'] == null ? null : pulumi.Output.create<String>(map['executionRole'] as String),
      imageRecipeArn: map['imageRecipeArn'] == null ? null : pulumi.Output.create<String>(map['imageRecipeArn'] as String),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : pulumi.Output.create<ImagePipelineImageScanningConfiguration>(ImagePipelineImageScanningConfiguration.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>())),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null ? null : pulumi.Output.create<ImagePipelineImageTestsConfiguration>(ImagePipelineImageTestsConfiguration.fromMap((map['imageTestsConfiguration'] as Map).cast<String, dynamic>())),
      infrastructureConfigurationArn: pulumi.Output.create<String>(map['infrastructureConfigurationArn'] as String),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : pulumi.Output.create<ImagePipelineLoggingConfiguration>(ImagePipelineLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<ImagePipelineSchedule>(ImagePipelineSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workflows: map['workflows'] == null ? null : pulumi.Output.create<List<ImagePipelineWorkflow>>(pulumi.Input.decodeList<ImagePipelineWorkflow>(map['workflows'], (value) => ImagePipelineWorkflow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

