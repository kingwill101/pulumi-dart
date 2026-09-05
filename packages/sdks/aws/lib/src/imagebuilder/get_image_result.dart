// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_image_scanning_configuration.dart';
import 'get_image_image_tests_configuration.dart';
import 'get_image_output_resource.dart';

/// Result data returned by getImage.
class GetImageResult {
  final String? arn;
  /// Build version ARN of the image. This will always have the `#.#.#/#` suffix.
  final String? buildVersionArn;
  /// ARN of the container recipe.
  final String? containerRecipeArn;
  /// Date the image was created.
  final String? dateCreated;
  /// ARN of the Image Builder Distribution Configuration.
  final String? distributionConfigurationArn;
  /// Whether additional information about the image being created is collected.
  final bool? enhancedImageMetadataEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the image recipe.
  final String? imageRecipeArn;
  /// List of an object with image scanning configuration fields.
  final List<GetImageImageScanningConfiguration>? imageScanningConfigurations;
  /// List of an object with image tests configuration.
  final List<GetImageImageTestsConfiguration>? imageTestsConfigurations;
  /// ARN of the Image Builder Infrastructure Configuration.
  final String? infrastructureConfigurationArn;
  /// Name of the AMI.
  final String? name;
  /// Operating System version of the image.
  final String? osVersion;
  /// List of objects with resources created by the image.
  final List<GetImageOutputResource>? outputResources;
  /// Platform of the image.
  final String? platform;
  /// Region of the container image.
  final String? region;
  /// Key-value map of resource tags for the image.
  final Map<String, String>? tags;
  /// Version of the image.
  final String? version;

  /// Creates a new [GetImageResult].
  /// [arn] Optional.
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
    this.arn,
    this.buildVersionArn,
    this.containerRecipeArn,
    this.dateCreated,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.id,
    this.imageRecipeArn,
    this.imageScanningConfigurations,
    this.imageTestsConfigurations,
    this.infrastructureConfigurationArn,
    this.name,
    this.osVersion,
    this.outputResources,
    this.platform,
    this.region,
    this.tags,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'buildVersionArn': ?buildVersionArn,
      'containerRecipeArn': ?containerRecipeArn,
      'dateCreated': ?dateCreated,
      'distributionConfigurationArn': ?distributionConfigurationArn,
      'enhancedImageMetadataEnabled': ?enhancedImageMetadataEnabled,
      'id': ?id,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfigurations': ?(() { final guardedValue = imageScanningConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageImageScanningConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'imageTestsConfigurations': ?(() { final guardedValue = imageTestsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageImageTestsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'infrastructureConfigurationArn': ?infrastructureConfigurationArn,
      'name': ?name,
      'osVersion': ?osVersion,
      'outputResources': ?(() { final guardedValue = outputResources; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImageOutputResource, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'platform': ?platform,
      'region': ?region,
      'tags': ?tags,
      'version': ?version,
    };
  }

  factory GetImageResult.fromMap(Map<String, dynamic> map) {
    return GetImageResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      buildVersionArn: (() { final guardedValue = map['buildVersionArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerRecipeArn: (() { final guardedValue = map['containerRecipeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionConfigurationArn: (() { final guardedValue = map['distributionConfigurationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enhancedImageMetadataEnabled: (() { final guardedValue = map['enhancedImageMetadataEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageRecipeArn: (() { final guardedValue = map['imageRecipeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageScanningConfigurations: (() { final guardedValue = map['imageScanningConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageImageScanningConfiguration>(guardedValue, (value) => GetImageImageScanningConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      imageTestsConfigurations: (() { final guardedValue = map['imageTestsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageImageTestsConfiguration>(guardedValue, (value) => GetImageImageTestsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      infrastructureConfigurationArn: (() { final guardedValue = map['infrastructureConfigurationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputResources: (() { final guardedValue = map['outputResources']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImageOutputResource>(guardedValue, (value) => GetImageOutputResource.fromMap((value as Map).cast<String, dynamic>())); })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
