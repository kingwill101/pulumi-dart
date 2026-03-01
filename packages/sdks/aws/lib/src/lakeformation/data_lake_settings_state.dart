// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_lake_settings_create_database_default_permission.dart';
import 'data_lake_settings_create_table_default_permission.dart';

/// Input properties used for looking up and filtering DataLakeSettings resources.
class DataLakeSettingsState {
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
  final pulumi.Input<List<DataLakeSettingsCreateDatabaseDefaultPermission>>? createDatabaseDefaultPermissions;
  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  final pulumi.Input<List<DataLakeSettingsCreateTableDefaultPermission>>? createTableDefaultPermissions;
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

  /// Creates a new [DataLakeSettingsState].
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
  DataLakeSettingsState({
    pulumi.Output<List<String>>? admins,
    pulumi.Output<bool>? allowExternalDataFiltering,
    pulumi.Output<bool>? allowFullTableExternalDataAccess,
    pulumi.Output<List<String>>? authorizedSessionTagValueLists,
    pulumi.Output<String>? catalogId,
    pulumi.Output<List<DataLakeSettingsCreateDatabaseDefaultPermission>>? createDatabaseDefaultPermissions,
    pulumi.Output<List<DataLakeSettingsCreateTableDefaultPermission>>? createTableDefaultPermissions,
    pulumi.Output<List<String>>? externalDataFilteringAllowLists,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<List<String>>? readOnlyAdmins,
    pulumi.Output<String>? region,
    pulumi.Output<List<String>>? trustedResourceOwners,
  }) :
      admins = pulumi.Input.asOptionalInput<List<String>>(admins),
      allowExternalDataFiltering = pulumi.Input.asOptionalInput<bool>(allowExternalDataFiltering),
      allowFullTableExternalDataAccess = pulumi.Input.asOptionalInput<bool>(allowFullTableExternalDataAccess),
      authorizedSessionTagValueLists = pulumi.Input.asOptionalInput<List<String>>(authorizedSessionTagValueLists),
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      createDatabaseDefaultPermissions = pulumi.Input.asOptionalInput<List<DataLakeSettingsCreateDatabaseDefaultPermission>>(createDatabaseDefaultPermissions),
      createTableDefaultPermissions = pulumi.Input.asOptionalInput<List<DataLakeSettingsCreateTableDefaultPermission>>(createTableDefaultPermissions),
      externalDataFilteringAllowLists = pulumi.Input.asOptionalInput<List<String>>(externalDataFilteringAllowLists),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      readOnlyAdmins = pulumi.Input.asOptionalInput<List<String>>(readOnlyAdmins),
      region = pulumi.Input.asOptionalInput<String>(region),
      trustedResourceOwners = pulumi.Input.asOptionalInput<List<String>>(trustedResourceOwners);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admins': ?admins,
      'allowExternalDataFiltering': ?allowExternalDataFiltering,
      'allowFullTableExternalDataAccess': ?allowFullTableExternalDataAccess,
      'authorizedSessionTagValueLists': ?authorizedSessionTagValueLists,
      'catalogId': ?catalogId,
      'createDatabaseDefaultPermissions': ?pulumi.Input.mapOptionalInputValue<List<DataLakeSettingsCreateDatabaseDefaultPermission>, List<Map<String, dynamic>>>(createDatabaseDefaultPermissions, (value) => pulumi.Input.encodeList<DataLakeSettingsCreateDatabaseDefaultPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTableDefaultPermissions': ?pulumi.Input.mapOptionalInputValue<List<DataLakeSettingsCreateTableDefaultPermission>, List<Map<String, dynamic>>>(createTableDefaultPermissions, (value) => pulumi.Input.encodeList<DataLakeSettingsCreateTableDefaultPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'externalDataFilteringAllowLists': ?externalDataFilteringAllowLists,
      'parameters': ?parameters,
      'readOnlyAdmins': ?readOnlyAdmins,
      'region': ?region,
      'trustedResourceOwners': ?trustedResourceOwners,
    };
  }

  factory DataLakeSettingsState.fromMap(Map<String, dynamic> map) {
    return DataLakeSettingsState(
      admins: map['admins'] == null ? null : pulumi.Output.create<List<String>>((map['admins'] as List).cast<String>()),
      allowExternalDataFiltering: map['allowExternalDataFiltering'] == null ? null : pulumi.Output.create<bool>(map['allowExternalDataFiltering'] as bool),
      allowFullTableExternalDataAccess: map['allowFullTableExternalDataAccess'] == null ? null : pulumi.Output.create<bool>(map['allowFullTableExternalDataAccess'] as bool),
      authorizedSessionTagValueLists: map['authorizedSessionTagValueLists'] == null ? null : pulumi.Output.create<List<String>>((map['authorizedSessionTagValueLists'] as List).cast<String>()),
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      createDatabaseDefaultPermissions: map['createDatabaseDefaultPermissions'] == null ? null : pulumi.Output.create<List<DataLakeSettingsCreateDatabaseDefaultPermission>>(pulumi.Input.decodeList<DataLakeSettingsCreateDatabaseDefaultPermission>(map['createDatabaseDefaultPermissions'], (value) => DataLakeSettingsCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))),
      createTableDefaultPermissions: map['createTableDefaultPermissions'] == null ? null : pulumi.Output.create<List<DataLakeSettingsCreateTableDefaultPermission>>(pulumi.Input.decodeList<DataLakeSettingsCreateTableDefaultPermission>(map['createTableDefaultPermissions'], (value) => DataLakeSettingsCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))),
      externalDataFilteringAllowLists: map['externalDataFilteringAllowLists'] == null ? null : pulumi.Output.create<List<String>>((map['externalDataFilteringAllowLists'] as List).cast<String>()),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      readOnlyAdmins: map['readOnlyAdmins'] == null ? null : pulumi.Output.create<List<String>>((map['readOnlyAdmins'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      trustedResourceOwners: map['trustedResourceOwners'] == null ? null : pulumi.Output.create<List<String>>((map['trustedResourceOwners'] as List).cast<String>()),
    );
  }
}

