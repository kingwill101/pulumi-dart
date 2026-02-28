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
  final pulumi.Input<ImagePipelineImageScanningConfiguration>?
      imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  final pulumi.Input<ImagePipelineImageTestsConfiguration>?
      imageTestsConfiguration;

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
    String? containerRecipeArn,
    String? description,
    String? distributionConfigurationArn,
    bool? enhancedImageMetadataEnabled,
    String? executionRole,
    String? imageRecipeArn,
    ImagePipelineImageScanningConfiguration? imageScanningConfiguration,
    ImagePipelineImageTestsConfiguration? imageTestsConfiguration,
    required String infrastructureConfigurationArn,
    ImagePipelineLoggingConfiguration? loggingConfiguration,
    String? name,
    String? region,
    ImagePipelineSchedule? schedule,
    String? status,
    Map<String, String>? tags,
    List<ImagePipelineWorkflow>? workflows,
  })  : containerRecipeArn =
            pulumi.Input.asOptionalInput<String>(containerRecipeArn),
        description = pulumi.Input.asOptionalInput<String>(description),
        distributionConfigurationArn =
            pulumi.Input.asOptionalInput<String>(distributionConfigurationArn),
        enhancedImageMetadataEnabled =
            pulumi.Input.asOptionalInput<bool>(enhancedImageMetadataEnabled),
        executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
        imageRecipeArn = pulumi.Input.asOptionalInput<String>(imageRecipeArn),
        imageScanningConfiguration = pulumi.Input.asOptionalInput<
                ImagePipelineImageScanningConfiguration>(
            imageScanningConfiguration),
        imageTestsConfiguration =
            pulumi.Input.asOptionalInput<ImagePipelineImageTestsConfiguration>(
                imageTestsConfiguration),
        infrastructureConfigurationArn =
            pulumi.Input.asInput<String>(infrastructureConfigurationArn),
        loggingConfiguration =
            pulumi.Input.asOptionalInput<ImagePipelineLoggingConfiguration>(
                loggingConfiguration),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        schedule =
            pulumi.Input.asOptionalInput<ImagePipelineSchedule>(schedule),
        status = pulumi.Input.asOptionalInput<String>(status),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        workflows = pulumi.Input.asOptionalInput<List<ImagePipelineWorkflow>>(
            workflows);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerRecipeArnValue = containerRecipeArn;
    if (containerRecipeArnValue != null) {
      map['containerRecipeArn'] = containerRecipeArnValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final distributionConfigurationArnValue = distributionConfigurationArn;
    if (distributionConfigurationArnValue != null) {
      map['distributionConfigurationArn'] = distributionConfigurationArnValue;
    }
    final enhancedImageMetadataEnabledValue = enhancedImageMetadataEnabled;
    if (enhancedImageMetadataEnabledValue != null) {
      map['enhancedImageMetadataEnabled'] = enhancedImageMetadataEnabledValue;
    }
    final executionRoleValue = executionRole;
    if (executionRoleValue != null) {
      map['executionRole'] = executionRoleValue;
    }
    final imageRecipeArnValue = imageRecipeArn;
    if (imageRecipeArnValue != null) {
      map['imageRecipeArn'] = imageRecipeArnValue;
    }
    final imageScanningConfigurationValue = imageScanningConfiguration;
    if (imageScanningConfigurationValue != null) {
      map['imageScanningConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ImagePipelineImageScanningConfiguration, Map<String, dynamic>>(
          imageScanningConfigurationValue, (value) => value.toMap());
    }
    final imageTestsConfigurationValue = imageTestsConfiguration;
    if (imageTestsConfigurationValue != null) {
      map['imageTestsConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ImagePipelineImageTestsConfiguration, Map<String, dynamic>>(
          imageTestsConfigurationValue, (value) => value.toMap());
    }
    map['infrastructureConfigurationArn'] = infrastructureConfigurationArn;
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ImagePipelineLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final scheduleValue = schedule;
    if (scheduleValue != null) {
      map['schedule'] = pulumi.Input.mapOptionalInputValue<
          ImagePipelineSchedule,
          Map<String, dynamic>>(scheduleValue, (value) => value.toMap());
    }
    final statusValue = status;
    if (statusValue != null) {
      map['status'] = statusValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final workflowsValue = workflows;
    if (workflowsValue != null) {
      map['workflows'] = pulumi.Input.mapOptionalInputValue<
              List<ImagePipelineWorkflow>, List<Map<String, dynamic>>>(
          workflowsValue,
          (value) => pulumi.Input.encodeList<ImagePipelineWorkflow,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory ImagePipelineArgs.fromMap(Map<String, dynamic> map) {
    return ImagePipelineArgs(
      containerRecipeArn: map['containerRecipeArn'] == null
          ? null
          : map['containerRecipeArn'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      distributionConfigurationArn: map['distributionConfigurationArn'] == null
          ? null
          : map['distributionConfigurationArn'] as String,
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null
          ? null
          : map['enhancedImageMetadataEnabled'] as bool,
      executionRole:
          map['executionRole'] == null ? null : map['executionRole'] as String,
      imageRecipeArn: map['imageRecipeArn'] == null
          ? null
          : map['imageRecipeArn'] as String,
      imageScanningConfiguration: map['imageScanningConfiguration'] == null
          ? null
          : ImagePipelineImageScanningConfiguration.fromMap(
              (map['imageScanningConfiguration'] as Map)
                  .cast<String, dynamic>()),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null
          ? null
          : ImagePipelineImageTestsConfiguration.fromMap(
              (map['imageTestsConfiguration'] as Map).cast<String, dynamic>()),
      infrastructureConfigurationArn:
          map['infrastructureConfigurationArn'] as String,
      loggingConfiguration: map['loggingConfiguration'] == null
          ? null
          : ImagePipelineLoggingConfiguration.fromMap(
              (map['loggingConfiguration'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      schedule: map['schedule'] == null
          ? null
          : ImagePipelineSchedule.fromMap(
              (map['schedule'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      workflows: map['workflows'] == null
          ? null
          : pulumi.Input.decodeList<ImagePipelineWorkflow>(
              map['workflows'],
              (value) => ImagePipelineWorkflow.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
