// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipeline_image_scanning_configuration.dart';
import 'get_image_pipeline_image_tests_configuration.dart';
import 'get_image_pipeline_schedule.dart';

/// Result data returned by getImagePipeline.
class GetImagePipelineResult {
  final String? arn;
  /// ARN of the container recipe.
  final String? containerRecipeArn;
  /// Date the image pipeline was created.
  final String? dateCreated;
  /// Date the image pipeline was last run.
  final String? dateLastRun;
  /// Date the image pipeline will run next.
  final String? dateNextRun;
  /// Date the image pipeline was updated.
  final String? dateUpdated;
  /// Description of the image pipeline.
  final String? description;
  /// ARN of the Image Builder Distribution Configuration.
  final String? distributionConfigurationArn;
  /// Whether additional information about the image being created is collected.
  final bool? enhancedImageMetadataEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// ARN of the image recipe.
  final String? imageRecipeArn;
  final List<GetImagePipelineImageScanningConfiguration>? imageScanningConfigurations;
  /// List of an object with image tests configuration.
  final List<GetImagePipelineImageTestsConfiguration>? imageTestsConfigurations;
  /// ARN of the Image Builder Infrastructure Configuration.
  final String? infrastructureConfigurationArn;
  /// Name of the image pipeline.
  final String? name;
  /// Platform of the image pipeline.
  final String? platform;
  final String? region;
  /// List of an object with schedule settings.
  final List<GetImagePipelineSchedule>? schedules;
  /// Status of the image pipeline.
  final String? status;
  /// Key-value map of resource tags for the image pipeline.
  final Map<String, String>? tags;

  /// Creates a new [GetImagePipelineResult].
  /// [arn] Optional.
  /// [containerRecipeArn] ARN of the container recipe.
  /// [dateCreated] Date the image pipeline was created.
  /// [dateLastRun] Date the image pipeline was last run.
  /// [dateNextRun] Date the image pipeline will run next.
  /// [dateUpdated] Date the image pipeline was updated.
  /// [description] Description of the image pipeline.
  /// [distributionConfigurationArn] ARN of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [imageRecipeArn] ARN of the image recipe.
  /// [imageScanningConfigurations] Optional.
  /// [imageTestsConfigurations] List of an object with image tests configuration.
  /// [infrastructureConfigurationArn] ARN of the Image Builder Infrastructure Configuration.
  /// [name] Name of the image pipeline.
  /// [platform] Platform of the image pipeline.
  /// [region] Optional.
  /// [schedules] List of an object with schedule settings.
  /// [status] Status of the image pipeline.
  /// [tags] Key-value map of resource tags for the image pipeline.
  const GetImagePipelineResult({
    this.arn,
    this.containerRecipeArn,
    this.dateCreated,
    this.dateLastRun,
    this.dateNextRun,
    this.dateUpdated,
    this.description,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.id,
    this.imageRecipeArn,
    this.imageScanningConfigurations,
    this.imageTestsConfigurations,
    this.infrastructureConfigurationArn,
    this.name,
    this.platform,
    this.region,
    this.schedules,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containerRecipeArn': ?containerRecipeArn,
      'dateCreated': ?dateCreated,
      'dateLastRun': ?dateLastRun,
      'dateNextRun': ?dateNextRun,
      'dateUpdated': ?dateUpdated,
      'description': ?description,
      'distributionConfigurationArn': ?distributionConfigurationArn,
      'enhancedImageMetadataEnabled': ?enhancedImageMetadataEnabled,
      'id': ?id,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfigurations': ?(() { final guardedValue = imageScanningConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagePipelineImageScanningConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'imageTestsConfigurations': ?(() { final guardedValue = imageTestsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagePipelineImageTestsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'infrastructureConfigurationArn': ?infrastructureConfigurationArn,
      'name': ?name,
      'platform': ?platform,
      'region': ?region,
      'schedules': ?(() { final guardedValue = schedules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetImagePipelineSchedule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetImagePipelineResult.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      containerRecipeArn: (() { final guardedValue = map['containerRecipeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateCreated: (() { final guardedValue = map['dateCreated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateLastRun: (() { final guardedValue = map['dateLastRun']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateNextRun: (() { final guardedValue = map['dateNextRun']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dateUpdated: (() { final guardedValue = map['dateUpdated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      distributionConfigurationArn: (() { final guardedValue = map['distributionConfigurationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enhancedImageMetadataEnabled: (() { final guardedValue = map['enhancedImageMetadataEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageRecipeArn: (() { final guardedValue = map['imageRecipeArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      imageScanningConfigurations: (() { final guardedValue = map['imageScanningConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagePipelineImageScanningConfiguration>(guardedValue, (value) => GetImagePipelineImageScanningConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      imageTestsConfigurations: (() { final guardedValue = map['imageTestsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagePipelineImageTestsConfiguration>(guardedValue, (value) => GetImagePipelineImageTestsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      infrastructureConfigurationArn: (() { final guardedValue = map['infrastructureConfigurationArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      platform: (() { final guardedValue = map['platform']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      schedules: (() { final guardedValue = map['schedules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetImagePipelineSchedule>(guardedValue, (value) => GetImagePipelineSchedule.fromMap((value as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
