import 'package:pulumi/pulumi.dart' as pulumi;
import '../insights_dataset_config_exclude_cloud_storage_buckets/insights_dataset_config_exclude_cloud_storage_buckets.dart';
import '../insights_dataset_config_exclude_cloud_storage_locations/insights_dataset_config_exclude_cloud_storage_locations.dart';
import '../insights_dataset_config_identity/insights_dataset_config_identity.dart';
import '../insights_dataset_config_include_cloud_storage_buckets/insights_dataset_config_include_cloud_storage_buckets.dart';
import '../insights_dataset_config_include_cloud_storage_locations/insights_dataset_config_include_cloud_storage_locations.dart';
import '../insights_dataset_config_link/insights_dataset_config_link.dart';
import '../insights_dataset_config_source_folders/insights_dataset_config_source_folders.dart';
import '../insights_dataset_config_source_projects/insights_dataset_config_source_projects.dart';
import 'insights_dataset_config_args.dart';

/// Represents a Storage Insights DatasetConfig.
///
///
/// To get more information about DatasetConfig, see:
///
/// * [API documentation](https://cloud.google.com/storage/docs/insights/reference/rest/v1/projects.locations.datasetConfigs)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/storage/docs/insights/datasets)
///
/// ## Example Usage
///
/// ### Storage Insights Dataset Config Includes
///
///
///
/// ### Storage Insights Dataset Config Excludes
///
///
///
///
/// ## Import
///
/// DatasetConfig can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datasetConfigs/{{dataset_config_id}}`
///
/// * `{{project}}/{{location}}/{{dataset_config_id}}`
///
/// * `{{location}}/{{dataset_config_id}}`
///
/// When using the `pulumi import` command, DatasetConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default projects/{{project}}/locations/{{location}}/datasetConfigs/{{dataset_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default {{project}}/{{location}}/{{dataset_config_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:storage/insightsDatasetConfig:InsightsDatasetConfig default {{location}}/{{dataset_config_id}}
/// ```
class InsightsDatasetConfig extends pulumi.CustomResource {
  /// Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  late final pulumi.Output<int> activityDataRetentionPeriodDays;

  /// The UTC time at which the DatasetConfig was created. This is auto-populated.
  late final pulumi.Output<String> createTime;

  /// The user-defined ID of the DatasetConfig
  late final pulumi.Output<String> datasetConfigId;

  /// State of the DatasetConfig.
  late final pulumi.Output<String> datasetConfigState;

  /// An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  late final pulumi.Output<String?> description;

  /// Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigExcludeCloudStorageBuckets?>
      excludeCloudStorageBuckets;

  /// Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigExcludeCloudStorageLocations?>
      excludeCloudStorageLocations;

  /// Identity used by DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIdentity> identity;

  /// Defines the options for including cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIncludeCloudStorageBuckets?>
      includeCloudStorageBuckets;

  /// Defines the options for including cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigIncludeCloudStorageLocations?>
      includeCloudStorageLocations;

  /// If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  late final pulumi.Output<bool?> includeNewlyCreatedBuckets;
  late final pulumi.Output<bool?> linkDataset;

  /// Details of the linked DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<List<InsightsDatasetConfigLink>> links;

  /// The location of the DatasetConfig.
  late final pulumi.Output<String> location;

  /// The full canonical resource name of the DatasetConfig (e.g., projects/P/locations/L/datasetConfigs/ID).
  late final pulumi.Output<String> name;

  /// Organization resource ID that the source projects should belong to.
  /// Projects that do not belong to the provided organization are not considered when creating the dataset.
  late final pulumi.Output<String> organizationNumber;

  /// Defines the options for providing a source organization for the DatasetConfig.
  late final pulumi.Output<bool?> organizationScope;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Number of days of history that must be retained.
  late final pulumi.Output<int> retentionPeriodDays;

  /// Defines the options for providing source folders for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigSourceFolders?> sourceFolders;

  /// Defines the options for providing source projects for the DatasetConfig.
  /// Structure is documented below.
  late final pulumi.Output<InsightsDatasetConfigSourceProjects?> sourceProjects;

  /// System generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// The UTC time at which the DatasetConfig was updated. This is auto-populated.
  late final pulumi.Output<String> updateTime;

  InsightsDatasetConfig(
    String name, {
    InsightsDatasetConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:storage/insightsDatasetConfig:InsightsDatasetConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activityDataRetentionPeriodDays =
        registerOutput<int>('activityDataRetentionPeriodDays');
    this.createTime = registerOutput<String>('createTime');
    this.datasetConfigId = registerOutput<String>('datasetConfigId');
    this.datasetConfigState = registerOutput<String>('datasetConfigState');
    this.description = registerOutput<String?>('description');
    this.excludeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageBuckets?>(
            'excludeCloudStorageBuckets');
    this.excludeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigExcludeCloudStorageLocations?>(
            'excludeCloudStorageLocations');
    this.identity = registerOutput<InsightsDatasetConfigIdentity>('identity');
    this.includeCloudStorageBuckets =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageBuckets?>(
            'includeCloudStorageBuckets');
    this.includeCloudStorageLocations =
        registerOutput<InsightsDatasetConfigIncludeCloudStorageLocations?>(
            'includeCloudStorageLocations');
    this.includeNewlyCreatedBuckets =
        registerOutput<bool?>('includeNewlyCreatedBuckets');
    this.linkDataset = registerOutput<bool?>('linkDataset');
    this.links = registerOutput<List<InsightsDatasetConfigLink>>('links');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.organizationNumber = registerOutput<String>('organizationNumber');
    this.organizationScope = registerOutput<bool?>('organizationScope');
    this.project = registerOutput<String>('project');
    this.retentionPeriodDays = registerOutput<int>('retentionPeriodDays');
    this.sourceFolders =
        registerOutput<InsightsDatasetConfigSourceFolders?>('sourceFolders');
    this.sourceProjects =
        registerOutput<InsightsDatasetConfigSourceProjects?>('sourceProjects');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
