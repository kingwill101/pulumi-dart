// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_resource_data_catalog.dart';
import 'opt_in_resource_data_data_cells_filter.dart';
import 'opt_in_resource_data_data_location.dart';
import 'opt_in_resource_data_database.dart';
import 'opt_in_resource_data_lf_tag.dart';
import 'opt_in_resource_data_lf_tag_expression.dart';
import 'opt_in_resource_data_lf_tag_policy.dart';
import 'opt_in_resource_data_table.dart';
import 'opt_in_resource_data_table_with_columns.dart';

class OptInResourceData {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. See Catalog for more details.
  final pulumi.Input<List<OptInResourceDataCatalog>>? catalogs;
  /// Data cell filter. See Data Cells Filter for more details.
  final pulumi.Input<List<OptInResourceDataDataCellsFilter>>? dataCellsFilters;
  /// Location of an Amazon S3 path where permissions are granted or revoked. See Data Location for more details.
  final pulumi.Input<List<OptInResourceDataDataLocation>>? dataLocations;
  /// Database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. See Database for more details.
  final pulumi.Input<OptInResourceDataDatabase>? database;
  /// LF-tag key and values attached to a resource.
  final pulumi.Input<OptInResourceDataLfTag>? lfTag;
  /// Logical expression composed of one or more LF-Tag key:value pairs. See LF-Tag Expression for more details.
  final pulumi.Input<List<OptInResourceDataLfTagExpression>>? lfTagExpressions;
  /// List of LF-Tag conditions or saved LF-Tag expressions that define a resource's LF-Tag policy. See LF-Tag Policy for more details.
  final pulumi.Input<List<OptInResourceDataLfTagPolicy>>? lfTagPolicies;
  /// Table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. See Table for more details.
  final pulumi.Input<OptInResourceDataTable>? table;
  /// Table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3. See Table With Columns for more details.
  final pulumi.Input<OptInResourceDataTableWithColumns>? tableWithColumns;

  /// Creates a new [OptInResourceData].
  /// [catalogs] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment. See Catalog for more details.
  /// [dataCellsFilters] Data cell filter. See Data Cells Filter for more details.
  /// [dataLocations] Location of an Amazon S3 path where permissions are granted or revoked. See Data Location for more details.
  /// [database] Database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. See Database for more details.
  /// [lfTag] LF-tag key and values attached to a resource.
  /// [lfTagExpressions] Logical expression composed of one or more LF-Tag key:value pairs. See LF-Tag Expression for more details.
  /// [lfTagPolicies] List of LF-Tag conditions or saved LF-Tag expressions that define a resource's LF-Tag policy. See LF-Tag Policy for more details.
  /// [table] Table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. See Table for more details.
  /// [tableWithColumns] Table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3. See Table With Columns for more details.
  OptInResourceData({
    this.catalogs,
    this.dataCellsFilters,
    this.dataLocations,
    this.database,
    this.lfTag,
    this.lfTagExpressions,
    this.lfTagPolicies,
    this.table,
    this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogs': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceDataCatalog>, List<Map<String, dynamic>>>(catalogs, (value) => pulumi.Input.encodeList<OptInResourceDataCatalog, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataCellsFilters': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceDataDataCellsFilter>, List<Map<String, dynamic>>>(dataCellsFilters, (value) => pulumi.Input.encodeList<OptInResourceDataDataCellsFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataLocations': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceDataDataLocation>, List<Map<String, dynamic>>>(dataLocations, (value) => pulumi.Input.encodeList<OptInResourceDataDataLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'database': ?pulumi.Input.mapOptionalInputValue<OptInResourceDataDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTag': ?pulumi.Input.mapOptionalInputValue<OptInResourceDataLfTag, Map<String, dynamic>>(lfTag, (value) => value.toMap()),
      'lfTagExpressions': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceDataLfTagExpression>, List<Map<String, dynamic>>>(lfTagExpressions, (value) => pulumi.Input.encodeList<OptInResourceDataLfTagExpression, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lfTagPolicies': ?pulumi.Input.mapOptionalInputValue<List<OptInResourceDataLfTagPolicy>, List<Map<String, dynamic>>>(lfTagPolicies, (value) => pulumi.Input.encodeList<OptInResourceDataLfTagPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'table': ?pulumi.Input.mapOptionalInputValue<OptInResourceDataTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<OptInResourceDataTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
    };
  }

  factory OptInResourceData.fromMap(Map<String, dynamic> map) {
    return OptInResourceData(
      catalogs: (() { final guardedValue = map['catalogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptInResourceDataCatalog>(guardedValue, (value) => OptInResourceDataCatalog.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataCellsFilters: (() { final guardedValue = map['dataCellsFilters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptInResourceDataDataCellsFilter>(guardedValue, (value) => OptInResourceDataDataCellsFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      dataLocations: (() { final guardedValue = map['dataLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptInResourceDataDataLocation>(guardedValue, (value) => OptInResourceDataDataLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptInResourceDataDatabase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lfTag: (() { final guardedValue = map['lfTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptInResourceDataLfTag.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      lfTagExpressions: (() { final guardedValue = map['lfTagExpressions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptInResourceDataLfTagExpression>(guardedValue, (value) => OptInResourceDataLfTagExpression.fromMap((value as Map).cast<String, dynamic>()))); })(),
      lfTagPolicies: (() { final guardedValue = map['lfTagPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<OptInResourceDataLfTagPolicy>(guardedValue, (value) => OptInResourceDataLfTagPolicy.fromMap((value as Map).cast<String, dynamic>()))); })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptInResourceDataTable.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tableWithColumns: (() { final guardedValue = map['tableWithColumns']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OptInResourceDataTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

