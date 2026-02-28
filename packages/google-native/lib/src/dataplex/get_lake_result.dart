// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_dataplex_v1_asset_status_response.dart';
import 'google_cloud_dataplex_v1_lake_metastore_response.dart';
import 'google_cloud_dataplex_v1_lake_metastore_status_response.dart';

/// Result data returned by getLake.
class GetLakeResult {
  /// Aggregated status of the underlying assets of the lake.
  final GoogleCloudDataplexV1AssetStatusResponse assetStatus;

  /// The time when the lake was created.
  final String createTime;

  /// Optional. Description of the lake.
  final String description;

  /// Optional. User friendly display name.
  final String displayName;

  /// Optional. User-defined labels for the lake.
  final Map<String, String> labels;

  /// Optional. Settings to manage lake and Dataproc Metastore service instance association.
  final GoogleCloudDataplexV1LakeMetastoreResponse metastore;

  /// Metastore status of the lake.
  final GoogleCloudDataplexV1LakeMetastoreStatusResponse metastoreStatus;

  /// The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  final String name;

  /// Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  final String serviceAccount;

  /// Current state of the lake.
  final String state;

  /// System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  final String uid;

  /// The time when the lake was last updated.
  final String updateTime;

  /// Creates a new [GetLakeResult].
  /// [assetStatus] Aggregated status of the underlying assets of the lake.
  /// [createTime] The time when the lake was created.
  /// [description] Optional. Description of the lake.
  /// [displayName] Optional. User friendly display name.
  /// [labels] Optional. User-defined labels for the lake.
  /// [metastore] Optional. Settings to manage lake and Dataproc Metastore service instance association.
  /// [metastoreStatus] Metastore status of the lake.
  /// [name] The relative resource name of the lake, of the form: projects/{project_number}/locations/{location_id}/lakes/{lake_id}.
  /// [serviceAccount] Service account associated with this lake. This service account must be authorized to access or operate on resources managed by the lake.
  /// [state] Current state of the lake.
  /// [uid] System generated globally unique ID for the lake. This ID will be different if the lake is deleted and re-created with the same name.
  /// [updateTime] The time when the lake was last updated.
  GetLakeResult({
    required this.assetStatus,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.metastore,
    required this.metastoreStatus,
    required this.name,
    required this.serviceAccount,
    required this.state,
    required this.uid,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['assetStatus'] = assetStatus.toMap();
    map['createTime'] = createTime;
    map['description'] = description;
    map['displayName'] = displayName;
    map['labels'] = labels;
    map['metastore'] = metastore.toMap();
    map['metastoreStatus'] = metastoreStatus.toMap();
    map['name'] = name;
    map['serviceAccount'] = serviceAccount;
    map['state'] = state;
    map['uid'] = uid;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetLakeResult.fromMap(Map<String, dynamic> map) {
    return GetLakeResult(
      assetStatus: GoogleCloudDataplexV1AssetStatusResponse.fromMap(
          (map['assetStatus'] as Map).cast<String, dynamic>()),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      metastore: GoogleCloudDataplexV1LakeMetastoreResponse.fromMap(
          (map['metastore'] as Map).cast<String, dynamic>()),
      metastoreStatus: GoogleCloudDataplexV1LakeMetastoreStatusResponse.fromMap(
          (map['metastoreStatus'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      serviceAccount: map['serviceAccount'] as String,
      state: map['state'] as String,
      uid: map['uid'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
