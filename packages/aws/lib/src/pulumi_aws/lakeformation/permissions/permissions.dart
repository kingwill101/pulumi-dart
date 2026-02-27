import 'package:pulumi/pulumi.dart' as pulumi;
import '../permissions_data_cells_filter/permissions_data_cells_filter.dart';
import '../permissions_data_location/permissions_data_location.dart';
import '../permissions_database/permissions_database.dart';
import '../permissions_lf_tag/permissions_lf_tag.dart';
import '../permissions_lf_tag_policy/permissions_lf_tag_policy.dart';
import '../permissions_table/permissions_table.dart';
import '../permissions_table_with_columns/permissions_table_with_columns.dart';
import 'permissions_args.dart';

/// Grants permissions to the principal to access metadata in the Data Catalog and data organized in underlying data storage such as Amazon S3. Permissions are granted to a principal, in a Data Catalog, relative to a Lake Formation resource, which includes the Data Catalog, databases, tables, LF-tags, and LF-tag policies. For more information, see [Security and Access Control to Metadata and Data in Lake Formation](https://docs.aws.amazon.com/lake-formation/latest/dg/security-data-access.html).
///
/// !> **WARNING:** Lake Formation permissions are not in effect by default within AWS. Using this resource will not secure your data and will result in errors if you do not change the security settings for existing resources and the default security settings for new resources. See Default Behavior and `IAMAllowedPrincipals` for additional details.
///
/// > **NOTE:** In general, the `principal` should _NOT_ be a Lake Formation administrator or the entity (e.g., IAM role) that is running the deployment. Administrators have implicit permissions. These should be managed by granting or not granting administrator rights using `aws.lakeformation.DataLakeSettings`, _not_ with this resource.
///
/// ## Default Behavior and `IAMAllowedPrincipals`
///
/// **_Lake Formation permissions are not in effect by default within AWS._** `IAMAllowedPrincipals` (i.e., `IAM_ALLOWED_PRINCIPALS`) conflicts with individual Lake Formation permissions (i.e., non-`IAMAllowedPrincipals` permissions), will cause unexpected behavior, and may result in errors.
///
/// When using Lake Formation, choose ONE of the following options as they are mutually exclusive:
///
/// 1. Use this resource (`aws.lakeformation.Permissions`), change the default security settings using `aws.lakeformation.DataLakeSettings`, and remove existing `IAMAllowedPrincipals` permissions
/// 2. Use `IAMAllowedPrincipals` without `aws.lakeformation.Permissions`
///
/// This example shows removing the `IAMAllowedPrincipals` default security settings and making the caller a Lake Formation admin. Since `create_database_default_permissions` and `create_table_default_permissions` are not set in the `aws.lakeformation.DataLakeSettings` resource, they are cleared.
///
///
///
/// To remove existing `IAMAllowedPrincipals` permissions, use the [AWS Lake Formation Console](https://console.aws.amazon.com/lakeformation/) or [AWS CLI](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/lakeformation/batch-revoke-permissions.html).
///
/// `IAMAllowedPrincipals` is a hook to maintain backwards compatibility with AWS Glue. `IAMAllowedPrincipals` is a pseudo-entity group that acts like a Lake Formation principal. The group includes any IAM users and roles that are allowed access to your Data Catalog resources by your IAM policies.
///
/// This is Lake Formation's default behavior:
///
/// * Lake Formation grants `Super` permission to `IAMAllowedPrincipals` on all existing AWS Glue Data Catalog resources.
/// * Lake Formation enables "Use only IAM access control" for new Data Catalog resources.
///
/// For more details, see [Changing the Default Security Settings for Your Data Lake](https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html).
///
/// ### Problem Using `IAMAllowedPrincipals`
///
/// AWS does not support combining `IAMAllowedPrincipals` permissions and non-`IAMAllowedPrincipals` permissions. Doing so results in unexpected permissions and behaviors. For example, this configuration grants a user `SELECT` on a column in a table.
///
///
///
/// The resulting permissions depend on whether the table had `IAMAllowedPrincipals` (IAP) permissions or not.
///
/// | Result With IAP | Result Without IAP |
/// | ---- | ---- |
/// | `SELECT` column wildcard (i.e., all columns) | `SELECT` on `"event"` (as expected) |
///
/// ## `ALLIAMPrincipals` group
///
/// AllIAMPrincipals is a pseudo-entity group that acts like a Lake Formation principal. The group includes all IAMs in the account that is defined.
///
///
///
/// ## Using Lake Formation Permissions
///
/// Lake Formation grants implicit permissions to data lake administrators, database creators, and table creators. These implicit permissions cannot be revoked _per se_. If this resource reads implicit permissions, it will attempt to revoke them, which causes an error when the resource is destroyed.
///
/// There are two ways to avoid these errors. First, and the way we recommend, is to avoid using this resource with principals that have implicit permissions. A second, error-prone option, is to grant explicit permissions (and `permissions_with_grant_option`) to "overwrite" a principal's implicit permissions, which you can then revoke with this resource. For more information, see [Implicit Lake Formation Permissions](https://docs.aws.amazon.com/lake-formation/latest/dg/implicit-permissions.html).
///
/// If the `principal` is also a data lake administrator, AWS grants implicit permissions that can cause errors using this resource. For example, AWS implicitly grants a `principal`/administrator `permissions` and `permissions_with_grant_option` of `ALL`, `ALTER`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT` on a table. If you use this resource to explicitly grant the `principal`/administrator `permissions` but _not_ `permissions_with_grant_option` of `ALL`, `ALTER`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT` on the table, this resource will read the implicit `permissions_with_grant_option` and attempt to revoke them when the resource is destroyed. Doing so will cause an `InvalidInputException: No permissions revoked` error because you cannot revoke implicit permissions _per se_. To workaround this problem, explicitly grant the `principal`/administrator `permissions` _and_ `permissions_with_grant_option`, which can then be revoked. Similarly, granting a `principal`/administrator permissions on a table with columns and providing `column_names`, will result in a `InvalidInputException: Permissions modification is invalid` error because you are narrowing the implicit permissions. Instead, set `wildcard` to `true` and remove the `column_names`.
///
/// ## Example Usage
///
/// ### Grant Permissions For A Lake Formation S3 Resource
///
///
///
/// ### Grant Permissions For A Glue Catalog Database
///
///
///
/// ### Grant Permissions Using Tag-Based Access Control
class Permissions extends pulumi.CustomResource {
  /// Identifier for the Data Catalog. By default, the account ID. The Data Catalog is the persistent metadata store. It contains database definitions, table definitions, and other control information to manage your Lake Formation environment.
  late final pulumi.Output<String?> catalogId;

  /// Whether the permissions are to be granted for the Data Catalog. Defaults to `false`.
  late final pulumi.Output<bool?> catalogResource;

  /// Configuration block for a data cells filter resource. Detailed below.
  late final pulumi.Output<PermissionsDataCellsFilter?> dataCellsFilter;

  /// Configuration block for a data location resource. Detailed below.
  late final pulumi.Output<PermissionsDataLocation> dataLocation;

  /// Configuration block for a database resource. Detailed below.
  late final pulumi.Output<PermissionsDatabase> database;

  /// Configuration block for an LF-tag resource. Detailed below.
  late final pulumi.Output<PermissionsLfTag> lfTag;

  /// Configuration block for an LF-tag policy resource. Detailed below.
  late final pulumi.Output<PermissionsLfTagPolicy> lfTagPolicy;

  /// List of permissions granted to the principal. Valid values may include `ALL`, `ALTER`, `ASSOCIATE`, `CREATE_DATABASE`, `CREATE_TABLE`, `DATA_LOCATION_ACCESS`, `DELETE`, `DESCRIBE`, `DROP`, `INSERT`, and `SELECT`. For details on each permission, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  late final pulumi.Output<List<String>> permissions;

  /// Subset of `permissions` which the principal can pass.
  late final pulumi.Output<List<String>> permissionsWithGrantOptions;

  /// Principal to be granted the permissions on the resource. Supported principals include `IAM_ALLOWED_PRINCIPALS` (see Default Behavior and `IAMAllowedPrincipals` above), IAM roles, users, groups, Federated Users, SAML groups and users, QuickSight groups, OUs, and organizations as well as AWS account IDs for cross-account permissions. For more information, see [Lake Formation Permissions Reference](https://docs.aws.amazon.com/lake-formation/latest/dg/lf-permissions-reference.html).
  ///
  /// > **NOTE:** We highly recommend that the `principal` _NOT_ be a Lake Formation administrator (granted using `aws.lakeformation.DataLakeSettings`). The entity (e.g., IAM role) running the deployment will most likely need to be a Lake Formation administrator. As such, the entity will have implicit permissions and does not need permissions granted through this resource.
  ///
  /// One of the following is required:
  late final pulumi.Output<String> principal;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Configuration block for a table resource. Detailed below.
  late final pulumi.Output<PermissionsTable> table;

  /// Configuration block for a table with columns resource. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<PermissionsTableWithColumns> tableWithColumns;

  Permissions(
    String name, {
    PermissionsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/permissions:Permissions',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String?>('catalogId');
    this.catalogResource = registerOutput<bool?>('catalogResource');
    this.dataCellsFilter =
        registerOutput<PermissionsDataCellsFilter?>('dataCellsFilter');
    this.dataLocation = registerOutput<PermissionsDataLocation>('dataLocation');
    this.database = registerOutput<PermissionsDatabase>('database');
    this.lfTag = registerOutput<PermissionsLfTag>('lfTag');
    this.lfTagPolicy = registerOutput<PermissionsLfTagPolicy>('lfTagPolicy');
    this.permissions = registerOutput<List<String>>('permissions');
    this.permissionsWithGrantOptions =
        registerOutput<List<String>>('permissionsWithGrantOptions');
    this.principal = registerOutput<String>('principal');
    this.region = registerOutput<String>('region');
    this.table = registerOutput<PermissionsTable>('table');
    this.tableWithColumns =
        registerOutput<PermissionsTableWithColumns>('tableWithColumns');
  }
}
