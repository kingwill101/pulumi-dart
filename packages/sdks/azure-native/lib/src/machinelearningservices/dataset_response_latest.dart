// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_data_path.dart';
import 'dataset_state_response.dart';
import 'user_info_response.dart';

/// Last created Dataset definition.
class DatasetResponseLatest {
  /// User who created.
  final pulumi.Input<UserInfoResponse>? createdBy;
  /// The dataset creation time (UTC).
  final pulumi.Input<String> createdTime;
  /// Datastore and reference to location of data such as relativePath, Sql Query and etc.
  final pulumi.Input<DatasetResponseDataPath>? dataPath;
  /// Dataflow Json
  final pulumi.Input<String> dataflow;
  /// Dataset state
  final pulumi.Input<DatasetStateResponse>? datasetDefinitionState;
  /// Unique Dataset identifier.
  final pulumi.Input<String> datasetId;
  /// Description about the dataset.
  final pulumi.Input<String> description;
  /// eTag description
  final pulumi.Input<String> etag;
  /// Dataset FileType, specified by user.
  final pulumi.Input<String> fileType;
  /// The dataset last modified time (UTC).
  final pulumi.Input<String> modifiedTime;
  /// Summary of Definition changes.
  final pulumi.Input<String> notes;
  /// Indicates how the source data is partitioned. This is defined to filter on a range of partitioned data before performing actions or materialization.
  final pulumi.Input<bool> partitionFormatInPath;
  /// Properties stores information like name of time series column for time series dataset.
  final pulumi.Input<Map<String, dynamic>>? properties;
  /// Indicates the saved dataset this definition is mapping to, populated on Get.
  final pulumi.Input<String> savedDatasetId;
  /// Tags associated with the dataset.
  final pulumi.Input<Map<String, String>> tags;
  /// Telemetry information about the dataset including information like which service the dataset was created from.
  final pulumi.Input<Map<String, String>> telemetryInfo;
  /// Whether to use description and tags from the definition level as opposed to dataset level (old behavior).
  final pulumi.Input<bool> useDescriptionTagsFromDefinition;
  /// An identifier uniquely identifies a definition change.
  final pulumi.Input<String> versionId;

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
  const DatasetResponseLatest({
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
      'createdBy': ?pulumi.Input.mapOptionalInputValue<UserInfoResponse, Map<String, dynamic>>(createdBy, (value) => value.toMap()),
      'createdTime': createdTime,
      'dataPath': ?pulumi.Input.mapOptionalInputValue<DatasetResponseDataPath, Map<String, dynamic>>(dataPath, (value) => value.toMap()),
      'dataflow': dataflow,
      'datasetDefinitionState': ?pulumi.Input.mapOptionalInputValue<DatasetStateResponse, Map<String, dynamic>>(datasetDefinitionState, (value) => value.toMap()),
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
      createdBy: (() { final guardedValue = map['createdBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfoResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createdTime: pulumi.Input.fromValue(map['createdTime'] as String),
      dataPath: (() { final guardedValue = map['dataPath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetResponseDataPath.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dataflow: pulumi.Input.fromValue(map['dataflow'] as String),
      datasetDefinitionState: (() { final guardedValue = map['datasetDefinitionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DatasetStateResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      datasetId: pulumi.Input.fromValue(map['datasetId'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      etag: pulumi.Input.fromValue(map['etag'] as String),
      fileType: pulumi.Input.fromValue(map['fileType'] as String),
      modifiedTime: pulumi.Input.fromValue(map['modifiedTime'] as String),
      notes: pulumi.Input.fromValue(map['notes'] as String),
      partitionFormatInPath: pulumi.Input.fromValue(map['partitionFormatInPath'] as bool),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      savedDatasetId: pulumi.Input.fromValue(map['savedDatasetId'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      telemetryInfo: pulumi.Input.fromValue((map['telemetryInfo'] as Map).cast<String, String>()),
      useDescriptionTagsFromDefinition: pulumi.Input.fromValue(map['useDescriptionTagsFromDefinition'] as bool),
      versionId: pulumi.Input.fromValue(map['versionId'] as String),
    );
  }
}

