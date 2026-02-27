// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../insights_dataset_config_exclude_cloud_storage_buckets/insights_dataset_config_exclude_cloud_storage_buckets.dart';
import '../insights_dataset_config_exclude_cloud_storage_locations/insights_dataset_config_exclude_cloud_storage_locations.dart';
import '../insights_dataset_config_identity/insights_dataset_config_identity.dart';
import '../insights_dataset_config_include_cloud_storage_buckets/insights_dataset_config_include_cloud_storage_buckets.dart';
import '../insights_dataset_config_include_cloud_storage_locations/insights_dataset_config_include_cloud_storage_locations.dart';
import '../insights_dataset_config_source_folders/insights_dataset_config_source_folders.dart';
import '../insights_dataset_config_source_projects/insights_dataset_config_source_projects.dart';

/// The set of arguments for InsightsDatasetConfig.
class InsightsDatasetConfigArgs {
  /// Number of days of activity data that must be retained. If not specified, retentionPeriodDays will be used. Set to 0 to turn off the activity data.
  final pulumi.Input<int>? activityDataRetentionPeriodDays;

  /// The user-defined ID of the DatasetConfig
  final pulumi.Input<String> datasetConfigId;

  /// An optional user-provided description for the dataset configuration with a maximum length of 256 characters.
  final pulumi.Input<String>? description;

  /// Defined the options for excluding cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigExcludeCloudStorageBuckets>?
      excludeCloudStorageBuckets;

  /// Defines the options for excluding cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigExcludeCloudStorageLocations>?
      excludeCloudStorageLocations;

  /// Identity used by DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIdentity> identity;

  /// Defines the options for including cloud storage buckets for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageBuckets>?
      includeCloudStorageBuckets;

  /// Defines the options for including cloud storage locations for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigIncludeCloudStorageLocations>?
      includeCloudStorageLocations;

  /// If set to true, the request includes all the newly created buckets in the dataset that meet the inclusion and exclusion rules.
  final pulumi.Input<bool>? includeNewlyCreatedBuckets;
  final pulumi.Input<bool>? linkDataset;

  /// The location of the DatasetConfig.
  final pulumi.Input<String> location;

  /// Organization resource ID that the source projects should belong to.
  /// Projects that do not belong to the provided organization are not considered when creating the dataset.
  final pulumi.Input<String>? organizationNumber;

  /// Defines the options for providing a source organization for the DatasetConfig.
  final pulumi.Input<bool>? organizationScope;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Number of days of history that must be retained.
  final pulumi.Input<int> retentionPeriodDays;

  /// Defines the options for providing source folders for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceFolders>? sourceFolders;

  /// Defines the options for providing source projects for the DatasetConfig.
  /// Structure is documented below.
  final pulumi.Input<InsightsDatasetConfigSourceProjects>? sourceProjects;

  InsightsDatasetConfigArgs({
    this.activityDataRetentionPeriodDays,
    required this.datasetConfigId,
    this.description,
    this.excludeCloudStorageBuckets,
    this.excludeCloudStorageLocations,
    required this.identity,
    this.includeCloudStorageBuckets,
    this.includeCloudStorageLocations,
    this.includeNewlyCreatedBuckets,
    this.linkDataset,
    required this.location,
    this.organizationNumber,
    this.organizationScope,
    this.project,
    required this.retentionPeriodDays,
    this.sourceFolders,
    this.sourceProjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final activityDataRetentionPeriodDaysValue =
        activityDataRetentionPeriodDays;
    if (activityDataRetentionPeriodDaysValue != null) {
      map['activityDataRetentionPeriodDays'] =
          activityDataRetentionPeriodDaysValue;
    }
    map['datasetConfigId'] = datasetConfigId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final excludeCloudStorageBucketsValue = excludeCloudStorageBuckets;
    if (excludeCloudStorageBucketsValue != null) {
      map['excludeCloudStorageBuckets'] = pulumi.Input.mapOptionalInputValue<
              InsightsDatasetConfigExcludeCloudStorageBuckets,
              Map<String, dynamic>>(
          excludeCloudStorageBucketsValue, (value) => value.toMap());
    }
    final excludeCloudStorageLocationsValue = excludeCloudStorageLocations;
    if (excludeCloudStorageLocationsValue != null) {
      map['excludeCloudStorageLocations'] = pulumi.Input.mapOptionalInputValue<
              InsightsDatasetConfigExcludeCloudStorageLocations,
              Map<String, dynamic>>(
          excludeCloudStorageLocationsValue, (value) => value.toMap());
    }
    map['identity'] = pulumi.Input.mapInputValue<InsightsDatasetConfigIdentity,
        Map<String, dynamic>>(identity, (value) => value.toMap());
    final includeCloudStorageBucketsValue = includeCloudStorageBuckets;
    if (includeCloudStorageBucketsValue != null) {
      map['includeCloudStorageBuckets'] = pulumi.Input.mapOptionalInputValue<
              InsightsDatasetConfigIncludeCloudStorageBuckets,
              Map<String, dynamic>>(
          includeCloudStorageBucketsValue, (value) => value.toMap());
    }
    final includeCloudStorageLocationsValue = includeCloudStorageLocations;
    if (includeCloudStorageLocationsValue != null) {
      map['includeCloudStorageLocations'] = pulumi.Input.mapOptionalInputValue<
              InsightsDatasetConfigIncludeCloudStorageLocations,
              Map<String, dynamic>>(
          includeCloudStorageLocationsValue, (value) => value.toMap());
    }
    final includeNewlyCreatedBucketsValue = includeNewlyCreatedBuckets;
    if (includeNewlyCreatedBucketsValue != null) {
      map['includeNewlyCreatedBuckets'] = includeNewlyCreatedBucketsValue;
    }
    final linkDatasetValue = linkDataset;
    if (linkDatasetValue != null) {
      map['linkDataset'] = linkDatasetValue;
    }
    map['location'] = location;
    final organizationNumberValue = organizationNumber;
    if (organizationNumberValue != null) {
      map['organizationNumber'] = organizationNumberValue;
    }
    final organizationScopeValue = organizationScope;
    if (organizationScopeValue != null) {
      map['organizationScope'] = organizationScopeValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['retentionPeriodDays'] = retentionPeriodDays;
    final sourceFoldersValue = sourceFolders;
    if (sourceFoldersValue != null) {
      map['sourceFolders'] = pulumi.Input.mapOptionalInputValue<
          InsightsDatasetConfigSourceFolders,
          Map<String, dynamic>>(sourceFoldersValue, (value) => value.toMap());
    }
    final sourceProjectsValue = sourceProjects;
    if (sourceProjectsValue != null) {
      map['sourceProjects'] = pulumi.Input.mapOptionalInputValue<
          InsightsDatasetConfigSourceProjects,
          Map<String, dynamic>>(sourceProjectsValue, (value) => value.toMap());
    }
    return map;
  }

  factory InsightsDatasetConfigArgs.fromMap(Map<String, dynamic> map) {
    return InsightsDatasetConfigArgs(
      activityDataRetentionPeriodDays: pulumi.Input.asOptionalInput<int>(
          map['activityDataRetentionPeriodDays']),
      datasetConfigId: pulumi.Input.asInput<String>(map['datasetConfigId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      excludeCloudStorageBuckets: pulumi.Input.asOptionalInput<
              InsightsDatasetConfigExcludeCloudStorageBuckets>(
          map['excludeCloudStorageBuckets']),
      excludeCloudStorageLocations: pulumi.Input.asOptionalInput<
              InsightsDatasetConfigExcludeCloudStorageLocations>(
          map['excludeCloudStorageLocations']),
      identity:
          pulumi.Input.asInput<InsightsDatasetConfigIdentity>(map['identity']),
      includeCloudStorageBuckets: pulumi.Input.asOptionalInput<
              InsightsDatasetConfigIncludeCloudStorageBuckets>(
          map['includeCloudStorageBuckets']),
      includeCloudStorageLocations: pulumi.Input.asOptionalInput<
              InsightsDatasetConfigIncludeCloudStorageLocations>(
          map['includeCloudStorageLocations']),
      includeNewlyCreatedBuckets:
          pulumi.Input.asOptionalInput<bool>(map['includeNewlyCreatedBuckets']),
      linkDataset: pulumi.Input.asOptionalInput<bool>(map['linkDataset']),
      location: pulumi.Input.asInput<String>(map['location']),
      organizationNumber:
          pulumi.Input.asOptionalInput<String>(map['organizationNumber']),
      organizationScope:
          pulumi.Input.asOptionalInput<bool>(map['organizationScope']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      retentionPeriodDays:
          pulumi.Input.asInput<int>(map['retentionPeriodDays']),
      sourceFolders:
          pulumi.Input.asOptionalInput<InsightsDatasetConfigSourceFolders>(
              map['sourceFolders']),
      sourceProjects:
          pulumi.Input.asOptionalInput<InsightsDatasetConfigSourceProjects>(
              map['sourceProjects']),
    );
  }
}
