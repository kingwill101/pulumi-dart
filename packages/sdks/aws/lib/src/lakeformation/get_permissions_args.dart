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
    pulumi.Output<String>? catalogId,
    pulumi.Output<bool>? catalogResource,
    pulumi.Output<GetPermissionsDataCellsFilter>? dataCellsFilter,
    pulumi.Output<GetPermissionsDataLocation>? dataLocation,
    pulumi.Output<GetPermissionsDatabase>? database,
    pulumi.Output<GetPermissionsLfTag>? lfTag,
    pulumi.Output<GetPermissionsLfTagPolicy>? lfTagPolicy,
    required pulumi.Output<String> principal,
    pulumi.Output<String>? region,
    pulumi.Output<GetPermissionsTable>? table,
    pulumi.Output<GetPermissionsTableWithColumns>? tableWithColumns,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      catalogResource = pulumi.Input.asOptionalInput<bool>(catalogResource),
      dataCellsFilter = pulumi.Input.asOptionalInput<GetPermissionsDataCellsFilter>(dataCellsFilter),
      dataLocation = pulumi.Input.asOptionalInput<GetPermissionsDataLocation>(dataLocation),
      database = pulumi.Input.asOptionalInput<GetPermissionsDatabase>(database),
      lfTag = pulumi.Input.asOptionalInput<GetPermissionsLfTag>(lfTag),
      lfTagPolicy = pulumi.Input.asOptionalInput<GetPermissionsLfTagPolicy>(lfTagPolicy),
      principal = pulumi.Input.asInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      table = pulumi.Input.asOptionalInput<GetPermissionsTable>(table),
      tableWithColumns = pulumi.Input.asOptionalInput<GetPermissionsTableWithColumns>(tableWithColumns);

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
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      catalogResource: map['catalogResource'] == null ? null : pulumi.Output.create<bool>(map['catalogResource'] as bool),
      dataCellsFilter: map['dataCellsFilter'] == null ? null : pulumi.Output.create<GetPermissionsDataCellsFilter>(GetPermissionsDataCellsFilter.fromMap((map['dataCellsFilter'] as Map).cast<String, dynamic>())),
      dataLocation: map['dataLocation'] == null ? null : pulumi.Output.create<GetPermissionsDataLocation>(GetPermissionsDataLocation.fromMap((map['dataLocation'] as Map).cast<String, dynamic>())),
      database: map['database'] == null ? null : pulumi.Output.create<GetPermissionsDatabase>(GetPermissionsDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())),
      lfTag: map['lfTag'] == null ? null : pulumi.Output.create<GetPermissionsLfTag>(GetPermissionsLfTag.fromMap((map['lfTag'] as Map).cast<String, dynamic>())),
      lfTagPolicy: map['lfTagPolicy'] == null ? null : pulumi.Output.create<GetPermissionsLfTagPolicy>(GetPermissionsLfTagPolicy.fromMap((map['lfTagPolicy'] as Map).cast<String, dynamic>())),
      principal: pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<GetPermissionsTable>(GetPermissionsTable.fromMap((map['table'] as Map).cast<String, dynamic>())),
      tableWithColumns: map['tableWithColumns'] == null ? null : pulumi.Output.create<GetPermissionsTableWithColumns>(GetPermissionsTableWithColumns.fromMap((map['tableWithColumns'] as Map).cast<String, dynamic>())),
    );
  }
}

