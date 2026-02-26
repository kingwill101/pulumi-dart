// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_tables_table/get_tables_table.dart';

/// Result data returned by getTables.
class GetTablesResult {
  final String datasetId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String? project;

  /// A list of all retrieved BigQuery tables. Structure is defined below.
  final List<GetTablesTable> tables;

  GetTablesResult({
    required this.datasetId,
    required this.id,
    this.project,
    required this.tables,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datasetId'] = datasetId;
    map['id'] = id;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['tables'] = Input.encodeList<GetTablesTable, Map<String, dynamic>>(
        tables, (value) => value.toMap());
    return map;
  }

  factory GetTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTablesResult(
      datasetId: map['datasetId'] as String,
      id: map['id'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      tables: Input.decodeList<GetTablesTable>(
          map['tables'],
          (value) =>
              GetTablesTable.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
