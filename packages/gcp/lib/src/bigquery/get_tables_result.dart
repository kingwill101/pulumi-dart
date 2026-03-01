// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_tables_table.dart';

/// Result data returned by getTables.
class GetTablesResult {
  final String datasetId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;

  /// A list of all retrieved BigQuery tables. Structure is defined below.
  final List<GetTablesTable> tables;

  /// Creates a new [GetTablesResult].
  /// [datasetId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [project] Optional.
  /// [tables] A list of all retrieved BigQuery tables. Structure is defined below.
  GetTablesResult({
    required this.datasetId,
    required this.id,
    this.project,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datasetId': datasetId,
      'id': id,
      'project': ?project,
      'tables': pulumi.Input.encodeList<GetTablesTable, Map<String, dynamic>>(
        tables,
        (value) => value.toMap(),
      ),
    };
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      datasetId: map['datasetId'] as String,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tables: pulumi.Input.decodeList<GetTablesTable>(
        map['tables'],
        (value) =>
            GetTablesTable.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}
