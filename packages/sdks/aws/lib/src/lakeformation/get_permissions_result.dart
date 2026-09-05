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
  final GetPermissionsDataCellsFilter? dataCellsFilter;
  final GetPermissionsDataLocation? dataLocation;
  final GetPermissionsDatabase? database;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final GetPermissionsLfTag? lfTag;
  final GetPermissionsLfTagPolicy? lfTagPolicy;
  /// List of permissions granted to the principal. For details on permissions, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final List<String>? permissions;
  /// Subset of `permissions` which the principal can pass.
  final List<String>? permissionsWithGrantOptions;
  final String? principal;
  final String? region;
  final GetPermissionsTable? table;
  final GetPermissionsTableWithColumns? tableWithColumns;

  /// Creates a new [GetPermissionsResult].
  /// [catalogId] Optional.
  /// [catalogResource] Optional.
  /// [dataCellsFilter] Optional.
  /// [dataLocation] Optional.
  /// [database] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [lfTag] Optional.
  /// [lfTagPolicy] Optional.
  /// [permissions] List of permissions granted to the principal. For details on permissions, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [permissionsWithGrantOptions] Subset of `permissions` which the principal can pass.
  /// [principal] Optional.
  /// [region] Optional.
  /// [table] Optional.
  /// [tableWithColumns] Optional.
  const GetPermissionsResult({
    this.catalogId,
    this.catalogResource,
    this.dataCellsFilter,
    this.dataLocation,
    this.database,
    this.id,
    this.lfTag,
    this.lfTagPolicy,
    this.permissions,
    this.permissionsWithGrantOptions,
    this.principal,
    this.region,
    this.table,
    this.tableWithColumns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'catalogResource': ?catalogResource,
      'dataCellsFilter': ?dataCellsFilter?.toMap(),
      'dataLocation': ?dataLocation?.toMap(),
      'database': ?database?.toMap(),
      'id': ?id,
      'lfTag': ?lfTag?.toMap(),
      'lfTagPolicy': ?lfTagPolicy?.toMap(),
      'permissions': ?permissions,
      'permissionsWithGrantOptions': ?permissionsWithGrantOptions,
      'principal': ?principal,
      'region': ?region,
      'table': ?table?.toMap(),
      'tableWithColumns': ?tableWithColumns?.toMap(),
    };
  }

  factory GetPermissionsResult.fromMap(Map<String, dynamic> map) {
    return GetPermissionsResult(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogResource: (() { final guardedValue = map['catalogResource']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dataCellsFilter: (() { final guardedValue = map['dataCellsFilter']; if (guardedValue == null) return null; return GetPermissionsDataCellsFilter.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      dataLocation: (() { final guardedValue = map['dataLocation']; if (guardedValue == null) return null; return GetPermissionsDataLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      database: (() { final guardedValue = map['database']; if (guardedValue == null) return null; return GetPermissionsDatabase.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lfTag: (() { final guardedValue = map['lfTag']; if (guardedValue == null) return null; return GetPermissionsLfTag.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      lfTagPolicy: (() { final guardedValue = map['lfTagPolicy']; if (guardedValue == null) return null; return GetPermissionsLfTagPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      permissions: (() { final guardedValue = map['permissions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      permissionsWithGrantOptions: (() { final guardedValue = map['permissionsWithGrantOptions']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      principal: (() { final guardedValue = map['principal']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      table: (() { final guardedValue = map['table']; if (guardedValue == null) return null; return GetPermissionsTable.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tableWithColumns: (() { final guardedValue = map['tableWithColumns']; if (guardedValue == null) return null; return GetPermissionsTableWithColumns.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
