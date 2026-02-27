// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../permissions_data_cells_filter/permissions_data_cells_filter.dart';
import '../permissions_data_location/permissions_data_location.dart';
import '../permissions_database/permissions_database.dart';
import '../permissions_lf_tag/permissions_lf_tag.dart';
import '../permissions_lf_tag_policy/permissions_lf_tag_policy.dart';
import '../permissions_table/permissions_table.dart';
import '../permissions_table_with_columns/permissions_table_with_columns.dart';

/// The set of arguments for Permissions.
class PermissionsArgs {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  final Input<String>? catalogId;

  /// Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  final Input<bool>? catalogResource;

  /// Configuration block for a data cells filter resource. Detailed below.
  final Input<PermissionsDataCellsFilter>? dataCellsFilter;

  /// Configuration block for a data location resource. Detailed below.
  final Input<PermissionsDataLocation>? dataLocation;

  /// Configuration block for a database resource. Detailed below.
  final Input<PermissionsDatabase>? database;

  /// Configuration block for an LF-tag resource. Detailed below.
  final Input<PermissionsLfTag>? lfTag;

  /// Configuration block for an LF-tag policy resource. Detailed below.
  final Input<PermissionsLfTagPolicy>? lfTagPolicy;

  /// List of permissions granted to the principal. Valid values may include `ALL`, `ALTER`, `ASSOCIATE`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT`. For details on each permission, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  final Input<List<String>> permissions;

  /// Subset of `permissions` which the principal can pass.
  final Input<List<String>>? permissionsWithGrantOptions;

  /// Principal to be granted the permissions on the resource. Supported principals include `IAM_ALLOWED_PRINCIPALS` (see Default Behavior and `IAMAllowedPrincipals` above), IAM roles, users, groups, Federated Users, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  ///
  /// > **NOTE:** We highly recommend that the `principal` _NOT_ be a Lake Formation administrator (granted using `aws.lakeformation.DataLakeSettings`). The entity (e.g., IAM role) running the deployment will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.
  ///
  /// One of the following is required:
  final Input<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for a table resource. Detailed below.
  final Input<PermissionsTable>? table;

  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  final Input<PermissionsTableWithColumns>? tableWithColumns;

  PermissionsArgs({
    this.catalogId,
    this.catalogResource,
    this.dataCellsFilter,
    this.dataLocation,
    this.database,
    this.lfTag,
    this.lfTagPolicy,
    required this.permissions,
    this.permissionsWithGrantOptions,
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
          PermissionsDataCellsFilter,
          Map<String, dynamic>>(dataCellsFilterValue, (value) => value.toMap());
    }
    final dataLocationValue = dataLocation;
    if (dataLocationValue != null) {
      map['dataLocation'] = Input.mapOptionalInputValue<PermissionsDataLocation,
          Map<String, dynamic>>(dataLocationValue, (value) => value.toMap());
    }
    final databaseValue = database;
    if (databaseValue != null) {
      map['database'] = Input.mapOptionalInputValue<PermissionsDatabase,
          Map<String, dynamic>>(databaseValue, (value) => value.toMap());
    }
    final lfTagValue = lfTag;
    if (lfTagValue != null) {
      map['lfTag'] =
          Input.mapOptionalInputValue<PermissionsLfTag, Map<String, dynamic>>(
              lfTagValue, (value) => value.toMap());
    }
    final lfTagPolicyValue = lfTagPolicy;
    if (lfTagPolicyValue != null) {
      map['lfTagPolicy'] = Input.mapOptionalInputValue<PermissionsLfTagPolicy,
          Map<String, dynamic>>(lfTagPolicyValue, (value) => value.toMap());
    }
    map['permissions'] = permissions;
    final permissionsWithGrantOptionsValue = permissionsWithGrantOptions;
    if (permissionsWithGrantOptionsValue != null) {
      map['permissionsWithGrantOptions'] = permissionsWithGrantOptionsValue;
    }
    map['principal'] = principal;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] =
          Input.mapOptionalInputValue<PermissionsTable, Map<String, dynamic>>(
              tableValue, (value) => value.toMap());
    }
    final tableWithColumnsValue = tableWithColumns;
    if (tableWithColumnsValue != null) {
      map['tableWithColumns'] = Input.mapOptionalInputValue<
              PermissionsTableWithColumns, Map<String, dynamic>>(
          tableWithColumnsValue, (value) => value.toMap());
    }
    return map;
  }

  factory PermissionsArgs.fromMap(Map<String, dynamic> map) {
    return PermissionsArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      catalogResource: Input.asOptionalInput<bool>(map['catalogResource']),
      dataCellsFilter: Input.asOptionalInput<PermissionsDataCellsFilter>(
          map['dataCellsFilter']),
      dataLocation:
          Input.asOptionalInput<PermissionsDataLocation>(map['dataLocation']),
      database: Input.asOptionalInput<PermissionsDatabase>(map['database']),
      lfTag: Input.asOptionalInput<PermissionsLfTag>(map['lfTag']),
      lfTagPolicy:
          Input.asOptionalInput<PermissionsLfTagPolicy>(map['lfTagPolicy']),
      permissions: Input.asInput<List<String>>(map['permissions']),
      permissionsWithGrantOptions: Input.asOptionalInput<List<String>>(
          map['permissionsWithGrantOptions']),
      principal: Input.asInput<String>(map['principal']),
      region: Input.asOptionalInput<String>(map['region']),
      table: Input.asOptionalInput<PermissionsTable>(map['table']),
      tableWithColumns: Input.asOptionalInput<PermissionsTableWithColumns>(
          map['tableWithColumns']),
    );
  }
}
