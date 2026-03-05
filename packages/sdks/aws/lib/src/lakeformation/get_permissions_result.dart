// ignore_for_file: unused_element, unnecessary_cast

import 'get_permissions_data_cells_filter.dart';
import 'get_permissions_data_location.dart';
import 'get_permissions_database.dart';
import 'get_permissions_lf_tag.dart';
import 'get_permissions_lf_tag_policy.dart';
import 'get_permissions_table.dart';
import 'get_permissions_table_with_columns.dart';

/// Result data returned by getPermissions.
class GetPermissionsResult {
  final String? catalogId;
  final bool? catalogResource;
  final GetPermissionsDataCellsFilter dataCellsFilter;
  final GetPermissionsDataLocation dataLocation;
  final GetPermissionsDatabase database;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final GetPermissionsLfTag lfTag;
  final GetPermissionsLfTagPolicy lfTagPolicy;
  /// List of permissions granted to the principal. For details on permissions, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final List<String> permissions;
  /// Subset of `permissions` which the principal can pass.
  final List<String> permissionsWithGrantOptions;
  final String principal;
  final String region;
  final GetPermissionsTable table;
  final GetPermissionsTableWithColumns tableWithColumns;

  /// Creates a new [GetPermissionsResult].
  /// [catalogId] Optional.
  /// [catalogResource] Optional.
  /// [dataCellsFilter] Required.
  /// [dataLocation] Required.
  /// [database] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lfTag] Required.
  /// [lfTagPolicy] Required.
  /// [permissions] List of permissions granted to the principal. For details on permissions, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [permissionsWithGrantOptions] Subset of `permissions` which the principal can pass.
  /// [principal] Required.
  /// [region] Required.
  /// [table] Required.
  /// [tableWithColumns] Required.
  GetPermissionsResult({
    this.catalogId,
    this.catalogResource,
    required this.dataCellsFilter,
    required this.dataLocation,
    required this.database,
    required this.id,
    required this.lfTag,
    required this.lfTagPolicy,
    required this.permissions,
    required this.permissionsWithGrantOptions,
    required this.principal,
    required this.region,
    required this.table,
    required this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'catalogResource': ?catalogResource,
      'dataCellsFilter': dataCellsFilter.toMap(),
      'dataLocation': dataLocation.toMap(),
      'database': database.toMap(),
      'id': id,
      'lfTag': lfTag.toMap(),
      'lfTagPolicy': lfTagPolicy.toMap(),
      'permissions': permissions,
      'permissionsWithGrantOptions': permissionsWithGrantOptions,
      'principal': principal,
      'region': region,
      'table': table.toMap(),
      'tableWithColumns': tableWithColumns.toMap(),
    };
  }

  factory GetPermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionsResult(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogResource: (() { final guardedValue = map['catalogResource']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataCellsFilter: GetPermissionsDataCellsFilter.fromMap((map['dataCellsFilter']! as Map).cast<String, dynamic>()),
      dataLocation: GetPermissionsDataLocation.fromMap((map['dataLocation']! as Map).cast<String, dynamic>()),
      database: GetPermissionsDatabase.fromMap((map['database']! as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lfTag: GetPermissionsLfTag.fromMap((map['lfTag']! as Map).cast<String, dynamic>()),
      lfTagPolicy: GetPermissionsLfTagPolicy.fromMap((map['lfTagPolicy']! as Map).cast<String, dynamic>()),
      permissions: (map['permissions'] as List).cast<String>(),
      permissionsWithGrantOptions: (map['permissionsWithGrantOptions'] as List).cast<String>(),
      principal: map['principal'] as String,
      region: map['region'] as String,
      table: GetPermissionsTable.fromMap((map['table']! as Map).cast<String, dynamic>()),
      tableWithColumns: GetPermissionsTableWithColumns.fromMap((map['tableWithColumns']! as Map).cast<String, dynamic>()),
    );
  }
}

