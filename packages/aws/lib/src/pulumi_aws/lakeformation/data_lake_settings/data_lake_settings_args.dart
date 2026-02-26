// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_lake_settings_create_database_default_permission/data_lake_settings_create_database_default_permission.dart';
import '../data_lake_settings_create_table_default_permission/data_lake_settings_create_table_default_permission.dart';

/// The set of arguments for DataLakeSettings.
class DataLakeSettingsArgs {
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  final Input<List<String>>? admins;

  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  final Input<bool>? allowExternalDataFiltering;

  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  final Input<bool>? allowFullTableExternalDataAccess;

  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  final Input<List<String>>? authorizedSessionTagValueLists;

  /// Identifier for the Data Catalog. By default, the account ID.
  final Input<String>? catalogId;

  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  final Input<List<DataLakeSettingsCreateDatabaseDefaultPermission>>?
      createDatabaseDefaultPermissions;

  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  final Input<List<DataLakeSettingsCreateTableDefaultPermission>>?
      createTableDefaultPermissions;

  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  final Input<List<String>>? externalDataFilteringAllowLists;

  /// Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  final Input<Map<String, String>>? parameters;

  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  final Input<List<String>>? readOnlyAdmins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  ///
  /// > **NOTE:** Although optional, not including <span pulumi-lang-nodejs="`admins`" pulumi-lang-dotnet="`Admins`" pulumi-lang-go="`admins`" pulumi-lang-python="`admins`" pulumi-lang-yaml="`admins`" pulumi-lang-java="`admins`">`admins`</span>, <span pulumi-lang-nodejs="`createDatabaseDefaultPermissions`" pulumi-lang-dotnet="`CreateDatabaseDefaultPermissions`" pulumi-lang-go="`createDatabaseDefaultPermissions`" pulumi-lang-python="`create_database_default_permissions`" pulumi-lang-yaml="`createDatabaseDefaultPermissions`" pulumi-lang-java="`createDatabaseDefaultPermissions`">`create_database_default_permissions`</span>, <span pulumi-lang-nodejs="`createTableDefaultPermissions`" pulumi-lang-dotnet="`CreateTableDefaultPermissions`" pulumi-lang-go="`createTableDefaultPermissions`" pulumi-lang-python="`create_table_default_permissions`" pulumi-lang-yaml="`createTableDefaultPermissions`" pulumi-lang-java="`createTableDefaultPermissions`">`create_table_default_permissions`</span>, <span pulumi-lang-nodejs="`parameters`" pulumi-lang-dotnet="`Parameters`" pulumi-lang-go="`parameters`" pulumi-lang-python="`parameters`" pulumi-lang-yaml="`parameters`" pulumi-lang-java="`parameters`">`parameters`</span>, and/or <span pulumi-lang-nodejs="`trustedResourceOwners`" pulumi-lang-dotnet="`TrustedResourceOwners`" pulumi-lang-go="`trustedResourceOwners`" pulumi-lang-python="`trusted_resource_owners`" pulumi-lang-yaml="`trustedResourceOwners`" pulumi-lang-java="`trustedResourceOwners`">`trusted_resource_owners`</span> results in the setting being cleared.
  final Input<List<String>>? trustedResourceOwners;

  DataLakeSettingsArgs({
    this.admins,
    this.allowExternalDataFiltering,
    this.allowFullTableExternalDataAccess,
    this.authorizedSessionTagValueLists,
    this.catalogId,
    this.createDatabaseDefaultPermissions,
    this.createTableDefaultPermissions,
    this.externalDataFilteringAllowLists,
    this.parameters,
    this.readOnlyAdmins,
    this.region,
    this.trustedResourceOwners,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final adminsValue = admins;
    if (adminsValue != null) {
      map['admins'] = adminsValue;
    }
    final allowExternalDataFilteringValue = allowExternalDataFiltering;
    if (allowExternalDataFilteringValue != null) {
      map['allowExternalDataFiltering'] = allowExternalDataFilteringValue;
    }
    final allowFullTableExternalDataAccessValue =
        allowFullTableExternalDataAccess;
    if (allowFullTableExternalDataAccessValue != null) {
      map['allowFullTableExternalDataAccess'] =
          allowFullTableExternalDataAccessValue;
    }
    final authorizedSessionTagValueListsValue = authorizedSessionTagValueLists;
    if (authorizedSessionTagValueListsValue != null) {
      map['authorizedSessionTagValueLists'] =
          authorizedSessionTagValueListsValue;
    }
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final createDatabaseDefaultPermissionsValue =
        createDatabaseDefaultPermissions;
    if (createDatabaseDefaultPermissionsValue != null) {
      map['createDatabaseDefaultPermissions'] = Input.mapOptionalInputValue<
              List<DataLakeSettingsCreateDatabaseDefaultPermission>,
              List<Map<String, dynamic>>>(
          createDatabaseDefaultPermissionsValue,
          (value) => Input.encodeList<
              DataLakeSettingsCreateDatabaseDefaultPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final createTableDefaultPermissionsValue = createTableDefaultPermissions;
    if (createTableDefaultPermissionsValue != null) {
      map['createTableDefaultPermissions'] = Input.mapOptionalInputValue<
              List<DataLakeSettingsCreateTableDefaultPermission>,
              List<Map<String, dynamic>>>(
          createTableDefaultPermissionsValue,
          (value) => Input.encodeList<
              DataLakeSettingsCreateTableDefaultPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final externalDataFilteringAllowListsValue =
        externalDataFilteringAllowLists;
    if (externalDataFilteringAllowListsValue != null) {
      map['externalDataFilteringAllowLists'] =
          externalDataFilteringAllowListsValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final readOnlyAdminsValue = readOnlyAdmins;
    if (readOnlyAdminsValue != null) {
      map['readOnlyAdmins'] = readOnlyAdminsValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final trustedResourceOwnersValue = trustedResourceOwners;
    if (trustedResourceOwnersValue != null) {
      map['trustedResourceOwners'] = trustedResourceOwnersValue;
    }
    return map;
  }

  factory DataLakeSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DataLakeSettingsArgs(
      admins: Input.asOptionalInput<List<String>>(map['admins']),
      allowExternalDataFiltering:
          Input.asOptionalInput<bool>(map['allowExternalDataFiltering']),
      allowFullTableExternalDataAccess:
          Input.asOptionalInput<bool>(map['allowFullTableExternalDataAccess']),
      authorizedSessionTagValueLists: Input.asOptionalInput<List<String>>(
          map['authorizedSessionTagValueLists']),
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      createDatabaseDefaultPermissions: Input.asOptionalInput<
              List<DataLakeSettingsCreateDatabaseDefaultPermission>>(
          map['createDatabaseDefaultPermissions']),
      createTableDefaultPermissions: Input.asOptionalInput<
              List<DataLakeSettingsCreateTableDefaultPermission>>(
          map['createTableDefaultPermissions']),
      externalDataFilteringAllowLists: Input.asOptionalInput<List<String>>(
          map['externalDataFilteringAllowLists']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      readOnlyAdmins:
          Input.asOptionalInput<List<String>>(map['readOnlyAdmins']),
      region: Input.asOptionalInput<String>(map['region']),
      trustedResourceOwners:
          Input.asOptionalInput<List<String>>(map['trustedResourceOwners']),
    );
  }
}
