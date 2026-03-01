// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_lake_settings_create_database_default_permission.dart';
import 'get_data_lake_settings_create_table_default_permission.dart';

/// Result data returned by getDataLakeSettings.
class GetDataLakeSettingsResult {
  /// List of ARNs of AWS Lake Formation principals (IAM users or roles).
  final List<String> admins;

  /// Whether to allow Amazon EMR clusters to access data managed by Lake Formation.
  final bool allowExternalDataFiltering;

  /// Whether to allow a third-party query engine to get data access credentials without session tags when a caller has full data access permissions.
  final bool allowFullTableExternalDataAccess;

  /// Lake Formation relies on a privileged process secured by Amazon EMR or the third party integrator to tag the user's role while assuming it.
  final List<String> authorizedSessionTagValueLists;
  final String? catalogId;

  /// Up to three configuration blocks of principal permissions for default create database permissions. Detailed below.
  final List<GetDataLakeSettingsCreateDatabaseDefaultPermission>
  createDatabaseDefaultPermissions;

  /// Up to three configuration blocks of principal permissions for default create table permissions. Detailed below.
  final List<GetDataLakeSettingsCreateTableDefaultPermission>
  createTableDefaultPermissions;

  /// A list of the account IDs of Amazon Web Services accounts with Amazon EMR clusters that are to perform data filtering.
  final List<String> externalDataFilteringAllowLists;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// Key-value map of additional configuration. `CROSS_ACCOUNT_VERSION` will be set to values `"1"`, `"2"`, `"3"`, or `"4"`. `SET_CONTEXT` will also be returned with a value of `TRUE`. In a fresh account, prior to configuring, `CROSS_ACCOUNT_VERSION` is `"1"`.
  final Map<String, String> parameters;

  /// List of ARNs of AWS Lake Formation principals (IAM users or roles) with only view access to the resources.
  final List<String> readOnlyAdmins;
  final String region;

  /// List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  final List<String> trustedResourceOwners;

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
  /// [region] Required.
  /// [trustedResourceOwners] List of the resource-owning account IDs that the caller's account can use to share their user access details (user ARNs).
  GetDataLakeSettingsResult({
    required this.admins,
    required this.allowExternalDataFiltering,
    required this.allowFullTableExternalDataAccess,
    required this.authorizedSessionTagValueLists,
    this.catalogId,
    required this.createDatabaseDefaultPermissions,
    required this.createTableDefaultPermissions,
    required this.externalDataFilteringAllowLists,
    required this.id,
    required this.parameters,
    required this.readOnlyAdmins,
    required this.region,
    required this.trustedResourceOwners,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'admins': admins,
      'allowExternalDataFiltering': allowExternalDataFiltering,
      'allowFullTableExternalDataAccess': allowFullTableExternalDataAccess,
      'authorizedSessionTagValueLists': authorizedSessionTagValueLists,
      'catalogId': ?catalogId,
      'createDatabaseDefaultPermissions':
          pulumi.Input.encodeList<
            GetDataLakeSettingsCreateDatabaseDefaultPermission,
            Map<String, dynamic>
          >(createDatabaseDefaultPermissions, (value) => value.toMap()),
      'createTableDefaultPermissions':
          pulumi.Input.encodeList<
            GetDataLakeSettingsCreateTableDefaultPermission,
            Map<String, dynamic>
          >(createTableDefaultPermissions, (value) => value.toMap()),
      'externalDataFilteringAllowLists': externalDataFilteringAllowLists,
      'id': id,
      'parameters': parameters,
      'readOnlyAdmins': readOnlyAdmins,
      'region': region,
      'trustedResourceOwners': trustedResourceOwners,
    };
  }

  factory GetDataLakeSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetDataLakeSettingsResult(
      admins: (map['admins'] as List).cast<String>(),
      allowExternalDataFiltering: map['allowExternalDataFiltering'] as bool,
      allowFullTableExternalDataAccess:
          map['allowFullTableExternalDataAccess'] as bool,
      authorizedSessionTagValueLists:
          (map['authorizedSessionTagValueLists'] as List).cast<String>(),
      catalogId: map['catalogId'] == null ? null : map['catalogId'] as String,
      createDatabaseDefaultPermissions:
          pulumi.Input.decodeList<
            GetDataLakeSettingsCreateDatabaseDefaultPermission
          >(
            map['createDatabaseDefaultPermissions'],
            (value) =>
                GetDataLakeSettingsCreateDatabaseDefaultPermission.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      createTableDefaultPermissions:
          pulumi.Input.decodeList<
            GetDataLakeSettingsCreateTableDefaultPermission
          >(
            map['createTableDefaultPermissions'],
            (value) => GetDataLakeSettingsCreateTableDefaultPermission.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      externalDataFilteringAllowLists:
          (map['externalDataFilteringAllowLists'] as List).cast<String>(),
      id: map['id'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      readOnlyAdmins: (map['readOnlyAdmins'] as List).cast<String>(),
      region: map['region'] as String,
      trustedResourceOwners: (map['trustedResourceOwners'] as List)
          .cast<String>(),
    );
  }
}
