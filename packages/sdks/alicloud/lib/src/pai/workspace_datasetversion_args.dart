// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_datasetversion_label.dart';

/// {@template pulumi_pai_workspace_datasetversion_workspace_datasetversion_args_doc}
/// The set of arguments for WorkspaceDatasetversion.
/// {@endtemplate}
/// {@macro pulumi_pai_workspace_datasetversion_workspace_datasetversion_args_doc}
class WorkspaceDatasetversionArgs {
  /// Data count.
  final pulumi.Input<int>? dataCount;
  /// Data size.
  final pulumi.Input<int>? dataSize;
  /// The data source type. The following values are supported:
  /// - OSS: Alibaba Cloud Object Storage (OSS).
  /// - NAS: Alibaba cloud file storage (NAS).
  final pulumi.Input<String> dataSourceType;
  /// The first ID of the resource
  final pulumi.Input<String> datasetId;
  /// Description of dataset version.
  final pulumi.Input<String>? description;
  /// The tag of the resource See `labels` below.
  final pulumi.Input<List<WorkspaceDatasetversionLabel>>? labels;
  /// The extended field, which is of the JsonString type.
  ///
  /// When DLC uses a dataset, you can specify the default Mount path for the dataset by configuring the mountPath field.
  final pulumi.Input<String>? options;
  /// The properties of the dataset. The following values are supported:
  /// - FILE: FILE.
  /// - DIRECTORY: folder.
  final pulumi.Input<String> property;
  /// The data source ID.
  final pulumi.Input<String>? sourceId;
  /// The data source type. The default value is USER.
  final pulumi.Input<String>? sourceType;
  /// The Uri configuration sample is as follows:
  /// - The data source type is OSS:'oss:// bucket.endpoint/object'
  /// - The data source type is NAS:
  ///
  /// The general NAS format is: 'nas://.region/subpath/to/dir/';
  ///
  /// CPFS1.0:'nas://.region/subpath/to/dir /';
  ///
  /// CPFS2.0:'nas://.region//'.
  ///
  /// CPFS1.0 and CPFS2.0 are distinguished by the format of fsid: CPFS1.0 is cpfs-;CPFS2.0 is cpfs-.
  final pulumi.Input<String> uri;

  /// Creates a new [WorkspaceDatasetversionArgs].
  /// [dataCount] Data count.
  /// [dataSize] Data size.
  /// [dataSourceType] The data source type. The following values are supported:
  /// [datasetId] The first ID of the resource
  /// [description] Description of dataset version.
  /// [labels] The tag of the resource See `labels` below.
  /// [options] The extended field, which is of the JsonString type.
  /// [property] The properties of the dataset. The following values are supported:
  /// [sourceId] The data source ID.
  /// [sourceType] The data source type. The default value is USER.
  /// [uri] The Uri configuration sample is as follows:
  WorkspaceDatasetversionArgs({
    this.dataCount,
    this.dataSize,
    required this.dataSourceType,
    required this.datasetId,
    this.description,
    this.labels,
    this.options,
    required this.property,
    this.sourceId,
    this.sourceType,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCount': ?dataCount,
      'dataSize': ?dataSize,
      'dataSourceType': dataSourceType,
      'datasetId': datasetId,
      'description': ?description,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceDatasetversionLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<WorkspaceDatasetversionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?options,
      'property': property,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
      'uri': uri,
    };
  }

  factory WorkspaceDatasetversionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetversionArgs(
      dataCount: map['dataCount'] == null ? null : (map['dataCount'] as int).input(),
      dataSize: map['dataSize'] == null ? null : (map['dataSize'] as int).input(),
      dataSourceType: (map['dataSourceType'] as String).input(),
      datasetId: (map['datasetId'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : (pulumi.Input.decodeList<WorkspaceDatasetversionLabel>(map['labels'], (value) => WorkspaceDatasetversionLabel.fromMap((value as Map).cast<String, dynamic>()))).input(),
      options: map['options'] == null ? null : (map['options'] as String).input(),
      property: (map['property'] as String).input(),
      sourceId: map['sourceId'] == null ? null : (map['sourceId'] as String).input(),
      sourceType: map['sourceType'] == null ? null : (map['sourceType'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}

