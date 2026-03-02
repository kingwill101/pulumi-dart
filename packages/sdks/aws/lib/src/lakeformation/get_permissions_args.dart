// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_permissions_data_cells_filter.dart';
import 'get_permissions_data_location.dart';
import 'get_permissions_database.dart';
import 'get_permissions_lf_tag.dart';
import 'get_permissions_lf_tag_policy.dart';
import 'get_permissions_table.dart';
import 'get_permissions_table_with_columns.dart';

/// {@template pulumi_lakeformation_get_permissions_get_permissions_args_doc}
/// Arguments for getPermissions.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_get_permissions_get_permissions_args_doc}
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

  /// Creates a new [GetPermissionsArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  /// [catalogResource] Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  /// [dataCellsFilter] Configuration block for a data cells filter resource. Detailed below.
  /// [dataLocation] Configuration block for a data location resource. Detailed below.
  /// [database] Configuration block for a database resource. Detailed below.
  /// [lfTag] Configuration block for an LF-tag resource. Detailed below.
  /// [lfTagPolicy] Configuration block for an LF-tag policy resource. Detailed below.
  /// [principal] Principal to be granted the permissions on the resource. Supported principals are IAM users or IAM roles.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [table] Configuration block for a table resource. Detailed below.
  /// [tableWithColumns] Configuration block for a table with columns resource. Detailed below.
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
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'catalogResource': ?catalogResource,
      'dataCellsFilter': ?pulumi.Input.mapOptionalInputValue<GetPermissionsDataCellsFilter, Map<String, dynamic>>(dataCellsFilter, (value) => value.toMap()),
      'dataLocation': ?pulumi.Input.mapOptionalInputValue<GetPermissionsDataLocation, Map<String, dynamic>>(dataLocation, (value) => value.toMap()),
      'database': ?pulumi.Input.mapOptionalInputValue<GetPermissionsDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTag': ?pulumi.Input.mapOptionalInputValue<GetPermissionsLfTag, Map<String, dynamic>>(lfTag, (value) => value.toMap()),
      'lfTagPolicy': ?pulumi.Input.mapOptionalInputValue<GetPermissionsLfTagPolicy, Map<String, dynamic>>(lfTagPolicy, (value) => value.toMap()),
      'principal': principal,
      'region': ?region,
      'table': ?pulumi.Input.mapOptionalInputValue<GetPermissionsTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<GetPermissionsTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
    };
  }

  factory GetPermissionsArgs.fromMap(Map<String, dynamic> map) {
    return GetPermissionsArgs(
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      catalogResource: map['catalogResource'] == null ? null : (map['catalogResource'] as bool).input(),
      dataCellsFilter: map['dataCellsFilter'] == null ? null : (GetPermissionsDataCellsFilter.fromMap((map['dataCellsFilter'] as Map).cast<String, dynamic>())).input(),
      dataLocation: map['dataLocation'] == null ? null : (GetPermissionsDataLocation.fromMap((map['dataLocation'] as Map).cast<String, dynamic>())).input(),
      database: map['database'] == null ? null : (GetPermissionsDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())).input(),
      lfTag: map['lfTag'] == null ? null : (GetPermissionsLfTag.fromMap((map['lfTag'] as Map).cast<String, dynamic>())).input(),
      lfTagPolicy: map['lfTagPolicy'] == null ? null : (GetPermissionsLfTagPolicy.fromMap((map['lfTagPolicy'] as Map).cast<String, dynamic>())).input(),
      principal: (map['principal'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      table: map['table'] == null ? null : (GetPermissionsTable.fromMap((map['table'] as Map).cast<String, dynamic>())).input(),
      tableWithColumns: map['tableWithColumns'] == null ? null : (GetPermissionsTableWithColumns.fromMap((map['tableWithColumns'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

