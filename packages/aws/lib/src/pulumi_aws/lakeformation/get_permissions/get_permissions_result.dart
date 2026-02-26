// ignore_for_file: unused_element, unnecessary_cast

import '../get_permissions_data_cells_filter/get_permissions_data_cells_filter.dart';
import '../get_permissions_data_location/get_permissions_data_location.dart';
import '../get_permissions_database/get_permissions_database.dart';
import '../get_permissions_lf_tag/get_permissions_lf_tag.dart';
import '../get_permissions_lf_tag_policy/get_permissions_lf_tag_policy.dart';
import '../get_permissions_table/get_permissions_table.dart';
import '../get_permissions_table_with_columns/get_permissions_table_with_columns.dart';

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

  /// Subset of <span pulumi-lang-nodejs="`permissions`" pulumi-lang-dotnet="`Permissions`" pulumi-lang-go="`permissions`" pulumi-lang-python="`permissions`" pulumi-lang-yaml="`permissions`" pulumi-lang-java="`permissions`">`permissions`</span> which the principal can pass.
  final List<String> permissionsWithGrantOptions;
  final String principal;
  final String region;
  final GetPermissionsTable table;
  final GetPermissionsTableWithColumns tableWithColumns;

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
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final catalogResourceValue = catalogResource;
    if (catalogResourceValue != null) {
      map['catalogResource'] = catalogResourceValue;
    }
    map['dataCellsFilter'] = dataCellsFilter.toMap();
    map['dataLocation'] = dataLocation.toMap();
    map['database'] = database.toMap();
    map['id'] = id;
    map['lfTag'] = lfTag.toMap();
    map['lfTagPolicy'] = lfTagPolicy.toMap();
    map['permissions'] = permissions;
    map['permissionsWithGrantOptions'] = permissionsWithGrantOptions;
    map['principal'] = principal;
    map['region'] = region;
    map['table'] = table.toMap();
    map['tableWithColumns'] = tableWithColumns.toMap();
    return map;
  }

  factory GetPermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionsResult(
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      catalogResource: map['catalogResource'] == null
          ? null
          : map['catalogResource'] as bool,
      dataCellsFilter: GetPermissionsDataCellsFilter.fromMap(
          (map['dataCellsFilter'] as Map).cast<String, dynamic>()),
      dataLocation: GetPermissionsDataLocation.fromMap(
          (map['dataLocation'] as Map).cast<String, dynamic>()),
      database: GetPermissionsDatabase.fromMap(
          (map['database'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      lfTag: GetPermissionsLfTag.fromMap(
          (map['lfTag'] as Map).cast<String, dynamic>()),
      lfTagPolicy: GetPermissionsLfTagPolicy.fromMap(
          (map['lfTagPolicy'] as Map).cast<String, dynamic>()),
      permissions: (map['permissions'] as List).cast<String>(),
      permissionsWithGrantOptions:
          (map['permissionsWithGrantOptions'] as List).cast<String>(),
      principal: map['principal'] as String,
      region: map['region'] as String,
      table: GetPermissionsTable.fromMap(
          (map['table'] as Map).cast<String, dynamic>()),
      tableWithColumns: GetPermissionsTableWithColumns.fromMap(
          (map['tableWithColumns'] as Map).cast<String, dynamic>()),
    );
  }
}
