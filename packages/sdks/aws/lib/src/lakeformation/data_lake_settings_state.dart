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
  /// &gt; **NOTE:** Although optional, not including `admins`, `create_database_default_permissions`, `create_table_default_permissions`, `parameters`, and/or `trusted_resource_owners` results in the setting being cleared.
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
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowExternalDataFiltering: (() { final guardedValue = map['allowExternalDataFiltering']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowFullTableExternalDataAccess: (() { final guardedValue = map['allowFullTableExternalDataAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      authorizedSessionTagValueLists: (() { final guardedValue = map['authorizedSessionTagValueLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createDatabaseDefaultPermissions: (() { final guardedValue = map['createDatabaseDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataLakeSettingsCreateDatabaseDefaultPermission>(guardedValue, (value) => DataLakeSettingsCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTableDefaultPermissions: (() { final guardedValue = map['createTableDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DataLakeSettingsCreateTableDefaultPermission>(guardedValue, (value) => DataLakeSettingsCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      externalDataFilteringAllowLists: (() { final guardedValue = map['externalDataFilteringAllowLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      readOnlyAdmins: (() { final guardedValue = map['readOnlyAdmins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustedResourceOwners: (() { final guardedValue = map['trustedResourceOwners']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

