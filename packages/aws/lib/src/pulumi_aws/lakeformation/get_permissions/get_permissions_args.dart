// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_permissions_data_cells_filter/get_permissions_data_cells_filter.dart';
import '../get_permissions_data_location/get_permissions_data_location.dart';
import '../get_permissions_database/get_permissions_database.dart';
import '../get_permissions_lf_tag/get_permissions_lf_tag.dart';
import '../get_permissions_lf_tag_policy/get_permissions_lf_tag_policy.dart';
import '../get_permissions_table/get_permissions_table.dart';
import '../get_permissions_table_with_columns/get_permissions_table_with_columns.dart';

/// Arguments for getPermissions.
class GetPermissionsArgs {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final pulumi.Input<String>? catalogId;

  /// Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  final pulumi.Input<bool>? catalogResource;

  /// Configuration block for a data cells filter resource. Detailed below.
  final pulumi.Input<GetPermissionsDataCellsFilter>? dataCellsFilter;

  /// Configuration block for a data location resource. Detailed below.
  final pulumi.Input<GetPermissionsDataLocation>? dataLocation;

  /// Configuration block for a database resource. Detailed below.
  final pulumi.Input<GetPermissionsDatabase>? database;

  /// Configuration block for an LF-tag resource. Detailed below.
  final pulumi.Input<GetPermissionsLfTag>? lfTag;

  /// Configuration block for an LF-tag policy resource. Detailed below.
  final pulumi.Input<GetPermissionsLfTagPolicy>? lfTagPolicy;

  /// Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.
  ///
  /// One of the following is required:
  final pulumi.Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for a table resource. Detailed below.
  final pulumi.Input<GetPermissionsTable>? table;

  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<GetPermissionsTableWithColumns>? tableWithColumns;

  GetPermissionsArgs({
    this.catalogId,
    this.catalogResource,
    this.dataCellsFilter,
    this.dataLocation,
    this.database,
    this.lfTag,
    this.lfTagPolicy,
    required this.principal,
    this.region,
    this.table,
    this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final catalogResourceValue = catalogResource;
    if (catalogResourceValue != null) {
      map['catalogResource'] = catalogResourceValue;
    }
    final dataCellsFilterValue = dataCellsFilter;
    if (dataCellsFilterValue != null) {
      map['dataCellsFilter'] = pulumi.Input.mapOptionalInputValue<
          GetPermissionsDataCellsFilter,
          Map<String, dynamic>>(dataCellsFilterValue, (value) => value.toMap());
    }
    final dataLocationValue = dataLocation;
    if (dataLocationValue != null) {
      map['dataLocation'] = pulumi.Input.mapOptionalInputValue<
          GetPermissionsDataLocation,
          Map<String, dynamic>>(dataLocationValue, (value) => value.toMap());
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = pulumi.Input.mapOptionalInputValue<
          GetPermissionsDatabase,
          Map<String, dynamic>>(databaseValue, (value) => value.toMap());
    }
    final lfTagValue = lfTag;
    if (lfTagValue != null) {
      map['lfTag'] = pulumi.Input.mapOptionalInputValue<GetPermissionsLfTag,
          Map<String, dynamic>>(lfTagValue, (value) => value.toMap());
    }
    final lfTagPolicyValue = lfTagPolicy;
    if (lfTagPolicyValue != null) {
      map['lfTagPolicy'] = pulumi.Input.mapOptionalInputValue<
          GetPermissionsLfTagPolicy,
          Map<String, dynamic>>(lfTagPolicyValue, (value) => value.toMap());
    }
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = pulumi.Input.mapOptionalInputValue<GetPermissionsTable,
          Map<String, dynamic>>(tableValue, (value) => value.toMap());
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = pulumi.Input.mapOptionalInputValue<
              GetPermissionsTableWithColumns, Map<String, dynamic>>(
          tableWithColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionsArgs(
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      catalogResource:
          pulumi.Input.asOptionalInput<bool>(map['catalogResource']),
      dataCellsFilter:
          pulumi.Input.asOptionalInput<GetPermissionsDataCellsFilter>(
              map['dataCellsFilter']),
      dataLocation: pulumi.Input.asOptionalInput<GetPermissionsDataLocation>(
          map['dataLocation']),
      database:
          pulumi.Input.asOptionalInput<GetPermissionsDatabase>(map['database']),
      lfTag: pulumi.Input.asOptionalInput<GetPermissionsLfTag>(map['lfTag']),
      lfTagPolicy: pulumi.Input.asOptionalInput<GetPermissionsLfTagPolicy>(
          map['lfTagPolicy']),
      principal: pulumi.Input.asInput<String>(map['principal']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      table: pulumi.Input.asOptionalInput<GetPermissionsTable>(map['table']),
      tableWithColumns:
          pulumi.Input.asOptionalInput<GetPermissionsTableWithColumns>(
              map['tableWithColumns']),
    );
  }
}
