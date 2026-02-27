// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_insights_dataset_config_exclude_cloud_storage_bucket/get_insights_dataset_config_exclude_cloud_storage_bucket.dart';
import '../get_insights_dataset_config_exclude_cloud_storage_location/get_insights_dataset_config_exclude_cloud_storage_location.dart';
import '../get_insights_dataset_config_identity/get_insights_dataset_config_identity.dart';
import '../get_insights_dataset_config_include_cloud_storage_bucket/get_insights_dataset_config_include_cloud_storage_bucket.dart';
import '../get_insights_dataset_config_include_cloud_storage_location/get_insights_dataset_config_include_cloud_storage_location.dart';
import '../get_insights_dataset_config_link/get_insights_dataset_config_link.dart';
import '../get_insights_dataset_config_source_folder/get_insights_dataset_config_source_folder.dart';
import '../get_insights_dataset_config_source_project/get_insights_dataset_config_source_project.dart';

/// Result data returned by getInsightsDatasetConfig.
class GetInsightsDatasetConfigResult {
  final int activityDataRetentionPeriodDays;
  final String createTime;
  final String datasetConfigId;
  final String datasetConfigState;
  final String description;
  final List<GetInsightsDatasetConfigExcludeCloudStorageBucket>
      excludeCloudStorageBuckets;
  final List<GetInsightsDatasetConfigExcludeCloudStorageLocation>
      excludeCloudStorageLocations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<GetInsightsDatasetConfigIdentity> identities;
  final List<GetInsightsDatasetConfigIncludeCloudStorageBucket>
      includeCloudStorageBuckets;
  final List<GetInsightsDatasetConfigIncludeCloudStorageLocation>
      includeCloudStorageLocations;
  final bool includeNewlyCreatedBuckets;
  final bool linkDataset;
  final List<GetInsightsDatasetConfigLink> links;
  final String location;
  final String name;
  final String organizationNumber;
  final bool organizationScope;
  final String? project;
  final int retentionPeriodDays;
  final List<GetInsightsDatasetConfigSourceFolder> sourceFolders;
  final List<GetInsightsDatasetConfigSourceProject> sourceProjects;
  final String uid;
  final String updateTime;

  GetInsightsDatasetConfigResult({
    required this.activityDataRetentionPeriodDays,
    required this.createTime,
    required this.datasetConfigId,
    required this.datasetConfigState,
    required this.description,
    required this.excludeCloudStorageBuckets,
    required this.excludeCloudStorageLocations,
    required this.id,
    required this.identities,
    required this.includeCloudStorageBuckets,
    required this.includeCloudStorageLocations,
    required this.includeNewlyCreatedBuckets,
    required this.linkDataset,
    required this.links,
    required this.location,
    required this.name,
    required this.organizationNumber,
    required this.organizationScope,
    this.project,
    required this.retentionPeriodDays,
    required this.sourceFolders,
    required this.sourceProjects,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['activityDataRetentionPeriodDays'] = activityDataRetentionPeriodDays;
    map['createTime'] = createTime;
    map['datasetConfigId'] = datasetConfigId;
    map['datasetConfigState'] = datasetConfigState;
    map['description'] = description;
    map['excludeCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetInsightsDatasetConfigExcludeCloudStorageBucket,
            Map<String, dynamic>>(
        excludeCloudStorageBuckets, (value) => value.toMap());
    map['excludeCloudStorageLocations'] = pulumi.Input.encodeList<
            GetInsightsDatasetConfigExcludeCloudStorageLocation,
            Map<String, dynamic>>(
        excludeCloudStorageLocations, (value) => value.toMap());
    map['id'] = id;
    map['identities'] = pulumi.Input.encodeList<
        GetInsightsDatasetConfigIdentity,
        Map<String, dynamic>>(identities, (value) => value.toMap());
    map['includeCloudStorageBuckets'] = pulumi.Input.encodeList<
            GetInsightsDatasetConfigIncludeCloudStorageBucket,
            Map<String, dynamic>>(
        includeCloudStorageBuckets, (value) => value.toMap());
    map['includeCloudStorageLocations'] = pulumi.Input.encodeList<
            GetInsightsDatasetConfigIncludeCloudStorageLocation,
            Map<String, dynamic>>(
        includeCloudStorageLocations, (value) => value.toMap());
    map['includeNewlyCreatedBuckets'] = includeNewlyCreatedBuckets;
    map['linkDataset'] = linkDataset;
    map['links'] = pulumi.Input.encodeList<GetInsightsDatasetConfigLink,
        Map<String, dynamic>>(links, (value) => value.toMap());
    map['location'] = location;
    map['name'] = name;
    map['organizationNumber'] = organizationNumber;
    map['organizationScope'] = organizationScope;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['retentionPeriodDays'] = retentionPeriodDays;
    map['sourceFolders'] = pulumi.Input.encodeList<
        GetInsightsDatasetConfigSourceFolder,
        Map<String, dynamic>>(sourceFolders, (value) => value.toMap());
    map['sourceProjects'] = pulumi.Input.encodeList<
        GetInsightsDatasetConfigSourceProject,
        Map<String, dynamic>>(sourceProjects, (value) => value.toMap());
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetInsightsDatasetConfigResult.fromMap(Map<String, dynamic> map) {
    return GetInsightsDatasetConfigResult(
      activityDataRetentionPeriodDays:
          map['activityDataRetentionPeriodDays'] as int,
      createTime: map['createTime'] as String,
      datasetConfigId: map['datasetConfigId'] as String,
      datasetConfigState: map['datasetConfigState'] as String,
      description: map['description'] as String,
      excludeCloudStorageBuckets: pulumi.Input.decodeList<
              GetInsightsDatasetConfigExcludeCloudStorageBucket>(
          map['excludeCloudStorageBuckets'],
          (value) => GetInsightsDatasetConfigExcludeCloudStorageBucket.fromMap(
              (value as Map).cast<String, dynamic>())),
      excludeCloudStorageLocations: pulumi.Input.decodeList<
              GetInsightsDatasetConfigExcludeCloudStorageLocation>(
          map['excludeCloudStorageLocations'],
          (value) =>
              GetInsightsDatasetConfigExcludeCloudStorageLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      identities: pulumi.Input.decodeList<GetInsightsDatasetConfigIdentity>(
          map['identities'],
          (value) => GetInsightsDatasetConfigIdentity.fromMap(
              (value as Map).cast<String, dynamic>())),
      includeCloudStorageBuckets: pulumi.Input.decodeList<
              GetInsightsDatasetConfigIncludeCloudStorageBucket>(
          map['includeCloudStorageBuckets'],
          (value) => GetInsightsDatasetConfigIncludeCloudStorageBucket.fromMap(
              (value as Map).cast<String, dynamic>())),
      includeCloudStorageLocations: pulumi.Input.decodeList<
              GetInsightsDatasetConfigIncludeCloudStorageLocation>(
          map['includeCloudStorageLocations'],
          (value) =>
              GetInsightsDatasetConfigIncludeCloudStorageLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      includeNewlyCreatedBuckets: map['includeNewlyCreatedBuckets'] as bool,
      linkDataset: map['linkDataset'] as bool,
      links: pulumi.Input.decodeList<GetInsightsDatasetConfigLink>(
          map['links'],
          (value) => GetInsightsDatasetConfigLink.fromMap(
              (value as Map).cast<String, dynamic>())),
      location: map['location'] as String,
      name: map['name'] as String,
      organizationNumber: map['organizationNumber'] as String,
      organizationScope: map['organizationScope'] as bool,
      project: map['project'] == null ? null : map['project'] as String,
      retentionPeriodDays: map['retentionPeriodDays'] as int,
      sourceFolders:
          pulumi.Input.decodeList<GetInsightsDatasetConfigSourceFolder>(
              map['sourceFolders'],
              (value) => GetInsightsDatasetConfigSourceFolder.fromMap(
                  (value as Map).cast<String, dynamic>())),
      sourceProjects:
          pulumi.Input.decodeList<GetInsightsDatasetConfigSourceProject>(
              map['sourceProjects'],
              (value) => GetInsightsDatasetConfigSourceProject.fromMap(
                  (value as Map).cast<String, dynamic>())),
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
