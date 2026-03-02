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
    this.arn,
    this.containerRecipeArn,
    this.dateCreated,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.executionRole,
    this.imageRecipeArn,
    this.imageScanningConfiguration,
    this.imageTestsConfiguration,
    this.infrastructureConfigurationArn,
    this.loggingConfiguration,
    this.name,
    this.osVersion,
    this.outputResources,
    this.platform,
    this.region,
    this.tags,
    this.tagsAll,
    this.version,
    this.workflows,
  });

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
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      containerRecipeArn: map['containerRecipeArn'] == null ? null : ((map['containerRecipeArn'] as String).input()).input(),
      dateCreated: map['dateCreated'] == null ? null : ((map['dateCreated'] as String).input()).input(),
      distributionConfigurationArn: map['distributionConfigurationArn'] == null ? null : ((map['distributionConfigurationArn'] as String).input()).input(),
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null ? null : ((map['enhancedImageMetadataEnabled'] as bool).input()).input(),
      executionRole: map['executionRole'] == null ? null : ((map['executionRole'] as String).input()).input(),
      imageRecipeArn: map['imageRecipeArn'] == null ? null : ((map['imageRecipeArn'] as String).input()).input(),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : ((ImageImageScanningConfiguration.fromMap((map['imageScanningConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null ? null : ((ImageImageTestsConfiguration.fromMap((map['imageTestsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      infrastructureConfigurationArn: map['infrastructureConfigurationArn'] == null ? null : ((map['infrastructureConfigurationArn'] as String).input()).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : ((ImageLoggingConfiguration.fromMap((map['loggingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      osVersion: map['osVersion'] == null ? null : ((map['osVersion'] as String).input()).input(),
      outputResources: map['outputResources'] == null ? null : ((pulumi.Input.decodeList<ImageOutputResource>(map['outputResources']!, (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      platform: map['platform'] == null ? null : ((map['platform'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      workflows: map['workflows'] == null ? null : ((pulumi.Input.decodeList<ImageWorkflow>(map['workflows']!, (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

