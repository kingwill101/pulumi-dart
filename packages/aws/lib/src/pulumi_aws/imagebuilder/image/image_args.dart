// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../image_image_scanning_configuration/image_image_scanning_configuration.dart';
import '../image_image_tests_configuration/image_image_tests_configuration.dart';
import '../image_logging_configuration/image_logging_configuration.dart';
import '../image_workflow/image_workflow.dart';

/// The set of arguments for Image.
class ImageArgs {
  /// Amazon Resource Name (ARN) of the container recipe.
  final Input<String>? containerRecipeArn;

  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  final Input<String>? distributionConfigurationArn;

  /// Whether additional information about the image being created is collected. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enhancedImageMetadataEnabled;

  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final Input<String>? executionRole;

  /// Amazon Resource Name (ARN) of the image recipe.
  final Input<String>? imageRecipeArn;

  /// Configuration block with image scanning configuration. Detailed below.
  final Input<ImageImageScanningConfiguration>? imageScanningConfiguration;

  /// Configuration block with image tests configuration. Detailed below.
  final Input<ImageImageTestsConfiguration>? imageTestsConfiguration;

  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  final Input<String> infrastructureConfigurationArn;

  /// Configuration block with logging configuration. Detailed below.
  final Input<ImageLoggingConfiguration>? loggingConfiguration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block with the workflow configuration. Detailed below.
  final Input<List<ImageWorkflow>>? workflows;

  ImageArgs({
    this.containerRecipeArn,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.executionRole,
    this.imageRecipeArn,
    this.imageScanningConfiguration,
    this.imageTestsConfiguration,
    required this.infrastructureConfigurationArn,
    this.loggingConfiguration,
    this.region,
    this.tags,
    this.workflows,
  });

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
      map['imageScanningConfiguration'] = Input.mapOptionalInputValue<
              ImageImageScanningConfiguration, Map<String, dynamic>>(
          imageScanningConfigurationValue, (value) => value.toMap());
    }
    final imageTestsConfigurationValue = imageTestsConfiguration;
    if (imageTestsConfigurationValue != null) {
      map['imageTestsConfiguration'] = Input.mapOptionalInputValue<
              ImageImageTestsConfiguration, Map<String, dynamic>>(
          imageTestsConfigurationValue, (value) => value.toMap());
    }
    map['infrastructureConfigurationArn'] = infrastructureConfigurationArn;
    final loggingConfigurationValue = loggingConfiguration;
    if (loggingConfigurationValue != null) {
      map['loggingConfiguration'] = Input.mapOptionalInputValue<
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
      map['workflows'] = Input.mapOptionalInputValue<List<ImageWorkflow>,
              List<Map<String, dynamic>>>(
          workflowsValue,
          (value) => Input.encodeList<ImageWorkflow, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    return map;
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      containerRecipeArn:
          Input.asOptionalInput<String>(map['containerRecipeArn']),
      distributionConfigurationArn:
          Input.asOptionalInput<String>(map['distributionConfigurationArn']),
      enhancedImageMetadataEnabled:
          Input.asOptionalInput<bool>(map['enhancedImageMetadataEnabled']),
      executionRole: Input.asOptionalInput<String>(map['executionRole']),
      imageRecipeArn: Input.asOptionalInput<String>(map['imageRecipeArn']),
      imageScanningConfiguration:
          Input.asOptionalInput<ImageImageScanningConfiguration>(
              map['imageScanningConfiguration']),
      imageTestsConfiguration:
          Input.asOptionalInput<ImageImageTestsConfiguration>(
              map['imageTestsConfiguration']),
      infrastructureConfigurationArn:
          Input.asInput<String>(map['infrastructureConfigurationArn']),
      loggingConfiguration: Input.asOptionalInput<ImageLoggingConfiguration>(
          map['loggingConfiguration']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      workflows: Input.asOptionalInput<List<ImageWorkflow>>(map['workflows']),
    );
  }
}
