// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_catalog_catalog_property.dart';
import 'get_catalog_create_database_default_permission.dart';
import 'get_catalog_create_table_default_permission.dart';
import 'get_catalog_federated_catalog.dart';
import 'get_catalog_target_redshift_catalog.dart';

/// Result data returned by getCatalog.
class GetCatalogResult {
  /// Whether third-party engines can access data in Amazon S3 locations that are registered with Lake Formation.
  final String allowFullTableExternalDataAccess;
  /// ARN of the Glue Catalog.
  final String arn;
  /// ID of the parent catalog.
  final String catalogId;
  /// Catalog properties. See `catalogProperties` below.
  final List<GetCatalogCatalogProperty> catalogProperties;
  /// Default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  final List<GetCatalogCreateDatabaseDefaultPermission> createDatabaseDefaultPermissions;
  /// Default permissions on tables for principals. See `createTableDefaultPermissions` below.
  final List<GetCatalogCreateTableDefaultPermission> createTableDefaultPermissions;
  /// Time at which the catalog was created.
  final String createTime;
  /// Description of the catalog.
  final String description;
  /// Federated catalog configuration. See `federatedCatalog` below.
  final List<GetCatalogFederatedCatalog> federatedCatalogs;
  final String name;
  /// Map of key-value pairs that define parameters and properties of the catalog.
  final Map<String, String> parameters;
  final String region;
  /// Key-value map of resource tags.
  final Map<String, String> tags;
  /// Target Redshift catalog configuration. See `targetRedshiftCatalog` below.
  final List<GetCatalogTargetRedshiftCatalog> targetRedshiftCatalogs;
  /// Time at which the catalog was last updated.
  final String updateTime;

  /// Creates a new [GetCatalogResult].
  /// [allowFullTableExternalDataAccess] Whether third-party engines can access data in Amazon S3 locations that are registered with Lake Formation.
  /// [arn] ARN of the Glue Catalog.
  /// [catalogId] ID of the parent catalog.
  /// [catalogProperties] Catalog properties. See `catalogProperties` below.
  /// [createDatabaseDefaultPermissions] Default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  /// [createTableDefaultPermissions] Default permissions on tables for principals. See `createTableDefaultPermissions` below.
  /// [createTime] Time at which the catalog was created.
  /// [description] Description of the catalog.
  /// [federatedCatalogs] Federated catalog configuration. See `federatedCatalog` below.
  /// [name] Required.
  /// [parameters] Map of key-value pairs that define parameters and properties of the catalog.
  /// [region] Required.
  /// [tags] Key-value map of resource tags.
  /// [targetRedshiftCatalogs] Target Redshift catalog configuration. See `targetRedshiftCatalog` below.
  /// [updateTime] Time at which the catalog was last updated.
  const GetCatalogResult({
    required this.allowFullTableExternalDataAccess,
    required this.arn,
    required this.catalogId,
    required this.catalogProperties,
    required this.createDatabaseDefaultPermissions,
    required this.createTableDefaultPermissions,
    required this.createTime,
    required this.description,
    required this.federatedCatalogs,
    required this.name,
    required this.parameters,
    required this.region,
    required this.tags,
    required this.targetRedshiftCatalogs,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFullTableExternalDataAccess': allowFullTableExternalDataAccess,
      'arn': arn,
      'catalogId': catalogId,
      'catalogProperties': pulumi.Input.encodeList<GetCatalogCatalogProperty, Map<String, dynamic>>(catalogProperties, (value) => value.toMap()),
      'createDatabaseDefaultPermissions': pulumi.Input.encodeList<GetCatalogCreateDatabaseDefaultPermission, Map<String, dynamic>>(createDatabaseDefaultPermissions, (value) => value.toMap()),
      'createTableDefaultPermissions': pulumi.Input.encodeList<GetCatalogCreateTableDefaultPermission, Map<String, dynamic>>(createTableDefaultPermissions, (value) => value.toMap()),
      'createTime': createTime,
      'description': description,
      'federatedCatalogs': pulumi.Input.encodeList<GetCatalogFederatedCatalog, Map<String, dynamic>>(federatedCatalogs, (value) => value.toMap()),
      'name': name,
      'parameters': parameters,
      'region': region,
      'tags': tags,
      'targetRedshiftCatalogs': pulumi.Input.encodeList<GetCatalogTargetRedshiftCatalog, Map<String, dynamic>>(targetRedshiftCatalogs, (value) => value.toMap()),
      'updateTime': updateTime,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      allowFullTableExternalDataAccess: map['allowFullTableExternalDataAccess'] as String,
      arn: map['arn'] as String,
      catalogId: map['catalogId'] as String,
      catalogProperties: pulumi.Input.decodeList<GetCatalogCatalogProperty>(map['catalogProperties']!, (value) => GetCatalogCatalogProperty.fromMap((value as Map).cast<String, dynamic>())),
      createDatabaseDefaultPermissions: pulumi.Input.decodeList<GetCatalogCreateDatabaseDefaultPermission>(map['createDatabaseDefaultPermissions']!, (value) => GetCatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())),
      createTableDefaultPermissions: pulumi.Input.decodeList<GetCatalogCreateTableDefaultPermission>(map['createTableDefaultPermissions']!, (value) => GetCatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())),
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      federatedCatalogs: pulumi.Input.decodeList<GetCatalogFederatedCatalog>(map['federatedCatalogs']!, (value) => GetCatalogFederatedCatalog.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      parameters: (map['parameters'] as Map).cast<String, String>(),
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      targetRedshiftCatalogs: pulumi.Input.decodeList<GetCatalogTargetRedshiftCatalog>(map['targetRedshiftCatalogs']!, (value) => GetCatalogTargetRedshiftCatalog.fromMap((value as Map).cast<String, dynamic>())),
      updateTime: map['updateTime'] as String,
    );
  }
}
