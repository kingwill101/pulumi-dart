// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_pipeline_image_scanning_configuration.dart';
import 'image_pipeline_image_tests_configuration.dart';
import 'image_pipeline_logging_configuration.dart';
import 'image_pipeline_schedule.dart';
import 'image_pipeline_workflow.dart';

/// Input properties used for looking up and filtering ImagePipeline resources.
class ImagePipelineState {
  /// Amazon Resource Name (ARN) of the image pipeline.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) of the container recipe.
  final pulumi.Input<String>? containerRecipeArn;
  /// Date the image pipeline was created.
  final pulumi.Input<String>? dateCreated;
  /// Date the image pipeline was last run.
  final pulumi.Input<String>? dateLastRun;
  /// Date the image pipeline will run next.
  final pulumi.Input<String>? dateNextRun;
  /// Date the image pipeline was updated.
  final pulumi.Input<String>? dateUpdated;
  /// Description of the image pipeline.
  final pulumi.Input<String>? description;
  /// Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  final pulumi.Input<String>? distributionConfigurationArn;
  /// Whether additional information about the image being created is collected. Defaults to `true`.
  final pulumi.Input<bool>? enhancedImageMetadataEnabled;
  /// Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  final pulumi.Input<String>? executionRole;
  /// Amazon Resource Name (ARN) of the image recipe.
  final pulumi.Input<String>? imageRecipeArn;
  /// Configuration block with image scanning configuration. Detailed below.
  final pulumi.Input<ImagePipelineImageScanningConfiguration>? imageScanningConfiguration;
  /// Configuration block with image tests configuration. Detailed below.
  final pulumi.Input<ImagePipelineImageTestsConfiguration>? imageTestsConfiguration;
  /// Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  final pulumi.Input<String>? infrastructureConfigurationArn;
  /// Configuration block with logging configuration. Detailed below.
  final pulumi.Input<ImagePipelineLoggingConfiguration>? loggingConfiguration;
  /// Name of the image pipeline.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Platform of the image pipeline.
  final pulumi.Input<String>? platform;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block with schedule settings. Detailed below.
  final pulumi.Input<ImagePipelineSchedule>? schedule;
  /// Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  final pulumi.Input<String>? status;
  /// Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block with the workflow configuration. Detailed below.
  final pulumi.Input<List<ImagePipelineWorkflow>>? workflows;

  /// Creates a new [ImagePipelineState].
  /// [arn] Amazon Resource Name (ARN) of the image pipeline.
  /// [containerRecipeArn] Amazon Resource Name (ARN) of the container recipe.
  /// [dateCreated] Date the image pipeline was created.
  /// [dateLastRun] Date the image pipeline was last run.
  /// [dateNextRun] Date the image pipeline will run next.
  /// [dateUpdated] Date the image pipeline was updated.
  /// [description] Description of the image pipeline.
  /// [distributionConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Distribution Configuration.
  /// [enhancedImageMetadataEnabled] Whether additional information about the image being created is collected. Defaults to `true`.
  /// [executionRole] Amazon Resource Name (ARN) of the service-linked role to be used by Image Builder to [execute workflows](https://docs.aws.amazon.com/imagebuilder/latest/userguide/manage-image-workflows.html).
  /// [imageRecipeArn] Amazon Resource Name (ARN) of the image recipe.
  /// [imageScanningConfiguration] Configuration block with image scanning configuration. Detailed below.
  /// [imageTestsConfiguration] Configuration block with image tests configuration. Detailed below.
  /// [infrastructureConfigurationArn] Amazon Resource Name (ARN) of the Image Builder Infrastructure Configuration.
  /// [loggingConfiguration] Configuration block with logging configuration. Detailed below.
  /// [name] Name of the image pipeline.
  /// [platform] Platform of the image pipeline.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [schedule] Configuration block with schedule settings. Detailed below.
  /// [status] Status of the image pipeline. Valid values are `DISABLED` and `ENABLED`. Defaults to `ENABLED`.
  /// [tags] Key-value map of resource tags for the image pipeline. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [workflows] Configuration block with the workflow configuration. Detailed below.
  ImagePipelineState({
    this.arn,
    this.containerRecipeArn,
    this.dateCreated,
    this.dateLastRun,
    this.dateNextRun,
    this.dateUpdated,
    this.description,
    this.distributionConfigurationArn,
    this.enhancedImageMetadataEnabled,
    this.executionRole,
    this.imageRecipeArn,
    this.imageScanningConfiguration,
    this.imageTestsConfiguration,
    this.infrastructureConfigurationArn,
    this.loggingConfiguration,
    this.name,
    this.platform,
    this.region,
    this.schedule,
    this.status,
    this.tags,
    this.tagsAll,
    this.workflows,
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
      'executionRole': ?executionRole,
      'imageRecipeArn': ?imageRecipeArn,
      'imageScanningConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineImageScanningConfiguration, Map<String, dynamic>>(imageScanningConfiguration, (value) => value.toMap()),
      'imageTestsConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineImageTestsConfiguration, Map<String, dynamic>>(imageTestsConfiguration, (value) => value.toMap()),
      'infrastructureConfigurationArn': ?infrastructureConfigurationArn,
      'loggingConfiguration': ?pulumi.Input.mapOptionalInputValue<ImagePipelineLoggingConfiguration, Map<String, dynamic>>(loggingConfiguration, (value) => value.toMap()),
      'name': ?name,
      'platform': ?platform,
      'region': ?region,
      'schedule': ?pulumi.Input.mapOptionalInputValue<ImagePipelineSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'workflows': ?pulumi.Input.mapOptionalInputValue<List<ImagePipelineWorkflow>, List<Map<String, dynamic>>>(workflows, (value) => pulumi.Input.encodeList<ImagePipelineWorkflow, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ImagePipelineState.fromMap(Map<String, dynamic> map) {
    return ImagePipelineState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      containerRecipeArn: map['containerRecipeArn'] == null ? null : ((map['containerRecipeArn'] as String).input()).input(),
      dateCreated: map['dateCreated'] == null ? null : ((map['dateCreated'] as String).input()).input(),
      dateLastRun: map['dateLastRun'] == null ? null : ((map['dateLastRun'] as String).input()).input(),
      dateNextRun: map['dateNextRun'] == null ? null : ((map['dateNextRun'] as String).input()).input(),
      dateUpdated: map['dateUpdated'] == null ? null : ((map['dateUpdated'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      distributionConfigurationArn: map['distributionConfigurationArn'] == null ? null : ((map['distributionConfigurationArn'] as String).input()).input(),
      enhancedImageMetadataEnabled: map['enhancedImageMetadataEnabled'] == null ? null : ((map['enhancedImageMetadataEnabled'] as bool).input()).input(),
      executionRole: map['executionRole'] == null ? null : ((map['executionRole'] as String).input()).input(),
      imageRecipeArn: map['imageRecipeArn'] == null ? null : ((map['imageRecipeArn'] as String).input()).input(),
      imageScanningConfiguration: map['imageScanningConfiguration'] == null ? null : ((ImagePipelineImageScanningConfiguration.fromMap((map['imageScanningConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      imageTestsConfiguration: map['imageTestsConfiguration'] == null ? null : ((ImagePipelineImageTestsConfiguration.fromMap((map['imageTestsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      infrastructureConfigurationArn: map['infrastructureConfigurationArn'] == null ? null : ((map['infrastructureConfigurationArn'] as String).input()).input(),
      loggingConfiguration: map['loggingConfiguration'] == null ? null : ((ImagePipelineLoggingConfiguration.fromMap((map['loggingConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      platform: map['platform'] == null ? null : ((map['platform'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      schedule: map['schedule'] == null ? null : ((ImagePipelineSchedule.fromMap((map['schedule']! as Map).cast<String, dynamic>())).input()).input(),
      status: map['status'] == null ? null : ((map['status'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      workflows: map['workflows'] == null ? null : ((pulumi.Input.decodeList<ImagePipelineWorkflow>(map['workflows']!, (value) => ImagePipelineWorkflow.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
    );
  }
}

