// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_pipeline_image_scanning_configuration.dart';
import 'get_image_pipeline_image_tests_configuration.dart';
import 'get_image_pipeline_schedule.dart';

/// Result data returned by getImagePipeline.
class GetImagePipelineResult {
  final String arn;
  /// ARN of the container recipe.
  final String containerRecipeArn;
  /// Date the image pipeline was created.
  final String dateCreated;
  /// Date the image pipeline was last run.
  final String dateLastRun;
  /// Date the image pipeline will run next.
  final String dateNextRun;
  /// Date the image pipeline was updated.
  final String dateUpdated;
  /// Description of the image pipeline.
  final String description;
  /// ARN of the Image Builder Distribution Configuration.
  final String distributionConfigurationArn;
  /// Whether additional information about the image being created is collected.
  final bool enhancedImageMetadataEnabled;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN of the image recipe.
  final String imageRecipeArn;
  final List<GetImagePipelineImageScanningConfiguration> imageScanningConfigurations;
  /// List of an object with image tests configuration.
  final List<GetImagePipelineImageTestsConfiguration> imageTestsConfigurations;
  /// ARN of the Image Builder Infrastructure Configuration.
  final String infrastructureConfigurationArn;
  /// Name of the image pipeline.
  final String name;
  /// Platform of the image pipeline.
  final String platform;
  final String region;
  /// List of an object with schedule settings.
  final List<GetImagePipelineSchedule> schedules;
  /// Status of the image pipeline.
  final String status;
  /// Key-value map of resource tags for the image pipeline.
  final Map<String, String> tags;

  /// Creates a new [GetImagePipelineResult].
  /// [arn] Required.
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
  /// [imageScanningConfigurations] Required.
  /// [imageTestsConfigurations] List of an object with image tests configuration.
  /// [infrastructureConfigurationArn] ARN of the Image Builder Infrastructure Configuration.
  /// [name] Name of the image pipeline.
  /// [platform] Platform of the image pipeline.
  /// [region] Required.
  /// [schedules] List of an object with schedule settings.
  /// [status] Status of the image pipeline.
  /// [tags] Key-value map of resource tags for the image pipeline.
  GetImagePipelineResult({
    required this.arn,
    required this.containerRecipeArn,
    required this.dateCreated,
    required this.dateLastRun,
    required this.dateNextRun,
    required this.dateUpdated,
    required this.description,
    required this.distributionConfigurationArn,
    required this.enhancedImageMetadataEnabled,
    required this.id,
    required this.imageRecipeArn,
    required this.imageScanningConfigurations,
    required this.imageTestsConfigurations,
    required this.infrastructureConfigurationArn,
    required this.name,
    required this.platform,
    required this.region,
    required this.schedules,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'containerRecipeArn': containerRecipeArn,
      'dateCreated': dateCreated,
      'dateLastRun': dateLastRun,
      'dateNextRun': dateNextRun,
      'dateUpdated': dateUpdated,
      'description': description,
      'distributionConfigurationArn': distributionConfigurationArn,
      'enhancedImageMetadataEnabled': enhancedImageMetadataEnabled,
      'id': id,
      'imageRecipeArn': imageRecipeArn,
      'imageScanningConfigurations': pulumi.Input.encodeList<GetImagePipelineImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfigurations, (value) => value.toMap()),
      'imageTestsConfigurations': pulumi.Input.encodeList<GetImagePipelineImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfigurations, (value) => value.toMap()),
      'infrastructureConfigurationArn': infrastructureConfigurationArn,
      'name': name,
      'platform': platform,
      'region': region,
      'schedules': pulumi.Input.encodeList<GetImagePipelineSchedule, Map<String, dynamic>>(schedules, (value) => value.toMap()),
      'status': status,
      'tags': tags,
    };
  }

  factory GetImagePipelineResult.fromMap(Map<String, dynamic> map) {
    return GetImagePipelineResult(
      arn: map['arn'] as String,
      containerRecipeArn: map['containerRecipeArn'] as String,
      dateCreated: map['dateCreated'] as String,
      dateLastRun: map['dateLastRun'] as String,
      dateNextRun: map['dateNextRun'] as String,
      dateUpdated: map['dateUpdated'] as String,
      description: map['description'] as String,
      distributionConfigurationArn: map['distributionConfigurationArn'] as String,
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] as bool,
      id: map['id'] as String,
      imageRecipeArn: map['imageRecipeArn'] as String,
      imageScanningConfigurations: pulumi.Input.decodeList<GetImagePipelineImageScanningConfiguration>(map['imageScanningConfigurations']!, (value) => GetImagePipelineImageScanningConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      imageTestsConfigurations: pulumi.Input.decodeList<GetImagePipelineImageTestsConfiguration>(map['imageTestsConfigurations']!, (value) => GetImagePipelineImageTestsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      infrastructureConfigurationArn: map['infrastructureConfigurationArn'] as String,
      name: map['name'] as String,
      platform: map['platform'] as String,
      region: map['region'] as String,
      schedules: pulumi.Input.decodeList<GetImagePipelineSchedule>(map['schedules']!, (value) => GetImagePipelineSchedule.fromMap((value as Map).cast<String, dynamic>())),
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

