// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_lake_settings_create_database_default_permission.dart';
import 'get_data_lake_settings_create_table_default_permission.dart';

/// Result data returned by getDataLakeSettings.
class GetDataLakeSettingsResult {
  /// List of ARNs of AWS Lake Formation principals (IAM users or roles).
  final List<String>? admins;
  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  final bool? allowExternalDataFiltering;
  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  final bool? allowFullTableExternalDataAccess;
  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  final List<String>? authorizedSessionTagValueLists;
  final String? catalogId;
  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  final List<GetDataLakeSettingsCreateDatabaseDefaultPermission>? createDatabaseDefaultPermissions;
  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  final List<GetDataLakeSettingsCreateTableDefaultPermission>? createTableDefaultPermissions;
  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  final List<String>? externalDataFilteringAllowLists;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Key-value map of additional configuration. `CROSS_ACCOUNT_VERSION` will be set to values `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` will also be returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`.
  final Map<String, String>? parameters;
  /// List of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  final List<String>? readOnlyAdmins;
  final String? region;
  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  final List<String>? trustedResourceOwners;

  /// Creates a new [GetDataLakeSettingsResult].
  /// [admins] List of ARNs of AWS Lake Formation principals (IAM users or roles).
  /// [allowExternalDataFiltering] Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  /// [allowFullTableExternalDataAccess] Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  /// [authorizedSessionTagValueLists] Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  /// [catalogId] Optional.
  /// [createDatabaseDefaultPermissions] Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  /// [createTableDefaultPermissions] Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  /// [externalDataFilteringAllowLists] A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] Key-value map of additional configuration. `CROSS_ACCOUNT_VERSION` will be set to values `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` will also be returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`.
  /// [readOnlyAdmins] List of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  /// [region] Optional.
  /// [trustedResourceOwners] List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  const GetDataLakeSettingsResult({
    this.admins,
    this.allowExternalDataFiltering,
    this.allowFullTableExternalDataAccess,
    this.authorizedSessionTagValueLists,
    this.catalogId,
    this.createDatabaseDefaultPermissions,
    this.createTableDefaultPermissions,
    this.externalDataFilteringAllowLists,
    this.id,
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
      'createDatabaseDefaultPermissions': ?(() { final guardedValue = createDatabaseDefaultPermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataLakeSettingsCreateDatabaseDefaultPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTableDefaultPermissions': ?(() { final guardedValue = createTableDefaultPermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataLakeSettingsCreateTableDefaultPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'externalDataFilteringAllowLists': ?externalDataFilteringAllowLists,
      'id': ?id,
      'parameters': ?parameters,
      'readOnlyAdmins': ?readOnlyAdmins,
      'region': ?region,
      'trustedResourceOwners': ?trustedResourceOwners,
    };
  }

  factory GetDataLakeSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsResult(
      admins: (() { final guardedValue = map['admins']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      allowExternalDataFiltering: (() { final guardedValue = map['allowExternalDataFiltering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      allowFullTableExternalDataAccess: (() { final guardedValue = map['allowFullTableExternalDataAccess']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      authorizedSessionTagValueLists: (() { final guardedValue = map['authorizedSessionTagValueLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createDatabaseDefaultPermissions: (() { final guardedValue = map['createDatabaseDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataLakeSettingsCreateDatabaseDefaultPermission>(guardedValue, (value) => GetDataLakeSettingsCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTableDefaultPermissions: (() { final guardedValue = map['createTableDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataLakeSettingsCreateTableDefaultPermission>(guardedValue, (value) => GetDataLakeSettingsCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      externalDataFilteringAllowLists: (() { final guardedValue = map['externalDataFilteringAllowLists']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      readOnlyAdmins: (() { final guardedValue = map['readOnlyAdmins']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      trustedResourceOwners: (() { final guardedValue = map['trustedResourceOwners']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
