// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_scanning_configuration.dart';
import 'image_image_tests_configuration.dart';
import 'image_logging_configuration.dart';
import 'image_output_resource.dart';
import 'image_workflow.dart';

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// Amazon Resource Name (ARN) of the image.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) of the container recipe.
  final pulumi.Input<String>? containerRecipeArn;
  /// Date the image was created.
  final pulumi.Input<String>? dateCreated;
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
  final pulumi.Input<String>? infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  final pulumi.Input<ImageLoggingConfiguration>? loggingConfiguration;
  /// Name of the AMI.
  final pulumi.Input<String>? name;
  /// Operating System version of the image.
  final pulumi.Input<String>? osVersion;
  /// List of objects with resources created by the image.
  final pulumi.Input<List<ImageOutputResource>>? outputResources;
  /// Platform of the image.
  final pulumi.Input<String>? platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Version of the image.
  final pulumi.Input<String>? version;
  /// Configuration block with the workflow configuration. Detailed below.
  final pulumi.Input<List<ImageWorkflow>>? workflows;

  /// Creates a new [ImageState].
  /// [arn] Amazon Resource Name (ARN) of the image.
  /// [containerRecipeArn] Amazon Resource Name (ARN) of the container recipe.
  /// [dateCreated] Date the image was created.
  /// [distributionConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected. Defaults to `true`.
  /// [executionRole] Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  /// [imageRecipeArn] Amazon Resource Name (ARN) of the image recipe.
  /// [imageScanningConfiguration] Configuration block with image scanning configuration. Detailed below.
  /// [imageTestsConfiguration] Configuration block with image tests configuration. Detailed below.
  /// [infrastructureConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  /// [loggingConfiguration] Configuration block with logging configuration. Detailed below.
  /// [name] Name of the AMI.
  /// [osVersion] Operating System version of the image.
  /// [outputResources] List of objects with resources created by the image.
  /// [platform] Platform of the image.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the Image Builder Image. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [version] Version of the image.
  /// [workflows] Configuration block with the workflow configuration. Detailed below.
  ImageState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? containerRecipeArn,
    pulumi.Output<String>? dateCreated,
    pulumi.Output<String>? distributionConfigurationArn,
    pulumi.Output<bool>? enhancedImageMetadataEnabled,
    pulumi.Output<String>? executionRole,
    pulumi.Output<String>? imageRecipeArn,
    pulumi.Output<ImageImageScanningConfiguration>? imageScanningConfiguration,
    pulumi.Output<ImageImageTestsConfiguration>? imageTestsConfiguration,
    pulumi.Output<String>? infrastructureConfigurationArn,
    pulumi.Output<ImageLoggingConfiguration>? loggingConfiguration,
    pulumi.Output<String>? name,
    pulumi.Output<String>? osVersion,
    pulumi.Output<List<ImageOutputResource>>? outputResources,
    pulumi.Output<String>? platform,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? version,
    pulumi.Output<List<ImageWorkflow>>? workflows,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      containerRecipeArn = pulumi.Input.asOptionalInput<String>(containerRecipeArn),
      dateCreated = pulumi.Input.asOptionalInput<String>(dateCreated),
      distributionConfigurationArn = pulumi.Input.asOptionalInput<String>(distributionConfigurationArn),
      enhancedImageMetadataEnabled = pulumi.Input.asOptionalInput<bool>(enhancedImageMetadataEnabled),
      executionRole = pulumi.Input.asOptionalInput<String>(executionRole),
      imageRecipeArn = pulumi.Input.asOptionalInput<String>(imageRecipeArn),
      imageScanningConfiguration = pulumi.Input.asOptionalInput<ImageImageScanningConfiguration>(imageScanningConfiguration),
      imageTestsConfiguration = pulumi.Input.asOptionalInput<ImageImageTestsConfiguration>(imageTestsConfiguration),
      infrastructureConfigurationArn = pulumi.Input.asOptionalInput<String>(infrastructureConfigurationArn),
      loggingConfiguration = pulumi.Input.asOptionalInput<ImageLoggingConfiguration>(loggingConfiguration),
      name = pulumi.Input.asOptionalInput<String>(name),
      osVersion = pulumi.Input.asOptionalInput<String>(osVersion),
      outputResources = pulumi.Input.asOptionalInput<List<ImageOutputResource>>(outputResources),
      platform = pulumi.Input.asOptionalInput<String>(platform),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      version = pulumi.Input.asOptionalInput<String>(version),
      workflows = pulumi.Input.asOptionalInput<List<ImageWorkflow>>(workflows);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containerRecipeArn': ?containerRecipeArn,
      'dateCreated': ?dateCreated,
      'distributionConfigurationArn': ?distributionConfigurationArn,
      'enhancedImageMetadataEnabled': ?enhancedImageMetadataEnabled,
      'executionRole': ?executionRole,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTestsConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfiguration, (value) => value.toMap()),
      'infrastructureConfigurationArn': ?infrastructureConfigurationArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<ImageLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'name': ?name,
      'osVersion': ?osVersion,
      'outputResources': ?pulumi.Input.mapOptionalInputValue<List<ImageOutputResource>, List<Map<String, dynamic>>>(outputResources, (value) => pulumi.Input.encodeList<ImageOutputResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'platform': ?platform,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'version': ?version,
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<ImageWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<ImageWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImageState.fromMap(Map<String, dynamic> map) {
    return ImageState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      containerRecipeArn: map['containerRecipeArn'] == null ? null : pulumi.Output.create<String>(map['containerRecipeArn'] as String),
      dateCreated: map['dateCreated'] == null ? null : pulumi.Output.create<String>(map['dateCreated'] as String),
      distributionConfigurationArn: map['distributionConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['distributionConfigurationArn'] as String),
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null ? null : pulumi.Output.create<bool>(map['enhancedImageMetadataEnabled'] as bool),
      executionRole: map['executionRole'] == null ? null : pulumi.Output.create<String>(map['executionRole'] as String),
      imageRecipeArn: map['imageRecipeArn'] == null ? null : pulumi.Output.create<String>(map['imageRecipeArn'] as String),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : pulumi.Output.create<ImageImageScanningConfiguration>(ImageImageScanningConfiguration.fromMap((map['imageScanningConfiguration'] as Map).cast<String, dynamic>())),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null ? null : pulumi.Output.create<ImageImageTestsConfiguration>(ImageImageTestsConfiguration.fromMap((map['imageTestsConfiguration'] as Map).cast<String, dynamic>())),
      infrastructureConfigurationArn: map['infrastructureConfigurationArn'] == null ? null : pulumi.Output.create<String>(map['infrastructureConfigurationArn'] as String),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : pulumi.Output.create<ImageLoggingConfiguration>(ImageLoggingConfiguration.fromMap((map['loggingConfiguration'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      osVersion: map['osVersion'] == null ? null : pulumi.Output.create<String>(map['osVersion'] as String),
      outputResources: map['outputResources'] == null ? null : pulumi.Output.create<List<ImageOutputResource>>(pulumi.Input.decodeList<ImageOutputResource>(map['outputResources'], (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>()))),
      platform: map['platform'] == null ? null : pulumi.Output.create<String>(map['platform'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      workflows: map['workflows'] == null ? null : pulumi.Output.create<List<ImageWorkflow>>(pulumi.Input.decodeList<ImageWorkflow>(map['workflows'], (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

