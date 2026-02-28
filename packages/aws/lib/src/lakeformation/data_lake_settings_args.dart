// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_settings_create_database_default_permission.dart';
import 'data_lake_settings_create_table_default_permission.dart';

/// {@template pulumi_lakeformation_data_lake_settings_data_lake_settings_args_doc}
/// The set of arguments for DataLakeSettings.
/// {@endtemplate}
/// {@macro pulumi_lakeformation_data_lake_settings_data_lake_settings_args_doc}
class DataLakeSettingsArgs {
  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  final pulumi.Input<List<String>>? admins;

  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  final pulumi.Input<bool>? allowExternalDataFiltering;

  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  final pulumi.Input<bool>? allowFullTableExternalDataAccess;

  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  final pulumi.Input<List<String>>? authorizedSessionTagValueLists;

  /// Identifier for the Data Catalog. By default, the account ID.
  final pulumi.Input<String>? catalogId;

  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  final pulumi.Input<List<DataLakeSettingsCreateDatabaseDefaultPermission>>?
      createDatabaseDefaultPermissions;

  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  final pulumi.Input<List<DataLakeSettingsCreateTableDefaultPermission>>?
      createTableDefaultPermissions;

  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  final pulumi.Input<List<String>>? externalDataFilteringAllowLists;

  /// Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  final pulumi.Input<List<String>>? readOnlyAdmins;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  ///
  /// > **NOTE:** Although optional, not including `admins`, `create_database_default_permissions`, `create_table_default_permissions`, `parameters`, and/or `trusted_resource_owners` results in the setting being cleared.
  final pulumi.Input<List<String>>? trustedResourceOwners;

  /// Creates a new [DataLakeSettingsArgs].
  /// [admins] Set of ARNs of AWS Lake Formation principals (IAM users or roles).
  /// [allowExternalDataFiltering] Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  /// [allowFullTableExternalDataAccess] Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  /// [authorizedSessionTagValueLists] Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  /// [catalogId] Identifier for the Data Catalog. By default, the account ID.
  /// [createDatabaseDefaultPermissions] Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  /// [createTableDefaultPermissions] Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  /// [externalDataFilteringAllowLists] A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  /// [parameters] Key-value map of additional configuration. Valid values for the `CROSS_ACCOUNT_VERSION` key are `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` is also returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`. Destroying this resource sets the `CROSS_ACCOUNT_VERSION` to `"1"`.
  /// [readOnlyAdmins] Set of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [trustedResourceOwners] List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  DataLakeSettingsArgs({
    List<String>? admins,
    bool? allowExternalDataFiltering,
    bool? allowFullTableExternalDataAccess,
    List<String>? authorizedSessionTagValueLists,
    String? catalogId,
    List<DataLakeSettingsCreateDatabaseDefaultPermission>?
        createDatabaseDefaultPermissions,
    List<DataLakeSettingsCreateTableDefaultPermission>?
        createTableDefaultPermissions,
    List<String>? externalDataFilteringAllowLists,
    Map<String, String>? parameters,
    List<String>? readOnlyAdmins,
    String? region,
    List<String>? trustedResourceOwners,
  })  : admins = pulumi.Input.asOptionalInput<List<String>>(admins),
        allowExternalDataFiltering =
            pulumi.Input.asOptionalInput<bool>(allowExternalDataFiltering),
        allowFullTableExternalDataAccess = pulumi.Input.asOptionalInput<bool>(
            allowFullTableExternalDataAccess),
        authorizedSessionTagValueLists =
            pulumi.Input.asOptionalInput<List<String>>(
                authorizedSessionTagValueLists),
        catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
        createDatabaseDefaultPermissions = pulumi.Input.asOptionalInput<
                List<DataLakeSettingsCreateDatabaseDefaultPermission>>(
            createDatabaseDefaultPermissions),
        createTableDefaultPermissions = pulumi.Input.asOptionalInput<
                List<DataLakeSettingsCreateTableDefaultPermission>>(
            createTableDefaultPermissions),
        externalDataFilteringAllowLists =
            pulumi.Input.asOptionalInput<List<String>>(
                externalDataFilteringAllowLists),
        parameters =
            pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
        readOnlyAdmins =
            pulumi.Input.asOptionalInput<List<String>>(readOnlyAdmins),
        region = pulumi.Input.asOptionalInput<String>(region),
        trustedResourceOwners =
            pulumi.Input.asOptionalInput<List<String>>(trustedResourceOwners);

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
      map['createDatabaseDefaultPermissions'] =
          pulumi.Input.mapOptionalInputValue<
                  List<DataLakeSettingsCreateDatabaseDefaultPermission>,
                  List<Map<String, dynamic>>>(
              createDatabaseDefaultPermissionsValue,
              (value) => pulumi.Input.encodeList<
                  DataLakeSettingsCreateDatabaseDefaultPermission,
                  Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final createTableDefaultPermissionsValue = createTableDefaultPermissions;
    if (createTableDefaultPermissionsValue != null) {
      map['createTableDefaultPermissions'] = pulumi.Input.mapOptionalInputValue<
              List<DataLakeSettingsCreateTableDefaultPermission>,
              List<Map<String, dynamic>>>(
          createTableDefaultPermissionsValue,
          (value) => pulumi.Input.encodeList<
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
      admins:
          map['admins'] == null ? null : (map['admins'] as List).cast<String>(),
      allowExternalDataFiltering: map['allowExternalDataFiltering'] == null
          ? null
          : map['allowExternalDataFiltering'] as bool,
      allowFullTableExternalDataAccess:
          map['allowFullTableExternalDataAccess'] == null
              ? null
              : map['allowFullTableExternalDataAccess'] as bool,
      authorizedSessionTagValueLists:
          map['authorizedSessionTagValueLists'] == null
              ? null
              : (map['authorizedSessionTagValueLists'] as List).cast<String>(),
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      createDatabaseDefaultPermissions:
          map['createDatabaseDefaultPermissions'] == null
              ? null
              : pulumi.Input.decodeList<
                      DataLakeSettingsCreateDatabaseDefaultPermission>(
                  map['createDatabaseDefaultPermissions'],
                  (value) =>
                      DataLakeSettingsCreateDatabaseDefaultPermission.fromMap(
                          (value as Map).cast<String, dynamic>())),
      createTableDefaultPermissions: map['createTableDefaultPermissions'] ==
              null
          ? null
          : pulumi.Input.decodeList<
                  DataLakeSettingsCreateTableDefaultPermission>(
              map['createTableDefaultPermissions'],
              (value) => DataLakeSettingsCreateTableDefaultPermission.fromMap(
                  (value as Map).cast<String, dynamic>())),
      externalDataFilteringAllowLists:
          map['externalDataFilteringAllowLists'] == null
              ? null
              : (map['externalDataFilteringAllowLists'] as List).cast<String>(),
      parameters: map['parameters'] == null
          ? null
          : (map['parameters'] as Map).cast<String, String>(),
      readOnlyAdmins: map['readOnlyAdmins'] == null
          ? null
          : (map['readOnlyAdmins'] as List).cast<String>(),
      region: map['region'] == null ? null : map['region'] as String,
      trustedResourceOwners: map['trustedResourceOwners'] == null
          ? null
          : (map['trustedResourceOwners'] as List).cast<String>(),
    );
  }
}
