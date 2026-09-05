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
  final String? allowFullTableExternalDataAccess;
  /// ARN of the Glue Catalog.
  final String? arn;
  /// ID of the parent catalog.
  final String? catalogId;
  /// Catalog properties. See `catalogProperties` below.
  final List<GetCatalogCatalogProperty>? catalogProperties;
  /// Default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  final List<GetCatalogCreateDatabaseDefaultPermission>? createDatabaseDefaultPermissions;
  /// Default permissions on tables for principals. See `createTableDefaultPermissions` below.
  final List<GetCatalogCreateTableDefaultPermission>? createTableDefaultPermissions;
  /// Time at which the catalog was created.
  final String? createTime;
  /// Description of the catalog.
  final String? description;
  /// Federated catalog configuration. See `federatedCatalog` below.
  final List<GetCatalogFederatedCatalog>? federatedCatalogs;
  final String? name;
  /// Map of key-value pairs that define parameters and properties of the catalog.
  final Map<String, String>? parameters;
  final String? region;
  /// Key-value map of resource tags.
  final Map<String, String>? tags;
  /// Target Redshift catalog configuration. See `targetRedshiftCatalog` below.
  final List<GetCatalogTargetRedshiftCatalog>? targetRedshiftCatalogs;
  /// Time at which the catalog was last updated.
  final String? updateTime;

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
  /// [name] Optional.
  /// [parameters] Map of key-value pairs that define parameters and properties of the catalog.
  /// [region] Optional.
  /// [tags] Key-value map of resource tags.
  /// [targetRedshiftCatalogs] Target Redshift catalog configuration. See `targetRedshiftCatalog` below.
  /// [updateTime] Time at which the catalog was last updated.
  const GetCatalogResult({
    this.allowFullTableExternalDataAccess,
    this.arn,
    this.catalogId,
    this.catalogProperties,
    this.createDatabaseDefaultPermissions,
    this.createTableDefaultPermissions,
    this.createTime,
    this.description,
    this.federatedCatalogs,
    this.name,
    this.parameters,
    this.region,
    this.tags,
    this.targetRedshiftCatalogs,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFullTableExternalDataAccess': ?allowFullTableExternalDataAccess,
      'arn': ?arn,
      'catalogId': ?catalogId,
      'catalogProperties': ?(() { final guardedValue = catalogProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogCatalogProperty, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createDatabaseDefaultPermissions': ?(() { final guardedValue = createDatabaseDefaultPermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogCreateDatabaseDefaultPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTableDefaultPermissions': ?(() { final guardedValue = createTableDefaultPermissions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogCreateTableDefaultPermission, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'createTime': ?createTime,
      'description': ?description,
      'federatedCatalogs': ?(() { final guardedValue = federatedCatalogs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogFederatedCatalog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'parameters': ?parameters,
      'region': ?region,
      'tags': ?tags,
      'targetRedshiftCatalogs': ?(() { final guardedValue = targetRedshiftCatalogs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCatalogTargetRedshiftCatalog, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'updateTime': ?updateTime,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      allowFullTableExternalDataAccess: (() { final guardedValue = map['allowFullTableExternalDataAccess']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      catalogProperties: (() { final guardedValue = map['catalogProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogCatalogProperty>(guardedValue, (value) => GetCatalogCatalogProperty.fromMap((value as Map).cast<String, dynamic>())); })(),
      createDatabaseDefaultPermissions: (() { final guardedValue = map['createDatabaseDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogCreateDatabaseDefaultPermission>(guardedValue, (value) => GetCatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTableDefaultPermissions: (() { final guardedValue = map['createTableDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogCreateTableDefaultPermission>(guardedValue, (value) => GetCatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>())); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      federatedCatalogs: (() { final guardedValue = map['federatedCatalogs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogFederatedCatalog>(guardedValue, (value) => GetCatalogFederatedCatalog.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetRedshiftCatalogs: (() { final guardedValue = map['targetRedshiftCatalogs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCatalogTargetRedshiftCatalog>(guardedValue, (value) => GetCatalogTargetRedshiftCatalog.fromMap((value as Map).cast<String, dynamic>())); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
