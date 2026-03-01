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
  final pulumi.Input<ImageImageScanningConfiguration>? imageScanningConfiguration;
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
    pulumi.Output<String>? containerRecipeArn,
    pulumi.Output<String>? distributionConfigurationArn,
    pulumi.Output<bool>? enhancedImageMetadataEnabled,
    pulumi.Output<String>? executionRole,
    pulumi.Output<String>? imageRecipeArn,
    pulumi.Output<ImageImageScanningConfiguration>? imageScanningConfiguration,
    pulumi.Output<ImageImageTestsConfiguration>? imageTestsConfiguration,
    required pulumi.Output<String> infrastructureConfigurationArn,
    pulumi.Output<ImageLoggingConfiguration>? loggingConfiguration,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<List<ImageWorkflow>>? workflows,
  }) :
      containerRecipeArn = pulumi.Input.asOptionalInput<String>(containerRecipeArn),
      distributionConfigurationArn = pulumi.Input.asOptionalInput<String>(distributionConfigurationArn),
      enhancedImageMetadataEnabled = pulumi.Input.asOptionalInput<bool>(enhancedImageMetadataEnabled),
      executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
      imageRecipeArn = pulumi.Input.asOptionalInput<String>(imageRecipeArn),
      imageScanningConfiguration = pulumi.Input.asOptionalInput<ImageImageScanningConfiguration>(imageScanningConfiguration),
      imageTestsConfiguration = pulumi.Input.asOptionalInput<ImageImageTestsConfiguration>(imageTestsConfiguration),
      infrastructureConfigurationArn = pulumi.Input.asInput<String>(infrastructureConfigurationArn),
      loggingConfiguration = pulumi.Input.asOptionalInput<ImageLoggingConfiguration>(loggingConfiguration),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      workflows = pulumi.Input.asOptionalInput<List<ImageWorkflow>>(workflows);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerRecipeArn': ?containerRecipeArn,
      'distributionConfigurationArn': ?distributionConfigurationArn,
      'enhancedImageMetadataEnabled': ?enhancedImageMetadataEnabled,
      'executionRole': ?executionRole,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTestsConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfiguration, (value) => value.toMap()),
      'infrastructureConfigurationArn': infrastructureConfigurationArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'region': ?region,
      'tags': ?tags,
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<ImageWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<ImageWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageArgs.fromMap(Map<String, dynamic> map) {
    return ImageArgs(
      containerRecipeArn: map['containerRecipeArn'] == null ? null : pulumi.Output.create<String>(map['containerRecipeArn'] as String),
      distributionConfigurationArn: map['distributionConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['distributionConfigurationArn'] as String),
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null ? null : pulumi.Output.create<bool>(map['enhancedImageMetadataEnabled'] as bool),
      executionRole: map['executionRole'] == null ? null : pulumi.Output.create<String>(map['executionRole'] as String),
      imageRecipeArn: map['imageRecipeArn'] == null ? null : pulumi.Output.create<String>(map['imageRecipeArn'] as String),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : pulumi.Output.create<ImageImageScanningConfiguration>(ImageImageScanningConfiguration.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>())),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null ? null : pulumi.Output.create<ImageImageTestsConfiguration>(ImageImageTestsConfiguration.fromMap((map['imageTestsConfiguration'] as Map).cast<String, dynamic>())),
      infrastructureConfigurationArn: pulumi.Output.create<String>(map['infrastructureConfigurationArn'] as String),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : pulumi.Output.create<ImageLoggingConfiguration>(ImageLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      workflows: map['workflows'] == null ? null : pulumi.Output.create<List<ImageWorkflow>>(pulumi.Input.decodeList<ImageWorkflow>(map['workflows'], (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

