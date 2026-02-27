// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../image_pipeline_image_scanning_configuration/image_pipeline_image_scanning_configuration.dart';
import '../image_pipeline_image_tests_configuration/image_pipeline_image_tests_configuration.dart';
import '../image_pipeline_logging_configuration/image_pipeline_logging_configuration.dart';
import '../image_pipeline_schedule/image_pipeline_schedule.dart';
import '../image_pipeline_workflow/image_pipeline_workflow.dart';

/// The set of arguments for ImagePipeline.
class ImagePipelineArgs {
  /// Amazon Resource Name (ARN) of the container recipe.
  final Input<String>? containerRecipeArn;

  /// Description of the image pipeline.
  final Input<String>? description;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  final Input<String>? distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to `true`.
  final Input<bool>? enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final Input<String>? executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  final Input<String>? imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  final Input<ImagePipelineImageScanningConfiguration>?
      imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  final Input<ImagePipelineImageTestsConfiguration>? imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  final Input<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  final Input<ImagePipelineLoggingConfiguration>? loggingConfiguration;

  /// Name of the image pipeline.
  ///
  /// The following arguments are optional:
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block with schedule settings. Detailed below.
  final Input<ImagePipelineSchedule>? schedule;

  /// Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  final Input<String>? status;

  /// Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block with the workflow configuration. Detailed below.
  final Input<List<ImagePipelineWorkflow>>? workflows;

  ImagePipelineArgs({
    this.containerRecipeArn,
    this.description,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.executionRole,
    this.imageRecipeArn,
    this.imageScanningConfiguration,
    this.imageTestsConfiguration,
    required this.infrastructureConfigurationArn,
    this.loggingConfiguration,
    this.name,
    this.region,
    this.schedule,
    this.status,
    this.tags,
    this.workflows,
  });

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
      map['imageScanningConfiguration'] = Input.mapOptionalInputValue<
              ImagePipelineImageScanningConfiguration, Map<String, dynamic>>(
          imageScanningConfigurationValue, (value) => value.toMap());
    }
    final imageTestsConfigurationValue = imageTestsConfiguration;
    if (imageTestsConfigurationValue != null) {
      map['imageTestsConfiguration'] = Input.mapOptionalInputValue<
              ImagePipelineImageTestsConfiguration, Map<String, dynamic>>(
          imageTestsConfigurationValue, (value) => value.toMap());
    }
    map['infrastructureConfigurationArn'] = infrastructureConfigurationArn;
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = Input.mapOptionalInputValue<
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
      map['schedule'] = Input.mapOptionalInputValue<ImagePipelineSchedule,
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
      map['workflows'] = Input.mapOptionalInputValue<
              List<ImagePipelineWorkflow>, List<Map<String, dynamic>>>(
          workflowsValue,
          (value) =>
              Input.encodeList<ImagePipelineWorkflow, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ImagePipelineArgs.fromMap(Map<String, dynamic> map) {
    return ImagePipelineArgs(
      containerRecipeArn:
          Input.asOptionalInput<String>(map['containerRecipeArn']),
      description: Input.asOptionalInput<String>(map['description']),
      distributionConfigurationArn:
          Input.asOptionalInput<String>(map['distributionConfigurationArn']),
      enhancedImageMetadataEnabled:
          Input.asOptionalInput<bool>(map['enhancedImageMetadataEnabled']),
      executionRole: Input.asOptionalInput<String>(map['executionRole']),
      imageRecipeArn: Input.asOptionalInput<String>(map['imageRecipeArn']),
      imageScanningConfiguration:
          Input.asOptionalInput<ImagePipelineImageScanningConfiguration>(
              map['imageScanningConfiguration']),
      imageTestsConfiguration:
          Input.asOptionalInput<ImagePipelineImageTestsConfiguration>(
              map['imageTestsConfiguration']),
      infrastructureConfigurationArn:
          Input.asInput<String>(map['infrastructureConfigurationArn']),
      loggingConfiguration:
          Input.asOptionalInput<ImagePipelineLoggingConfiguration>(
              map['loggingConfiguration']),
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      schedule: Input.asOptionalInput<ImagePipelineSchedule>(map['schedule']),
      status: Input.asOptionalInput<String>(map['status']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      workflows:
          Input.asOptionalInput<List<ImagePipelineWorkflow>>(map['workflows']),
    );
  }
}
