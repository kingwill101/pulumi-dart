// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_image_scanning_configuration.dart';
import 'get_image_image_tests_configuration.dart';
import 'get_image_output_resource.dart';

/// Result data returned by getImage.
class GetImageResult {
  final String arn;
  /// Build version ARN of the image. This will always have the `#.#.#/#` suffix.
  final String buildVersionArn;
  /// ARN of the container recipe.
  final String containerRecipeArn;
  /// Date the image was created.
  final String dateCreated;
  /// ARN of the Image Builder Distribution Configuration.
  final String distributionConfigurationArn;
  /// Whether additional information about the image being created is collected.
  final bool enhancedImageMetadataEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN of the image recipe.
  final String imageRecipeArn;
  /// List of an object with image scanning configuration fields.
  final List<GetImageImageScanningConfiguration> imageScanningConfigurations;
  /// List of an object with image tests configuration.
  final List<GetImageImageTestsConfiguration> imageTestsConfigurations;
  /// ARN of the Image Builder Infrastructure Configuration.
  final String infrastructureConfigurationArn;
  /// Name of the AMI.
  final String name;
  /// Operating System version of the image.
  final String osVersion;
  /// List of objects with resources created by the image.
  final List<GetImageOutputResource> outputResources;
  /// Platform of the image.
  final String platform;
  /// Region of the container image.
  final String region;
  /// Key-value map of resource tags for the image.
  final Map<String, String> tags;
  /// Version of the image.
  final String version;

  /// Creates a new [GetImageResult].
  /// [arn] Required.
  /// [buildVersionArn] Build version ARN of the image. This will always have the `#.#.#/#` suffix.
  /// [containerRecipeArn] ARN of the container recipe.
  /// [dateCreated] Date the image was created.
  /// [distributionConfigurationArn] ARN of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageRecipeArn] ARN of the image recipe.
  /// [imageScanningConfigurations] List of an object with image scanning configuration fields.
  /// [imageTestsConfigurations] List of an object with image tests configuration.
  /// [infrastructureConfigurationArn] ARN of the Image Builder Infrastructure Configuration.
  /// [name] Name of the AMI.
  /// [osVersion] Operating System version of the image.
  /// [outputResources] List of objects with resources created by the image.
  /// [platform] Platform of the image.
  /// [region] Region of the container image.
  /// [tags] Key-value map of resource tags for the image.
  /// [version] Version of the image.
  const GetImageResult({
    required this.arn,
    required this.buildVersionArn,
    required this.containerRecipeArn,
    required this.dateCreated,
    required this.distributionConfigurationArn,
    required this.enhancedImageMetadataEnabled,
    required this.id,
    required this.imageRecipeArn,
    required this.imageScanningConfigurations,
    required this.imageTestsConfigurations,
    required this.infrastructureConfigurationArn,
    required this.name,
    required this.osVersion,
    required this.outputResources,
    required this.platform,
    required this.region,
    required this.tags,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'buildVersionArn': buildVersionArn,
      'containerRecipeArn': containerRecipeArn,
      'dateCreated': dateCreated,
      'distributionConfigurationArn': distributionConfigurationArn,
      'enhancedImageMetadataEnabled': enhancedImageMetadataEnabled,
      'id': id,
      'imageRecipeArn': imageRecipeArn,
      'imageScanningConfigurations': pulumi.Input.encodeList<GetImageImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfigurations, (value) => value.toMap()),
      'imageTestsConfigurations': pulumi.Input.encodeList<GetImageImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfigurations, (value) => value.toMap()),
      'infrastructureConfigurationArn': infrastructureConfigurationArn,
      'name': name,
      'osVersion': osVersion,
      'outputResources': pulumi.Input.encodeList<GetImageOutputResource, Map<String, dynamic>>(outputResources, (value) => value.toMap()),
      'platform': platform,
      'region': region,
      'tags': tags,
      'version': version,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      arn: map['arn'] as String,
      buildVersionArn: map['buildVersionArn'] as String,
      containerRecipeArn: map['containerRecipeArn'] as String,
      dateCreated: map['dateCreated'] as String,
      distributionConfigurationArn: map['distributionConfigurationArn'] as String,
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] as bool,
      id: map['id'] as String,
      imageRecipeArn: map['imageRecipeArn'] as String,
      imageScanningConfigurations: pulumi.Input.decodeList<GetImageImageScanningConfiguration>(map['imageScanningConfigurations']!, (value) => GetImageImageScanningConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      imageTestsConfigurations: pulumi.Input.decodeList<GetImageImageTestsConfiguration>(map['imageTestsConfigurations']!, (value) => GetImageImageTestsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      infrastructureConfigurationArn: map['infrastructureConfigurationArn'] as String,
      name: map['name'] as String,
      osVersion: map['osVersion'] as String,
      outputResources: pulumi.Input.decodeList<GetImageOutputResource>(map['outputResources']!, (value) => GetImageOutputResource.fromMap((value as Map).cast<String, dynamic>())),
      platform: map['platform'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      version: map['version'] as String,
    );
  }
}

