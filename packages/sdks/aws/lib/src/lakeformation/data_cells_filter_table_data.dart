// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_cells_filter_table_data_column_wildcard.dart';
import 'data_cells_filter_table_data_row_filter.dart';

class DataCellsFilterTableData {
  /// A list of column names and/or nested column attributes.
  final pulumi.Input<List<String>?>? columnNames;
  /// A wildcard with exclusions. See Column Wildcard below for details.
  final pulumi.Input<DataCellsFilterTableDataColumnWildcard?>? columnWildcard;
  /// The name of the database.
  final pulumi.Input<String> databaseName;
  /// The name of the data cells filter.
  final pulumi.Input<String> name;
  /// A PartiQL predicate. See Row Filter below for details.
  final pulumi.Input<DataCellsFilterTableDataRowFilter> rowFilter;
  /// The ID of the Data Catalog.
  final pulumi.Input<String> tableCatalogId;
  /// The name of the table.
  final pulumi.Input<String> tableName;
  /// ID of the data cells filter version.
  final pulumi.Input<String?>? versionId;

  /// Creates a new [DataCellsFilterTableData].
  /// [columnNames] A list of column names and/or nested column attributes.
  /// [columnWildcard] A wildcard with exclusions. See Column Wildcard below for details.
  /// [databaseName] The name of the database.
  /// [name] The name of the data cells filter.
  /// [rowFilter] A PartiQL predicate. See Row Filter below for details.
  /// [tableCatalogId] The ID of the Data Catalog.
  /// [tableName] The name of the table.
  /// [versionId] ID of the data cells filter version.
  const DataCellsFilterTableData({
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
      'columnWildcard': ?pulumi.Input.mapOptionalInputValue<DataCellsFilterTableDataColumnWildcard, Map<String, dynamic>>(columnWildcard, (value) => value.toMap()),
      'databaseName': databaseName,
      'name': name,
      'rowFilter': pulumi.Input.mapInputValue<DataCellsFilterTableDataRowFilter, Map<String, dynamic>>(rowFilter, (value) => value.toMap()),
      'tableCatalogId': tableCatalogId,
      'tableName': tableName,
      'versionId': ?versionId,
    };
  }

  factory DataCellsFilterTableData.fromMap(Map<String, dynamic> map) {
    return DataCellsFilterTableData(
      columnNames: (() { final guardedValue = map['columnNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      columnWildcard: (() { final guardedValue = map['columnWildcard']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCellsFilterTableDataColumnWildcard.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      rowFilter: pulumi.Input.fromValue(DataCellsFilterTableDataRowFilter.fromMap((map['rowFilter']! as Map).cast<String, dynamic>())),
      tableCatalogId: pulumi.Input.fromValue(map['tableCatalogId'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      versionId: (() { final guardedValue = map['versionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
