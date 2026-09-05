// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_catalog_properties.dart';
import 'catalog_create_database_default_permission.dart';
import 'catalog_create_table_default_permission.dart';
import 'catalog_federated_catalog.dart';
import 'catalog_target_redshift_catalog.dart';
import 'catalog_timeouts.dart';

/// {@template pulumi_glue_catalog_catalog_args_doc}
/// The set of arguments for Catalog.
/// {@endtemplate}
/// {@macro pulumi_glue_catalog_catalog_args_doc}
class CatalogArgs {
  /// Whether third-party engines can access data in Amazon S3 locations that are registered with Lake Formation. Valid values are `True` and `False`.
  final pulumi.Input<String?>? allowFullTableExternalDataAccess;
  /// Configuration block of properties for the catalog. See `catalogProperties` below.
  final pulumi.Input<CatalogCatalogProperties?>? catalogProperties;
  /// List of default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  final pulumi.Input<List<CatalogCreateDatabaseDefaultPermission>?>? createDatabaseDefaultPermissions;
  /// List of default permissions on tables for principals. See `createTableDefaultPermissions` below.
  final pulumi.Input<List<CatalogCreateTableDefaultPermission>?>? createTableDefaultPermissions;
  /// Description of the catalog.
  final pulumi.Input<String?>? description;
  /// Configuration block for a federated catalog. See `federatedCatalog` below.
  final pulumi.Input<CatalogFederatedCatalog?>? federatedCatalog;
  /// Name of the catalog.
  final pulumi.Input<String?>? name;
  /// Whether to overwrite existing Lake Formation permissions on child resources with the default permissions. Valid values are `Accept` and `Deny`.
  final pulumi.Input<String?>? overwriteChildResourcePermissionsWithDefault;
  /// Map of key-value pairs that define parameters and properties of the catalog.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Configuration block for a target Redshift catalog. See `targetRedshiftCatalog` below.
  final pulumi.Input<CatalogTargetRedshiftCatalog?>? targetRedshiftCatalog;
  final pulumi.Input<CatalogTimeouts?>? timeouts;

  /// Creates a new [CatalogArgs].
  /// [allowFullTableExternalDataAccess] Whether third-party engines can access data in Amazon S3 locations that are registered with Lake Formation. Valid values are `True` and `False`.
  /// [catalogProperties] Configuration block of properties for the catalog. See `catalogProperties` below.
  /// [createDatabaseDefaultPermissions] List of default permissions on databases for principals. See `createDatabaseDefaultPermissions` below.
  /// [createTableDefaultPermissions] List of default permissions on tables for principals. See `createTableDefaultPermissions` below.
  /// [description] Description of the catalog.
  /// [federatedCatalog] Configuration block for a federated catalog. See `federatedCatalog` below.
  /// [name] Name of the catalog.
  /// [overwriteChildResourcePermissionsWithDefault] Whether to overwrite existing Lake Formation permissions on child resources with the default permissions. Valid values are `Accept` and `Deny`.
  /// [parameters] Map of key-value pairs that define parameters and properties of the catalog.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [targetRedshiftCatalog] Configuration block for a target Redshift catalog. See `targetRedshiftCatalog` below.
  /// [timeouts] Optional.
  const CatalogArgs({
    this.allowFullTableExternalDataAccess,
    this.catalogProperties,
    this.createDatabaseDefaultPermissions,
    this.createTableDefaultPermissions,
    this.description,
    this.federatedCatalog,
    this.name,
    this.overwriteChildResourcePermissionsWithDefault,
    this.parameters,
    this.region,
    this.tags,
    this.targetRedshiftCatalog,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowFullTableExternalDataAccess': ?allowFullTableExternalDataAccess,
      'catalogProperties': ?pulumi.Input.mapOptionalInputValue<CatalogCatalogProperties, Map<String, dynamic>>(catalogProperties, (value) => value.toMap()),
      'createDatabaseDefaultPermissions': ?pulumi.Input.mapOptionalInputValue<List<CatalogCreateDatabaseDefaultPermission>, List<Map<String, dynamic>>>(createDatabaseDefaultPermissions, (value) => pulumi.Input.encodeList<CatalogCreateDatabaseDefaultPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createTableDefaultPermissions': ?pulumi.Input.mapOptionalInputValue<List<CatalogCreateTableDefaultPermission>, List<Map<String, dynamic>>>(createTableDefaultPermissions, (value) => pulumi.Input.encodeList<CatalogCreateTableDefaultPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'federatedCatalog': ?pulumi.Input.mapOptionalInputValue<CatalogFederatedCatalog, Map<String, dynamic>>(federatedCatalog, (value) => value.toMap()),
      'name': ?name,
      'overwriteChildResourcePermissionsWithDefault': ?overwriteChildResourcePermissionsWithDefault,
      'parameters': ?parameters,
      'region': ?region,
      'tags': ?tags,
      'targetRedshiftCatalog': ?pulumi.Input.mapOptionalInputValue<CatalogTargetRedshiftCatalog, Map<String, dynamic>>(targetRedshiftCatalog, (value) => value.toMap()),
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CatalogTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory CatalogArgs.fromMap(Map<String, dynamic> map) {
    return CatalogArgs(
      allowFullTableExternalDataAccess: (() { final guardedValue = map['allowFullTableExternalDataAccess']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogProperties: (() { final guardedValue = map['catalogProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogCatalogProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createDatabaseDefaultPermissions: (() { final guardedValue = map['createDatabaseDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogCreateDatabaseDefaultPermission>(guardedValue, (value) => CatalogCreateDatabaseDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      createTableDefaultPermissions: (() { final guardedValue = map['createTableDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogCreateTableDefaultPermission>(guardedValue, (value) => CatalogCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      federatedCatalog: (() { final guardedValue = map['federatedCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogFederatedCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwriteChildResourcePermissionsWithDefault: (() { final guardedValue = map['overwriteChildResourcePermissionsWithDefault']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetRedshiftCatalog: (() { final guardedValue = map['targetRedshiftCatalog']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTargetRedshiftCatalog.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
