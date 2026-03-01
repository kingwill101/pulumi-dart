// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'permissions_data_cells_filter.dart';
import 'permissions_data_location.dart';
import 'permissions_database.dart';
import 'permissions_lf_tag.dart';
import 'permissions_lf_tag_policy.dart';
import 'permissions_table.dart';
import 'permissions_table_with_columns.dart';

/// {@template pulumi_lakeformation_permissions_permissions_args_doc}
/// The set of arguments for Permissions.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_permissions_permissions_args_doc}
class PermissionsArgs {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final pulumi.Input<String>? catalogId;
  /// Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  final pulumi.Input<bool>? catalogResource;
  /// Configuration block for a data cells filter resource. Detailed below.
  final pulumi.Input<PermissionsDataCellsFilter>? dataCellsFilter;
  /// Configuration block for a data location resource. Detailed below.
  final pulumi.Input<PermissionsDataLocation>? dataLocation;
  /// Configuration block for a database resource. Detailed below.
  final pulumi.Input<PermissionsDatabase>? database;
  /// Configuration block for an LF-tag resource. Detailed below.
  final pulumi.Input<PermissionsLfTag>? lfTag;
  /// Configuration block for an LF-tag policy resource. Detailed below.
  final pulumi.Input<PermissionsLfTagPolicy>? lfTagPolicy;
  /// List of permissions granted to the principal. Valid values may include `ALL`, `ALTER`, `ASSOCIATE`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT`. For details on each permission, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final pulumi.Input<List<String>> permissions;
  /// Subset of `permissions` which the principal can pass.
  final pulumi.Input<List<String>>? permissionsWithGrantOptions;
  /// Principal to be granted the permissions on the resource. Supported principals include `IAM_ALLOWED_PRINCIPALS` (see Default Behavior and `IAMAllowedPrincipals` above), IAM roles, users, groups, Federated Users, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  ///
  /// > **NOTE:** We highly recommend that the `principal` _NOT_ be a Lake Formation administrator (granted using `aws.lakeformation.DataLakeSettings`). The entity (e.g., IAM role) running the deployment will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.
  ///
  /// One of the following is required:
  final pulumi.Input<String> principal;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Configuration block for a table resource. Detailed below.
  final pulumi.Input<PermissionsTable>? table;
  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  final pulumi.Input<PermissionsTableWithColumns>? tableWithColumns;

  /// Creates a new [PermissionsArgs].
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  /// [catalogResource] Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  /// [dataCellsFilter] Configuration block for a data cells filter resource. Detailed below.
  /// [dataLocation] Configuration block for a data location resource. Detailed below.
  /// [database] Configuration block for a database resource. Detailed below.
  /// [lfTag] Configuration block for an LF-tag resource. Detailed below.
  /// [lfTagPolicy] Configuration block for an LF-tag policy resource. Detailed below.
  /// [permissions] List of permissions granted to the principal. Valid values may include `ALL`, `ALTER`, `ASSOCIATE`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT`. For details on each permission, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [permissionsWithGrantOptions] Subset of `permissions` which the principal can pass.
  /// [principal] Principal to be granted the permissions on the resource. Supported principals include `IAM_ALLOWED_PRINCIPALS` (see Default Behavior and `IAMAllowedPrincipals` above), IAM roles, users, groups, Federated Users, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [table] Configuration block for a table resource. Detailed below.
  /// [tableWithColumns] Configuration block for a table with columns resource. Detailed below.
  PermissionsArgs({
    pulumi.Output<String>? catalogId,
    pulumi.Output<bool>? catalogResource,
    pulumi.Output<PermissionsDataCellsFilter>? dataCellsFilter,
    pulumi.Output<PermissionsDataLocation>? dataLocation,
    pulumi.Output<PermissionsDatabase>? database,
    pulumi.Output<PermissionsLfTag>? lfTag,
    pulumi.Output<PermissionsLfTagPolicy>? lfTagPolicy,
    required pulumi.Output<List<String>> permissions,
    pulumi.Output<List<String>>? permissionsWithGrantOptions,
    required pulumi.Output<String> principal,
    pulumi.Output<String>? region,
    pulumi.Output<PermissionsTable>? table,
    pulumi.Output<PermissionsTableWithColumns>? tableWithColumns,
  }) :
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      catalogResource = pulumi.Input.asOptionalInput<bool>(catalogResource),
      dataCellsFilter = pulumi.Input.asOptionalInput<PermissionsDataCellsFilter>(dataCellsFilter),
      dataLocation = pulumi.Input.asOptionalInput<PermissionsDataLocation>(dataLocation),
      database = pulumi.Input.asOptionalInput<PermissionsDatabase>(database),
      lfTag = pulumi.Input.asOptionalInput<PermissionsLfTag>(lfTag),
      lfTagPolicy = pulumi.Input.asOptionalInput<PermissionsLfTagPolicy>(lfTagPolicy),
      permissions = pulumi.Input.asInput<List<String>>(permissions),
      permissionsWithGrantOptions = pulumi.Input.asOptionalInput<List<String>>(permissionsWithGrantOptions),
      principal = pulumi.Input.asInput<String>(principal),
      region = pulumi.Input.asOptionalInput<String>(region),
      table = pulumi.Input.asOptionalInput<PermissionsTable>(table),
      tableWithColumns = pulumi.Input.asOptionalInput<PermissionsTableWithColumns>(tableWithColumns);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'catalogResource': ?catalogResource,
      'dataCellsFilter': ?pulumi.Input.mapOptionalInputValue<PermissionsDataCellsFilter, Map<String, dynamic>>(dataCellsFilter, (value) => value.toMap()),
      'dataLocation': ?pulumi.Input.mapOptionalInputValue<PermissionsDataLocation, Map<String, dynamic>>(dataLocation, (value) => value.toMap()),
      'database': ?pulumi.Input.mapOptionalInputValue<PermissionsDatabase, Map<String, dynamic>>(database, (value) => value.toMap()),
      'lfTag': ?pulumi.Input.mapOptionalInputValue<PermissionsLfTag, Map<String, dynamic>>(lfTag, (value) => value.toMap()),
      'lfTagPolicy': ?pulumi.Input.mapOptionalInputValue<PermissionsLfTagPolicy, Map<String, dynamic>>(lfTagPolicy, (value) => value.toMap()),
      'permissions': permissions,
      'permissionsWithGrantOptions': ?permissionsWithGrantOptions,
      'principal': principal,
      'region': ?region,
      'table': ?pulumi.Input.mapOptionalInputValue<PermissionsTable, Map<String, dynamic>>(table, (value) => value.toMap()),
      'tableWithColumns': ?pulumi.Input.mapOptionalInputValue<PermissionsTableWithColumns, Map<String, dynamic>>(tableWithColumns, (value) => value.toMap()),
    };
  }

  factory PermissionsArgs.fromMap(Map<String, dynamic> map) {
    return PermissionsArgs(
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      catalogResource: map['catalogResource'] == null ? null : pulumi.Output.create<bool>(map['catalogResource'] as bool),
      dataCellsFilter: map['dataCellsFilter'] == null ? null : pulumi.Output.create<PermissionsDataCellsFilter>(PermissionsDataCellsFilter.fromMap((map['dataCellsFilter'] as Map).cast<String, dynamic>())),
      dataLocation: map['dataLocation'] == null ? null : pulumi.Output.create<PermissionsDataLocation>(PermissionsDataLocation.fromMap((map['dataLocation'] as Map).cast<String, dynamic>())),
      database: map['database'] == null ? null : pulumi.Output.create<PermissionsDatabase>(PermissionsDatabase.fromMap((map['database'] as Map).cast<String, dynamic>())),
      lfTag: map['lfTag'] == null ? null : pulumi.Output.create<PermissionsLfTag>(PermissionsLfTag.fromMap((map['lfTag'] as Map).cast<String, dynamic>())),
      lfTagPolicy: map['lfTagPolicy'] == null ? null : pulumi.Output.create<PermissionsLfTagPolicy>(PermissionsLfTagPolicy.fromMap((map['lfTagPolicy'] as Map).cast<String, dynamic>())),
      permissions: pulumi.Output.create<List<String>>((map['permissions'] as List).cast<String>()),
      permissionsWithGrantOptions: map['permissionsWithGrantOptions'] == null ? null : pulumi.Output.create<List<String>>((map['permissionsWithGrantOptions'] as List).cast<String>()),
      principal: pulumi.Output.create<String>(map['principal'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      table: map['table'] == null ? null : pulumi.Output.create<PermissionsTable>(PermissionsTable.fromMap((map['table'] as Map).cast<String, dynamic>())),
      tableWithColumns: map['tableWithColumns'] == null ? null : pulumi.Output.create<PermissionsTableWithColumns>(PermissionsTableWithColumns.fromMap((map['tableWithColumns'] as Map).cast<String, dynamic>())),
    );
  }
}

