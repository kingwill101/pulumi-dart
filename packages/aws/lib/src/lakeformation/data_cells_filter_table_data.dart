// ignore_for_file: unused_element, unnecessary_cast

import 'data_cells_filter_table_data_column_wildcard.dart';
import 'data_cells_filter_table_data_row_filter.dart';

class DataCellsFilterTableData {
  /// A list of column names and/or nested column attributes.
  final List<String>? columnNames;
  /// A wildcard with exclusions. See Column Wildcard below for details.
  final DataCellsFilterTableDataColumnWildcard? columnWildcard;
  /// The name of the database.
  final String databaseName;
  /// The name of the data cells filter.
  final String name;
  /// A PartiQL predicate. See Row Filter below for details.
  final DataCellsFilterTableDataRowFilter rowFilter;
  /// The ID of the Data Catalog.
  final String tableCatalogId;
  /// The name of the table.
  final String tableName;
  /// ID of the data cells filter version.
  final String? versionId;

  /// Creates a new [DataCellsFilterTableData].
  /// [columnNames] A list of column names and/or nested column attributes.
  /// [columnWildcard] A wildcard with exclusions. See Column Wildcard below for details.
  /// [databaseName] The name of the database.
  /// [name] The name of the data cells filter.
  /// [rowFilter] A PartiQL predicate. See Row Filter below for details.
  /// [tableCatalogId] The ID of the Data Catalog.
  /// [tableName] The name of the table.
  /// [versionId] ID of the data cells filter version.
  DataCellsFilterTableData({
    this.columnNames,
    this.columnWildcard,
    required this.databaseName,
    required this.name,
    required this.rowFilter,
    required this.tableCatalogId,
    required this.tableName,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'columnNames': ?columnNames,
      'columnWildcard': ?columnWildcard == null ? null : columnWildcard!.toMap(),
      'databaseName': databaseName,
      'name': name,
      'rowFilter': rowFilter.toMap(),
      'tableCatalogId': tableCatalogId,
      'tableName': tableName,
      'versionId': ?versionId,
    };
  }

  factory DataCellsFilterTableData.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableData(
      columnNames: map['columnNames'] == null ? null : (map['columnNames'] as List).cast<String>(),
      columnWildcard: map['columnWildcard'] == null ? null : DataCellsFilterTableDataColumnWildcard.fromMap((map['columnWildcard'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      rowFilter: DataCellsFilterTableDataRowFilter.fromMap((map['rowFilter'] as Map).cast<String, dynamic>()),
      tableCatalogId: map['tableCatalogId'] as String,
      tableName: map['tableName'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}

