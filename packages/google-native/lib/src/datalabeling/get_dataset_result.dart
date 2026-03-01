// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_datalabeling_v1beta1_input_config_response.dart';

/// Result data returned by getDataset.
class GetDatasetResult {
  /// The names of any related resources that are blocking changes to the dataset.
  final List<String> blockingResources;

  /// Time the dataset is created.
  final String createTime;

  /// The number of data items in the dataset.
  final String dataItemCount;

  /// Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  final String description;

  /// The display name of the dataset. Maximum of 64 characters.
  final String displayName;

  /// This is populated with the original input configs where ImportData is called. It is available only after the clients import data to this dataset.
  final List<GoogleCloudDatalabelingV1beta1InputConfigResponse> inputConfigs;

  /// Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  final String lastMigrateTime;

  /// Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id}
  final String name;

  /// Creates a new [GetDatasetResult].
  /// [blockingResources] The names of any related resources that are blocking changes to the dataset.
  /// [createTime] Time the dataset is created.
  /// [dataItemCount] The number of data items in the dataset.
  /// [description] Optional. User-provided description of the annotation specification set. The description can be up to 10000 characters long.
  /// [displayName] The display name of the dataset. Maximum of 64 characters.
  /// [inputConfigs] This is populated with the original input configs where ImportData is called. It is available only after the clients import data to this dataset.
  /// [lastMigrateTime] Last time that the Dataset is migrated to AI Platform V2. If any of the AnnotatedDataset is migrated, the last_migration_time in Dataset is also updated.
  /// [name] Dataset resource name, format is: projects/{project_id}/datasets/{dataset_id}
  GetDatasetResult({
    required this.blockingResources,
    required this.createTime,
    required this.dataItemCount,
    required this.description,
    required this.displayName,
    required this.inputConfigs,
    required this.lastMigrateTime,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockingResources': blockingResources,
      'createTime': createTime,
      'dataItemCount': dataItemCount,
      'description': description,
      'displayName': displayName,
      'inputConfigs':
          pulumi.Input.encodeList<
            GoogleCloudDatalabelingV1beta1InputConfigResponse,
            Map<String, dynamic>
          >(inputConfigs, (value) => value.toMap()),
      'lastMigrateTime': lastMigrateTime,
      'name': name,
    };
  }

  factory GetDatasetResult.fromMap(Map<String, dynamic> map) {
    return GetDatasetResult(
      blockingResources: (map['blockingResources'] as List).cast<String>(),
      createTime: map['createTime'] as String,
      dataItemCount: map['dataItemCount'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      inputConfigs:
          pulumi.Input.decodeList<
            GoogleCloudDatalabelingV1beta1InputConfigResponse
          >(
            map['inputConfigs'],
            (value) =>
                GoogleCloudDatalabelingV1beta1InputConfigResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      lastMigrateTime: map['lastMigrateTime'] as String,
      name: map['name'] as String,
    );
  }
}
