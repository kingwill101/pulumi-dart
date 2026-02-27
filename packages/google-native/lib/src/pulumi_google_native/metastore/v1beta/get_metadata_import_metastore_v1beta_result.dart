// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_response_metastore_v1beta.dart';

/// Result data returned by getMetadataImport.
class GetMetadataImportMetastoreV1betaResult {
  /// The time when the metadata import was started.
  final String createTime;

  /// Immutable. A database dump from a pre-existing metastore's database.
  final DatabaseDumpResponseMetastoreV1beta databaseDump;

  /// The description of the metadata import.
  final String description;

  /// The time when the metadata import finished.
  final String endTime;

  /// Immutable. The relative resource name of the metadata import, of the form:projects/{project_number}/locations/{location_id}/services/{service_id}/metadataImports/{metadata_import_id}.
  final String name;

  /// The current state of the metadata import.
  final String state;

  /// The time when the metadata import was last updated.
  final String updateTime;

  GetMetadataImportMetastoreV1betaResult({
    required this.createTime,
    required this.databaseDump,
    required this.description,
    required this.endTime,
    required this.name,
    required this.state,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['databaseDump'] = databaseDump.toMap();
    map['description'] = description;
    map['endTime'] = endTime;
    map['name'] = name;
    map['state'] = state;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetMetadataImportMetastoreV1betaResult.fromMap(
      Map<String, dynamic> map) {
    return GetMetadataImportMetastoreV1betaResult(
      createTime: map['createTime'] as String,
      databaseDump: DatabaseDumpResponseMetastoreV1beta.fromMap(
          (map['databaseDump'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
