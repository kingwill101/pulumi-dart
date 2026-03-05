// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workspace_datasetversion_label.dart';

/// Input properties used for looking up and filtering WorkspaceDatasetversion resources.
class WorkspaceDatasetversionState {
  /// Update time.
  final pulumi.Input<String>? createTime;
  /// Data count.
  final pulumi.Input<int>? dataCount;
  /// Data size.
  final pulumi.Input<int>? dataSize;
  /// The data source type. The following values are supported:
  /// - OSS: Alibaba Cloud Object Storage (OSS).
  /// - NAS: Alibaba cloud file storage (NAS).
  final pulumi.Input<String>? dataSourceType;
  /// The first ID of the resource
  final pulumi.Input<String>? datasetId;
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
  final pulumi.Input<String>? property;
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
  final pulumi.Input<String>? uri;
  /// The name of the resource
  final pulumi.Input<String>? versionName;

  /// Creates a new [WorkspaceDatasetversionState].
  /// [createTime] Update time.
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
  /// [versionName] The name of the resource
  WorkspaceDatasetversionState({
    this.createTime,
    this.dataCount,
    this.dataSize,
    this.dataSourceType,
    this.datasetId,
    this.description,
    this.labels,
    this.options,
    this.property,
    this.sourceId,
    this.sourceType,
    this.uri,
    this.versionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'dataCount': ?dataCount,
      'dataSize': ?dataSize,
      'dataSourceType': ?dataSourceType,
      'datasetId': ?datasetId,
      'description': ?description,
      'labels': ?pulumi.Input.mapOptionalInputValue<List<WorkspaceDatasetversionLabel>, List<Map<String, dynamic>>>(labels, (value) => pulumi.Input.encodeList<WorkspaceDatasetversionLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'options': ?options,
      'property': ?property,
      'sourceId': ?sourceId,
      'sourceType': ?sourceType,
      'uri': ?uri,
      'versionName': ?versionName,
    };
  }

  factory WorkspaceDatasetversionState.fromMap(Map<String, dynamic> map) {
    return WorkspaceDatasetversionState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCount: (() { final guardedValue = map['dataCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataSize: (() { final guardedValue = map['dataSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      dataSourceType: (() { final guardedValue = map['dataSourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datasetId: (() { final guardedValue = map['datasetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkspaceDatasetversionLabel>(guardedValue, (value) => WorkspaceDatasetversionLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      options: (() { final guardedValue = map['options']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      property: (() { final guardedValue = map['property']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: (() { final guardedValue = map['sourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uri: (() { final guardedValue = map['uri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionName: (() { final guardedValue = map['versionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

