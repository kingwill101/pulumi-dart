// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../opt_in_resource_data_catalog/opt_in_resource_data_catalog.dart';
import '../opt_in_resource_data_data_cells_filter/opt_in_resource_data_data_cells_filter.dart';
import '../opt_in_resource_data_data_location/opt_in_resource_data_data_location.dart';
import '../opt_in_resource_data_database/opt_in_resource_data_database.dart';
import '../opt_in_resource_data_lf_tag/opt_in_resource_data_lf_tag.dart';
import '../opt_in_resource_data_lf_tag_expression/opt_in_resource_data_lf_tag_expression.dart';
import '../opt_in_resource_data_lf_tag_policy/opt_in_resource_data_lf_tag_policy.dart';
import '../opt_in_resource_data_table/opt_in_resource_data_table.dart';
import '../opt_in_resource_data_table_with_columns/opt_in_resource_data_table_with_columns.dart';

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
    final map = <String, dynamic>{};
    final catalogsValue = catalogs;
    if (catalogsValue != null) {
      map['catalogs'] = pulumi.Input.encodeList<OptInResourceDataCatalog,
          Map<String, dynamic>>(catalogsValue, (value) => value.toMap());
    }
    final dataCellsFiltersValue = dataCellsFilters;
    if (dataCellsFiltersValue != null) {
      map['dataCellsFilters'] = pulumi.Input.encodeList<
              OptInResourceDataDataCellsFilter, Map<String, dynamic>>(
          dataCellsFiltersValue, (value) => value.toMap());
    }
    final dataLocationsValue = dataLocations;
    if (dataLocationsValue != null) {
      map['dataLocations'] = pulumi.Input.encodeList<
          OptInResourceDataDataLocation,
          Map<String, dynamic>>(dataLocationsValue, (value) => value.toMap());
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = databaseValue.toMap();
    }
    final lfTagValue = lfTag;
    if (lfTagValue != null) {
      map['lfTag'] = lfTagValue.toMap();
    }
    final lfTagExpressionsValue = lfTagExpressions;
    if (lfTagExpressionsValue != null) {
      map['lfTagExpressions'] = pulumi.Input.encodeList<
              OptInResourceDataLfTagExpression, Map<String, dynamic>>(
          lfTagExpressionsValue, (value) => value.toMap());
    }
    final lfTagPoliciesValue = lfTagPolicies;
    if (lfTagPoliciesValue != null) {
      map['lfTagPolicies'] = pulumi.Input.encodeList<
          OptInResourceDataLfTagPolicy,
          Map<String, dynamic>>(lfTagPoliciesValue, (value) => value.toMap());
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue.toMap();
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = tableWithColumnsValue.toMap();
    }
    return map;
  }

  factory OptInResourceData.fromMap(Map<String, dynamic> map) {
    return OptInResourceData(
      catalogs: map['catalogs'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataCatalog>(
              map['catalogs'],
              (value) => OptInResourceDataCatalog.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataCellsFilters: map['dataCellsFilters'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataDataCellsFilter>(
              map['dataCellsFilters'],
              (value) => OptInResourceDataDataCellsFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dataLocations: map['dataLocations'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataDataLocation>(
              map['dataLocations'],
              (value) => OptInResourceDataDataLocation.fromMap(
                  (value as Map).cast<String, dynamic>())),
      database: map['database'] == null
          ? null
          : OptInResourceDataDatabase.fromMap(
              (map['database'] as Map).cast<String, dynamic>()),
      lfTag: map['lfTag'] == null
          ? null
          : OptInResourceDataLfTag.fromMap(
              (map['lfTag'] as Map).cast<String, dynamic>()),
      lfTagExpressions: map['lfTagExpressions'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataLfTagExpression>(
              map['lfTagExpressions'],
              (value) => OptInResourceDataLfTagExpression.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lfTagPolicies: map['lfTagPolicies'] == null
          ? null
          : pulumi.Input.decodeList<OptInResourceDataLfTagPolicy>(
              map['lfTagPolicies'],
              (value) => OptInResourceDataLfTagPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
      table: map['table'] == null
          ? null
          : OptInResourceDataTable.fromMap(
              (map['table'] as Map).cast<String, dynamic>()),
      tableWithColumns: map['tableWithColumns'] == null
          ? null
          : OptInResourceDataTableWithColumns.fromMap(
              (map['tableWithColumns'] as Map).cast<String, dynamic>()),
    );
  }
}
