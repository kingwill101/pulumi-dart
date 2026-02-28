// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_scanning_configuration.dart';
import 'image_image_tests_configuration.dart';
import 'image_logging_configuration.dart';
import 'image_workflow.dart';

/// {@template pulumi_imagebuilder_image_image_args_doc}
/// The set of arguments for Image.
/// {@endtemplate}
/// {@macro pulumi_imagebuilder_image_image_args_doc}
class ImageArgs {
  /// Amazon Resource Name (ARN) of the container recipe.
  final pulumi.Input<String>? containerRecipeArn;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  final pulumi.Input<String>? distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to `true`.
  final pulumi.Input<bool>? enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final pulumi.Input<String>? executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  final pulumi.Input<String>? imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  final pulumi.Input<ImageImageScanningConfiguration>?
      imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  final pulumi.Input<ImageImageTestsConfiguration>? imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  final pulumi.Input<ImageLoggingConfiguration>? loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Configuration block with the workflow configuration. Detailed below.
  final pulumi.Input<List<ImageWorkflow>>? workflows;

  /// Creates a new [ImageArgs].
  /// [containerRecipeArn] Amazon Resource Name (ARN) of the container recipe.
  /// [distributionConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected. Defaults to `true`.
  /// [executionRole] Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  /// [imageRecipeArn] Amazon Resource Name (ARN) of the image recipe.
  /// [imageScanningConfiguration] Configuration block with image scanning configuration. Detailed below.
  /// [imageTestsConfiguration] Configuration block with image tests configuration. Detailed below.
  /// [infrastructureConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  /// [loggingConfiguration] Configuration block with logging configuration. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the Image Builder Image. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [workflows] Configuration block with the workflow configuration. Detailed below.
  ImageArgs({
    String? containerRecipeArn,
    String? distributionConfigurationArn,
    bool? enhancedImageMetadataEnabled,
    String? executionRole,
    String? imageRecipeArn,
    ImageImageScanningConfiguration? imageScanningConfiguration,
    ImageImageTestsConfiguration? imageTestsConfiguration,
    required String infrastructureConfigurationArn,
    ImageLoggingConfiguration? loggingConfiguration,
    String? region,
    Map<String, String>? tags,
    List<ImageWorkflow>? workflows,
  })  : containerRecipeArn =
            pulumi.Input.asOptionalInput<String>(containerRecipeArn),
        distributionConfigurationArn =
            pulumi.Input.asOptionalInput<String>(distributionConfigurationArn),
        enhancedImageMetadataEnabled =
            pulumi.Input.asOptionalInput<bool>(enhancedImageMetadataEnabled),
        executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
        imageRecipeArn = pulumi.Input.asOptionalInput<String>(imageRecipeArn),
        imageScanningConfiguration =
            pulumi.Input.asOptionalInput<ImageImageScanningConfiguration>(
                imageScanningConfiguration),
        imageTestsConfiguration =
            pulumi.Input.asOptionalInput<ImageImageTestsConfiguration>(
                imageTestsConfiguration),
        infrastructureConfigurationArn =
            pulumi.Input.asInput<String>(infrastructureConfigurationArn),
        loggingConfiguration =
            pulumi.Input.asOptionalInput<ImageLoggingConfiguration>(
                loggingConfiguration),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        workflows =
            pulumi.Input.asOptionalInput<List<ImageWorkflow>>(workflows);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerRecipeArnValue = containerRecipeArn;
    if (containerRecipeArnValue != null) {
      map['containerRecipeArn'] = containerRecipeArnValue;
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
              ImageImageScanningConfiguration, Map<String, dynamic>>(
          imageScanningConfigurationValue, (value) => value.toMap());
    }
    final imageTestsConfigurationValue = imageTestsConfiguration;
    if (imageTestsConfigurationValue != null) {
      map['imageTestsConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ImageImageTestsConfiguration, Map<String, dynamic>>(
          imageTestsConfigurationValue, (value) => value.toMap());
    }
    map['infrastructureConfigurationArn'] = infrastructureConfigurationArn;
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = pulumi.Input.mapOptionalInputValue<
              ImageLoggingConfiguration, Map<String, dynamic>>(
          loggingConfigurationValue, (value) => value.toMap());
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final workflowsValue = workflows;
    if (workflowsValue != null) {
      map['workflows'] = pulumi.Input.mapOptionalInputValue<List<ImageWorkflow>,
              List<Map<String, dynamic>>>(
          workflowsValue,
          (value) =>
              pulumi.Input.encodeList<ImageWorkflow, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      containerRecipeArn: map['containerRecipeArn'] == null
          ? null
          : map['containerRecipeArn'] as String,
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
          : ImageImageScanningConfiguration.fromMap(
              (map['imageScanningConfiguration'] as Map)
                  .cast<String, dynamic>()),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null
          ? null
          : ImageImageTestsConfiguration.fromMap(
              (map['imageTestsConfiguration'] as Map).cast<String, dynamic>()),
      infrastructureConfigurationArn:
          map['infrastructureConfigurationArn'] as String,
      loggingConfiguration: map['loggingConfiguration'] == null
          ? null
          : ImageLoggingConfiguration.fromMap(
              (map['loggingConfiguration'] as Map).cast<String, dynamic>()),
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      workflows: map['workflows'] == null
          ? null
          : pulumi.Input.decodeList<ImageWorkflow>(
              map['workflows'],
              (value) => ImageWorkflow.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
