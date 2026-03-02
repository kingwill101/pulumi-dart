// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dataset_response_latest.dart';
import 'dataset_state_response.dart';

/// Machine Learning dataset object.
class DatasetResponse {
  /// The dataset creation time (UTC).
  final pulumi.Input<String> createdTime;
  /// Unique Dataset identifier.
  final pulumi.Input<String> datasetId;
  /// Dataset state
  final pulumi.Input<DatasetStateResponse>? datasetState;
  /// Dataset Type.
  final pulumi.Input<String> datasetType;
  /// Name of the default compute to be used for any Dataset actions (such as Profile, Write).
  final pulumi.Input<String> defaultCompute;
  /// Description about this dataset version.
  final pulumi.Input<String> description;
  /// eTag description
  final pulumi.Input<String> etag;
  /// Flag to hide Dataset in UI
  final pulumi.Input<bool> isVisible;
  /// Last created Dataset definition.
  final pulumi.Input<DatasetResponseLatest>? latest;
  /// The dataset last modified time (UTC).
  final pulumi.Input<String> modifiedTime;
  /// Unique dataset name
  final pulumi.Input<String> name;
  /// Tags for this dataset version.
  final pulumi.Input<Map<String, String>> tags;

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
      'datasetState': ?pulumi.Input.mapOptionalInputValue<DatasetStateResponse, Map<String, dynamic>>(datasetState, (value) => value.toMap()),
      'datasetType': datasetType,
      'defaultCompute': defaultCompute,
      'description': description,
      'etag': etag,
      'isVisible': isVisible,
      'latest': ?pulumi.Input.mapOptionalInputValue<DatasetResponseLatest, Map<String, dynamic>>(latest, (value) => value.toMap()),
      'modifiedTime': modifiedTime,
      'name': name,
      'tags': tags,
    };
  }

  factory DatasetResponse.fromMap(Map<String, dynamic> map) {
    return DatasetResponse(
      createdTime: (map['createdTime'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      datasetState: map['datasetState'] == null ? null : (DatasetStateResponse.fromMap((map['datasetState'] as Map).cast<String, dynamic>())).input(),
      datasetType: (map['datasetType'] as String).input(),
      defaultCompute: (map['defaultCompute'] as String).input(),
      description: (map['description'] as String).input(),
      etag: (map['etag'] as String).input(),
      isVisible: (map['isVisible'] as bool).input(),
      latest: map['latest'] == null ? null : (DatasetResponseLatest.fromMap((map['latest'] as Map).cast<String, dynamic>())).input(),
      modifiedTime: (map['modifiedTime'] as String).input(),
      name: (map['name'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

