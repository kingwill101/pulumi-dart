// ignore_for_file: unused_element, unnecessary_cast

import 'dataset_response_data_path.dart';
import 'dataset_state_response.dart';
import 'user_info_response.dart';

/// Last created Dataset definition.
class DatasetResponseLatest {
  /// User who created.
  final UserInfoResponse? createdBy;
  /// The dataset creation time (UTC).
  final String createdTime;
  /// Datastore and reference to location of data such as relativePath, Sql Query and etc.
  final DatasetResponseDataPath? dataPath;
  /// Dataflow Json
  final String dataflow;
  /// Dataset state
  final DatasetStateResponse? datasetDefinitionState;
  /// Unique Dataset identifier.
  final String datasetId;
  /// Description about the dataset.
  final String description;
  /// eTag description
  final String etag;
  /// Dataset FileType, specified by user.
  final String fileType;
  /// The dataset last modified time (UTC).
  final String modifiedTime;
  /// Summary of Definition changes.
  final String notes;
  /// Indicates how the source data is partitioned. This is defined to filter on a range of partitioned data before performing actions or materialization.
  final bool partitionFormatInPath;
  /// Properties stores information like name of time series column for time series dataset.
  final Map<String, dynamic>? properties;
  /// Indicates the saved dataset this definition is mapping to, populated on Get.
  final String savedDatasetId;
  /// Tags associated with the dataset.
  final Map<String, String> tags;
  /// Telemetry information about the dataset including information like which service the dataset was created from.
  final Map<String, String> telemetryInfo;
  /// Whether to use description and tags from the definition level as opposed to dataset level (old behavior).
  final bool useDescriptionTagsFromDefinition;
  /// An identifier uniquely identifies a definition change.
  final String versionId;

  /// Creates a new [DatasetResponseLatest].
  /// [createdBy] User who created.
  /// [createdTime] The dataset creation time (UTC).
  /// [dataPath] Datastore and reference to location of data such as relativePath, Sql Query and etc.
  /// [dataflow] Dataflow Json
  /// [datasetDefinitionState] Dataset state
  /// [datasetId] Unique Dataset identifier.
  /// [description] Description about the dataset.
  /// [etag] eTag description
  /// [fileType] Dataset FileType, specified by user.
  /// [modifiedTime] The dataset last modified time (UTC).
  /// [notes] Summary of Definition changes.
  /// [partitionFormatInPath] Indicates how the source data is partitioned. This is defined to filter on a range of partitioned data before performing actions or materialization.
  /// [properties] Properties stores information like name of time series column for time series dataset.
  /// [savedDatasetId] Indicates the saved dataset this definition is mapping to, populated on Get.
  /// [tags] Tags associated with the dataset.
  /// [telemetryInfo] Telemetry information about the dataset including information like which service the dataset was created from.
  /// [useDescriptionTagsFromDefinition] Whether to use description and tags from the definition level as opposed to dataset level (old behavior).
  /// [versionId] An identifier uniquely identifies a definition change.
  DatasetResponseLatest({
    this.createdBy,
    required this.createdTime,
    this.dataPath,
    required this.dataflow,
    this.datasetDefinitionState,
    required this.datasetId,
    required this.description,
    required this.etag,
    required this.fileType,
    required this.modifiedTime,
    required this.notes,
    required this.partitionFormatInPath,
    this.properties,
    required this.savedDatasetId,
    required this.tags,
    required this.telemetryInfo,
    required this.useDescriptionTagsFromDefinition,
    required this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdBy': ?createdBy == null ? null : createdBy!.toMap(),
      'createdTime': createdTime,
      'dataPath': ?dataPath == null ? null : dataPath!.toMap(),
      'dataflow': dataflow,
      'datasetDefinitionState': ?datasetDefinitionState == null ? null : datasetDefinitionState!.toMap(),
      'datasetId': datasetId,
      'description': description,
      'etag': etag,
      'fileType': fileType,
      'modifiedTime': modifiedTime,
      'notes': notes,
      'partitionFormatInPath': partitionFormatInPath,
      'properties': ?properties,
      'savedDatasetId': savedDatasetId,
      'tags': tags,
      'telemetryInfo': telemetryInfo,
      'useDescriptionTagsFromDefinition': useDescriptionTagsFromDefinition,
      'versionId': versionId,
    };
  }

  factory DatasetResponseLatest.fromMap(Map<String, dynamic> map) {
    return DatasetResponseLatest(
      createdBy: map['createdBy'] == null ? null : UserInfoResponse.fromMap((map['createdBy'] as Map).cast<String, dynamic>()),
      createdTime: map['createdTime'] as String,
      dataPath: map['dataPath'] == null ? null : DatasetResponseDataPath.fromMap((map['dataPath'] as Map).cast<String, dynamic>()),
      dataflow: map['dataflow'] as String,
      datasetDefinitionState: map['datasetDefinitionState'] == null ? null : DatasetStateResponse.fromMap((map['datasetDefinitionState'] as Map).cast<String, dynamic>()),
      datasetId: map['datasetId'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      fileType: map['fileType'] as String,
      modifiedTime: map['modifiedTime'] as String,
      notes: map['notes'] as String,
      partitionFormatInPath: map['partitionFormatInPath'] as bool,
      properties: map['properties'] == null ? null : (map['properties'] as Map).cast<String, dynamic>(),
      savedDatasetId: map['savedDatasetId'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      telemetryInfo: (map['telemetryInfo'] as Map).cast<String, String>(),
      useDescriptionTagsFromDefinition: map['useDescriptionTagsFromDefinition'] as bool,
      versionId: map['versionId'] as String,
    );
  }
}

