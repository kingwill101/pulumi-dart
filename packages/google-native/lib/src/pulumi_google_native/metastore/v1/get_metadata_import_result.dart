// ignore_for_file: unused_element, unnecessary_cast

import 'database_dump_response.dart';

/// Result data returned by getMetadataImport.
class GetMetadataImportResult {
  /// The time when the metadata import was started.
  final String createTime;

  /// Immutable. A database dump from a pre-existing metastore's database.
  final DatabaseDumpResponse databaseDump;

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

  GetMetadataImportResult({
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

  factory GetMetadataImportResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataImportResult(
      createTime: map['createTime'] as String,
      databaseDump: DatabaseDumpResponse.fromMap(
          (map['databaseDump'] as Map).cast<String, dynamic>()),
      description: map['description'] as String,
      endTime: map['endTime'] as String,
      name: map['name'] as String,
      state: map['state'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
