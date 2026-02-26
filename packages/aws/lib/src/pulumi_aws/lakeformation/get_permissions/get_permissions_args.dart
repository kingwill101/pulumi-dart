// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<String>? catalogId;

  /// Whether the permissions are to be granted for the Data Catalog. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? catalogResource;

  /// Configuration block for a data cells filter resource. Detailed below.
  final Input<GetPermissionsDataCellsFilter>? dataCellsFilter;

  /// Configuration block for a data location resource. Detailed below.
  final Input<GetPermissionsDataLocation>? dataLocation;

  /// Configuration block for a database resource. Detailed below.
  final Input<GetPermissionsDatabase>? database;

  /// Configuration block for an LF-tag resource. Detailed below.
  final Input<GetPermissionsLfTag>? lfTag;

  /// Configuration block for an LF-tag policy resource. Detailed below.
  final Input<GetPermissionsLfTagPolicy>? lfTagPolicy;

  /// Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.
  ///
  /// One of the following is required:
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for a table resource. Detailed below.
  final Input<GetPermissionsTable>? table;

  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<GetPermissionsTableWithColumns>? tableWithColumns;

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
      map['dataCellsFilter'] = Input.mapOptionalInputValue<
          GetPermissionsDataCellsFilter,
          Map<String, dynamic>>(dataCellsFilterValue, (value) => value.toMap());
    }
    final dataLocationValue = dataLocation;
    if (dataLocationValue != null) {
      map['dataLocation'] = Input.mapOptionalInputValue<
          GetPermissionsDataLocation,
          Map<String, dynamic>>(dataLocationValue, (value) => value.toMap());
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = Input.mapOptionalInputValue<GetPermissionsDatabase,
          Map<String, dynamic>>(databaseValue, (value) => value.toMap());
    }
    final lfTagValue = lfTag;
    if (lfTagValue != null) {
      map['lfTag'] = Input.mapOptionalInputValue<GetPermissionsLfTag,
          Map<String, dynamic>>(lfTagValue, (value) => value.toMap());
    }
    final lfTagPolicyValue = lfTagPolicy;
    if (lfTagPolicyValue != null) {
      map['lfTagPolicy'] = Input.mapOptionalInputValue<
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
      map['table'] = Input.mapOptionalInputValue<GetPermissionsTable,
          Map<String, dynamic>>(tableValue, (value) => value.toMap());
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = Input.mapOptionalInputValue<
              GetPermissionsTableWithColumns, Map<String, dynamic>>(
          tableWithColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GetPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionsArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      catalogResource: Input.asOptionalInput<bool>(map['catalogResource']),
      dataCellsFilter: Input.asOptionalInput<GetPermissionsDataCellsFilter>(
          map['dataCellsFilter']),
      dataLocation: Input.asOptionalInput<GetPermissionsDataLocation>(
          map['dataLocation']),
      database: Input.asOptionalInput<GetPermissionsDatabase>(map['database']),
      lfTag: Input.asOptionalInput<GetPermissionsLfTag>(map['lfTag']),
      lfTagPolicy:
          Input.asOptionalInput<GetPermissionsLfTagPolicy>(map['lfTagPolicy']),
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
      table: Input.asOptionalInput<GetPermissionsTable>(map['table']),
      tableWithColumns: Input.asOptionalInput<GetPermissionsTableWithColumns>(
          map['tableWithColumns']),
    );
  }
}
