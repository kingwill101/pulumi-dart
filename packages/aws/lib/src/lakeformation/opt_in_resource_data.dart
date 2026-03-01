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
  final List<OptInResourceDataCatalog>? catalogs;

  /// Data cell filter. See Data Cells Filter for more details.
  final List<OptInResourceDataDataCellsFilter>? dataCellsFilters;

  /// Location of an Amazon S3 path where permissions are granted or revoked. See Data Location for more details.
  final List<OptInResourceDataDataLocation>? dataLocations;

  /// Database for the resource. Unique to the Data Catalog. A database is a set of associated table definitions organized into a logical group. You can Grant and Revoke database permissions to a principal. See Database for more details.
  final OptInResourceDataDatabase? database;

  /// LF-tag key and values attached to a resource.
  final OptInResourceDataLfTag? lfTag;

  /// Logical expression composed of one or more LF-Tag key:value pairs. See LF-Tag Expression for more details.
  final List<OptInResourceDataLfTagExpression>? lfTagExpressions;

  /// List of LF-Tag conditions or saved LF-Tag expressions that define a resource's LF-Tag policy. See LF-Tag Policy for more details.
  final List<OptInResourceDataLfTagPolicy>? lfTagPolicies;

  /// Table for the resource. A table is a metadata definition that represents your data. You can Grant and Revoke table privileges to a principal. See Table for more details.
  final OptInResourceDataTable? table;

  /// Table with columns for the resource. A principal with permissions to this resource can select metadata from the columns of a table in the Data Catalog and the underlying data in Amazon S3. See Table With Columns for more details.
  final OptInResourceDataTableWithColumns? tableWithColumns;

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
      'catalogs': ?catalogs == null
          ? null
          : pulumi.Input.encodeList<
              OptInResourceDataCatalog,
              Map<String, dynamic>
            >(catalogs!, (value) => value.toMap()),
      'dataCellsFilters': ?dataCellsFilters == null
          ? null
          : pulumi.Input.encodeList<
              OptInResourceDataDataCellsFilter,
              Map<String, dynamic>
            >(dataCellsFilters!, (value) => value.toMap()),
      'dataLocations': ?dataLocations == null
          ? null
          : pulumi.Input.encodeList<
              OptInResourceDataDataLocation,
              Map<String, dynamic>
            >(dataLocations!, (value) => value.toMap()),
      'database': ?database == null ? null : database!.toMap(),
      'lfTag': ?lfTag == null ? null : lfTag!.toMap(),
      'lfTagExpressions': ?lfTagExpressions == null
          ? null
          : pulumi.Input.encodeList<
              OptInResourceDataLfTagExpression,
              Map<String, dynamic>
            >(lfTagExpressions!, (value) => value.toMap()),
      'lfTagPolicies': ?lfTagPolicies == null
          ? null
          : pulumi.Input.encodeList<
              OptInResourceDataLfTagPolicy,
              Map<String, dynamic>
            >(lfTagPolicies!, (value) => value.toMap()),
      'table': ?table == null ? null : table!.toMap(),
      'tableWithColumns': ?tableWithColumns == null
          ? null
          : tableWithColumns!.toMap(),
    };
  }

  factory OptInResourceData.fromMap(Map<String, dynamic> map) {
    return OptInResourceData(
      catalogs: map['catalogs'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataCatalog>(
              map['catalogs'],
              (value) => OptInResourceDataCatalog.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      dataCellsFilters: map['dataCellsFilters'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataDataCellsFilter>(
              map['dataCellsFilters'],
              (value) => OptInResourceDataDataCellsFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      dataLocations: map['dataLocations'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataDataLocation>(
              map['dataLocations'],
              (value) => OptInResourceDataDataLocation.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      database: map['database'] == null
          ? null
          : OptInResourceDataDatabase.fromMap(
              (map['database'] as Map).cast<String, dynamic>(),
            ),
      lfTag: map['lfTag'] == null
          ? null
          : OptInResourceDataLfTag.fromMap(
              (map['lfTag'] as Map).cast<String, dynamic>(),
            ),
      lfTagExpressions: map['lfTagExpressions'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataLfTagExpression>(
              map['lfTagExpressions'],
              (value) => OptInResourceDataLfTagExpression.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      lfTagPolicies: map['lfTagPolicies'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataLfTagPolicy>(
              map['lfTagPolicies'],
              (value) => OptInResourceDataLfTagPolicy.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      table: map['table'] == null
          ? null
          : OptInResourceDataTable.fromMap(
              (map['table'] as Map).cast<String, dynamic>(),
            ),
      tableWithColumns: map['tableWithColumns'] == null
          ? null
          : OptInResourceDataTableWithColumns.fromMap(
              (map['tableWithColumns'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
