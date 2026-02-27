import 'package:pulumi/pulumi.dart';
import '../data_lake_settings_create_database_default_permission/data_lake_settings_create_database_default_permission.dart';
import '../data_lake_settings_create_table_default_permission/data_lake_settings_create_table_default_permission.dart';
import 'data_lake_settings_args.dart';

/// Manages Lake Formation principals designated as data lake administrators and lists of principal permission entries for default create database and default create table permissions.
///
/// > **NOTE:** Lake Formation introduces fine-grained access control for data in your data lake. Part of the changes include the `IAMAllowedPrincipals` principal in order to make Lake Formation backwards compatible with existing IAM and Glue permissions. For more information, see [Changing the Default Security Settings for Your Data Lake](https://docs.aws.amazon.com/lake-formation/latest/dg/change-settings.html) and [Upgrading AWS Glue Data Permissions to the AWS Lake Formation Model](https://docs.aws.amazon.com/lake-formation/latest/dg/upgrade-glue-lake-formation.html).
///
/// ## Example Usage
///
/// ### Data Lake Admins
///
///
///
/// ### Create Default Permissions
///
///
///
/// ### Enable EMR access to LakeFormation resources
///
///
///
/// ### Change Cross Account Version
class DataLakeSettings extends CustomResource {
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  late final Output<List<String>> admins;

  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  late final Output<bool?> allowExternalDataFiltering;

  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  late final Output<bool?> allowFullTableExternalDataAccess;

  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  late final Output<List<String>> authorizedSessionTagValueLists;

  /// Identifier for the Data Catalog. By default, the account ID.
  late final Output<String?> catalogId;

  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  late final Output<List<DataLakeSettingsCreateDatabaseDefaultPermission>>
      createDatabaseDefaultPermissions;

  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  late final Output<List<DataLakeSettingsCreateTableDefaultPermission>>
      createTableDefaultPermissions;

  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  late final Output<List<String>> externalDataFilteringAllowLists;

  /// Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  late final Output<Map<String, String>> parameters;

  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  late final Output<List<String>> readOnlyAdmins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  ///
  /// > **NOTE:** Although optional, not including `admins`, `create_database_default_permissions`, `create_table_default_permissions`, `parameters`, and/or `trusted_resource_owners` results in the setting being cleared.
  late final Output<List<String>> trustedResourceOwners;

  DataLakeSettings(
    String name, {
    DataLakeSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/dataLakeSettings:DataLakeSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.admins = registerOutput<List<String>>('admins');
    this.allowExternalDataFiltering =
        registerOutput<bool?>('allowExternalDataFiltering');
    this.allowFullTableExternalDataAccess =
        registerOutput<bool?>('allowFullTableExternalDataAccess');
    this.authorizedSessionTagValueLists =
        registerOutput<List<String>>('authorizedSessionTagValueLists');
    this.catalogId = registerOutput<String?>('catalogId');
    this.createDatabaseDefaultPermissions =
        registerOutput<List<DataLakeSettingsCreateDatabaseDefaultPermission>>(
            'createDatabaseDefaultPermissions');
    this.createTableDefaultPermissions =
        registerOutput<List<DataLakeSettingsCreateTableDefaultPermission>>(
            'createTableDefaultPermissions');
    this.externalDataFilteringAllowLists =
        registerOutput<List<String>>('externalDataFilteringAllowLists');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.readOnlyAdmins = registerOutput<List<String>>('readOnlyAdmins');
    this.region = registerOutput<String>('region');
    this.trustedResourceOwners =
        registerOutput<List<String>>('trustedResourceOwners');
  }
}
