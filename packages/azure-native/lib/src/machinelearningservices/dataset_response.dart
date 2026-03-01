// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_response_latest.dart';
import 'dataset_state_response.dart';

/// Machine Learning dataset object.
class DatasetResponse {
  /// The dataset creation time (UTC).
  final String createdTime;
  /// Unique Dataset identifier.
  final String datasetId;
  /// Dataset state
  final DatasetStateResponse? datasetState;
  /// Dataset Type.
  final String datasetType;
  /// Name of the default compute to be used for any Dataset actions (such as Profile, Write).
  final String defaultCompute;
  /// Description about this dataset version.
  final String description;
  /// eTag description
  final String etag;
  /// Flag to hide Dataset in UI
  final bool isVisible;
  /// Last created Dataset definition.
  final DatasetResponseLatest? latest;
  /// The dataset last modified time (UTC).
  final String modifiedTime;
  /// Unique dataset name
  final String name;
  /// Tags for this dataset version.
  final Map<String, String> tags;

  /// Creates a new [DatasetResponse].
  /// [createdTime] The dataset creation time (UTC).
  /// [datasetId] Unique Dataset identifier.
  /// [datasetState] Dataset state
  /// [datasetType] Dataset Type.
  /// [defaultCompute] Name of the default compute to be used for any Dataset actions (such as Profile, Write).
  /// [description] Description about this dataset version.
  /// [etag] eTag description
  /// [isVisible] Flag to hide Dataset in UI
  /// [latest] Last created Dataset definition.
  /// [modifiedTime] The dataset last modified time (UTC).
  /// [name] Unique dataset name
  /// [tags] Tags for this dataset version.
  DatasetResponse({
    required this.createdTime,
    required this.datasetId,
    this.datasetState,
    required this.datasetType,
    required this.defaultCompute,
    required this.description,
    required this.etag,
    required this.isVisible,
    this.latest,
    required this.modifiedTime,
    required this.name,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdTime': createdTime,
      'datasetId': datasetId,
      'datasetState': ?datasetState == null ? null : datasetState!.toMap(),
      'datasetType': datasetType,
      'defaultCompute': defaultCompute,
      'description': description,
      'etag': etag,
      'isVisible': isVisible,
      'latest': ?latest == null ? null : latest!.toMap(),
      'modifiedTime': modifiedTime,
      'name': name,
      'tags': tags,
    };
  }

  factory DatasetResponse.fromMap(Map<String, dynamic> map) {
    return DatasetResponse(
      createdTime: map['createdTime'] as String,
      datasetId: map['datasetId'] as String,
      datasetState: map['datasetState'] == null ? null : DatasetStateResponse.fromMap((map['datasetState'] as Map).cast<String, dynamic>()),
      datasetType: map['datasetType'] as String,
      defaultCompute: map['defaultCompute'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      isVisible: map['isVisible'] as bool,
      latest: map['latest'] == null ? null : DatasetResponseLatest.fromMap((map['latest'] as Map).cast<String, dynamic>()),
      modifiedTime: map['modifiedTime'] as String,
      name: map['name'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

