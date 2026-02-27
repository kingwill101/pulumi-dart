// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../app_version_snapshot_toolset_open_api_toolset/app_version_snapshot_toolset_open_api_toolset.dart';

class AppVersionSnapshotToolset {
  /// (Output)
  /// Timestamp when the toolset was created.
  final String? createTime;

  /// The description of the app version.
  final String? description;

  /// The display name of the app version.
  final String? displayName;

  /// (Output)
  /// ETag used to ensure the object hasn't changed during a read-modify-write
  /// operation. If the etag is empty, the update will overwrite any concurrent
  /// changes.
  final String? etag;

  /// (Output)
  /// Possible values:
  /// SYNCHRONOUS
  /// ASYNCHRONOUS
  final String? executionType;

  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final String? name;

  /// (Output)
  /// A toolset that contains a list of tools that are defined by an OpenAPI
  /// schema.
  /// Structure is documented below.
  final List<AppVersionSnapshotToolsetOpenApiToolset>? openApiToolsets;

  /// (Output)
  /// Timestamp when the toolset was last updated.
  final String? updateTime;

  AppVersionSnapshotToolset({
    this.createTime,
    this.description,
    this.displayName,
    this.etag,
    this.executionType,
    this.name,
    this.openApiToolsets,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final etagValue = etag;
    if (etagValue != null) {
      map['etag'] = etagValue;
    }
    final executionTypeValue = executionType;
    if (executionTypeValue != null) {
      map['executionType'] = executionTypeValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final openApiToolsetsValue = openApiToolsets;
    if (openApiToolsetsValue != null) {
      map['openApiToolsets'] = pulumi.Input.encodeList<
          AppVersionSnapshotToolsetOpenApiToolset,
          Map<String, dynamic>>(openApiToolsetsValue, (value) => value.toMap());
    }
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    return map;
  }

  factory AppVersionSnapshotToolset.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolset(
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      executionType:
          map['executionType'] == null ? null : map['executionType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      openApiToolsets: map['openApiToolsets'] == null
          ? null
          : pulumi.Input.decodeList<AppVersionSnapshotToolsetOpenApiToolset>(
              map['openApiToolsets'],
              (value) => AppVersionSnapshotToolsetOpenApiToolset.fromMap(
                  (value as Map).cast<String, dynamic>())),
      updateTime:
          map['updateTime'] == null ? null : map['updateTime'] as String,
    );
  }
}
