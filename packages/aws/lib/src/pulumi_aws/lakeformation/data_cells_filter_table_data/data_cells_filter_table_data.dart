// ignore_for_file: unused_element, unnecessary_cast

import '../data_cells_filter_table_data_column_wildcard/data_cells_filter_table_data_column_wildcard.dart';
import '../data_cells_filter_table_data_row_filter/data_cells_filter_table_data_row_filter.dart';

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
    final map = <String, dynamic>{};
    final columnNamesValue = columnNames;
    if (columnNamesValue != null) {
      map['columnNames'] = columnNamesValue;
    }
    final columnWildcardValue = columnWildcard;
    if (columnWildcardValue != null) {
      map['columnWildcard'] = columnWildcardValue.toMap();
    }
    map['databaseName'] = databaseName;
    map['name'] = name;
    map['rowFilter'] = rowFilter.toMap();
    map['tableCatalogId'] = tableCatalogId;
    map['tableName'] = tableName;
    final versionIdValue = versionId;
    if (versionIdValue != null) {
      map['versionId'] = versionIdValue;
    }
    return map;
  }

  factory DataCellsFilterTableData.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableData(
      columnNames: map['columnNames'] == null
          ? null
          : (map['columnNames'] as List).cast<String>(),
      columnWildcard: map['columnWildcard'] == null
          ? null
          : DataCellsFilterTableDataColumnWildcard.fromMap(
              (map['columnWildcard'] as Map).cast<String, dynamic>()),
      databaseName: map['databaseName'] as String,
      name: map['name'] as String,
      rowFilter: DataCellsFilterTableDataRowFilter.fromMap(
          (map['rowFilter'] as Map).cast<String, dynamic>()),
      tableCatalogId: map['tableCatalogId'] as String,
      tableName: map['tableName'] as String,
      versionId: map['versionId'] == null ? null : map['versionId'] as String,
    );
  }
}
