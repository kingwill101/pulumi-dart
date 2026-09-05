// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_image_scanning_configuration.dart';
import 'image_image_tests_configuration.dart';
import 'image_logging_configuration.dart';
import 'image_output_resource.dart';
import 'image_workflow.dart';

/// Input properties used for looking up and filtering Image resources.
class ImageState {
  /// ARN of the image.
  final pulumi.Input<String?>? arn;
  /// ARN of the container recipe.
  final pulumi.Input<String?>? containerRecipeArn;
  /// Date the image was created.
  final pulumi.Input<String?>? dateCreated;
  /// ARN of the Image Builder Distribution Configuration.
  final pulumi.Input<String?>? distributionConfigurationArn;
  /// Whether additional information about the image being created is collected. Defaults to `true`.
  final pulumi.Input<bool?>? enhancedImageMetadataEnabled;
  /// ARN of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final pulumi.Input<String?>? executionRole;
  /// ARN of the image recipe.
  final pulumi.Input<String?>? imageRecipeArn;
  /// Configuration block with image scanning configuration. Detailed below.
  final pulumi.Input<ImageImageScanningConfiguration?>? imageScanningConfiguration;
  /// Configuration block with image tests configuration. Detailed below.
  final pulumi.Input<ImageImageTestsConfiguration?>? imageTestsConfiguration;
  /// ARN of the Image Builder Infrastructure Configuration.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  final pulumi.Input<ImageLoggingConfiguration?>? loggingConfiguration;
  /// Name of the AMI.
  final pulumi.Input<String?>? name;
  /// Operating System version of the image.
  final pulumi.Input<String?>? osVersion;
  /// List of objects with resources created by the image.
  final pulumi.Input<List<ImageOutputResource>?>? outputResources;
  /// Platform of the image.
  final pulumi.Input<String?>? platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags for the Image Builder Image. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Version of the image.
  final pulumi.Input<String?>? version;
  /// Configuration block with the workflow configuration. Detailed below.
  final pulumi.Input<List<ImageWorkflow>?>? workflows;

  /// Creates a new [ImageState].
  /// [arn] ARN of the image.
  /// [containerRecipeArn] ARN of the container recipe.
  /// [dateCreated] Date the image was created.
  /// [distributionConfigurationArn] ARN of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected. Defaults to `true`.
  /// [executionRole] ARN of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  /// [imageRecipeArn] ARN of the image recipe.
  /// [imageScanningConfiguration] Configuration block with image scanning configuration. Detailed below.
  /// [imageTestsConfiguration] Configuration block with image tests configuration. Detailed below.
  /// [infrastructureConfigurationArn] ARN of the Image Builder Infrastructure Configuration.
  /// [loggingConfiguration] Configuration block with logging configuration. Detailed below.
  /// [name] Name of the AMI.
  /// [osVersion] Operating System version of the image.
  /// [outputResources] List of objects with resources created by the image.
  /// [platform] Platform of the image.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags for the Image Builder Image. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [version] Version of the image.
  /// [workflows] Configuration block with the workflow configuration. Detailed below.
  const ImageState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerRecipeArn: (() { final guardedValue = map['containerRecipeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      distributionConfigurationArn: (() { final guardedValue = map['distributionConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enhancedImageMetadataEnabled: (() { final guardedValue = map['enhancedImageMetadataEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      executionRole: (() { final guardedValue = map['executionRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageRecipeArn: (() { final guardedValue = map['imageRecipeArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageScanningConfiguration: (() { final guardedValue = map['imageScanningConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageImageScanningConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      imageTestsConfiguration: (() { final guardedValue = map['imageTestsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageImageTestsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      infrastructureConfigurationArn: (() { final guardedValue = map['infrastructureConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loggingConfiguration: (() { final guardedValue = map['loggingConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageLoggingConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputResources: (() { final guardedValue = map['outputResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageOutputResource>(guardedValue, (value) => ImageOutputResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workflows: (() { final guardedValue = map['workflows']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ImageWorkflow>(guardedValue, (value) => ImageWorkflow.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
