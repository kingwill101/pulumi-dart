// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../catalog_database_create_table_default_permission/catalog_database_create_table_default_permission.dart';
import '../catalog_database_federated_database/catalog_database_federated_database.dart';
import '../catalog_database_target_database/catalog_database_target_database.dart';

/// The set of arguments for CatalogDatabase.
class CatalogDatabaseArgs {
  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  final Input<String>? catalogId;

  /// Creates a set of default permissions on the table for principals. See <span pulumi-lang-nodejs="`createTableDefaultPermission`" pulumi-lang-dotnet="`CreateTableDefaultPermission`" pulumi-lang-go="`createTableDefaultPermission`" pulumi-lang-python="`create_table_default_permission`" pulumi-lang-yaml="`createTableDefaultPermission`" pulumi-lang-java="`createTableDefaultPermission`">`create_table_default_permission`</span> below.
  final Input<List<CatalogDatabaseCreateTableDefaultPermission>>?
      createTableDefaultPermissions;

  /// Description of the database.
  final Input<String>? description;

  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See <span pulumi-lang-nodejs="`federatedDatabase`" pulumi-lang-dotnet="`FederatedDatabase`" pulumi-lang-go="`federatedDatabase`" pulumi-lang-python="`federated_database`" pulumi-lang-yaml="`federatedDatabase`" pulumi-lang-java="`federatedDatabase`">`federated_database`</span> below.
  final Input<CatalogDatabaseFederatedDatabase>? federatedDatabase;

  /// Location of the database (for example, an HDFS path).
  final Input<String>? locationUri;

  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  final Input<String>? name;

  /// List of key-value pairs that define parameters and properties of the database.
  final Input<Map<String, String>>? parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Configuration block for a target database for resource linking. See <span pulumi-lang-nodejs="`targetDatabase`" pulumi-lang-dotnet="`TargetDatabase`" pulumi-lang-go="`targetDatabase`" pulumi-lang-python="`target_database`" pulumi-lang-yaml="`targetDatabase`" pulumi-lang-java="`targetDatabase`">`target_database`</span> below.
  final Input<CatalogDatabaseTargetDatabase>? targetDatabase;

  CatalogDatabaseArgs({
    this.catalogId,
    this.createTableDefaultPermissions,
    this.description,
    this.federatedDatabase,
    this.locationUri,
    this.name,
    this.parameters,
    this.region,
    this.tags,
    this.targetDatabase,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    final createTableDefaultPermissionsValue = createTableDefaultPermissions;
    if (createTableDefaultPermissionsValue != null) {
      map['createTableDefaultPermissions'] = Input.mapOptionalInputValue<
              List<CatalogDatabaseCreateTableDefaultPermission>,
              List<Map<String, dynamic>>>(
          createTableDefaultPermissionsValue,
          (value) => Input.encodeList<
              CatalogDatabaseCreateTableDefaultPermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final federatedDatabaseValue = federatedDatabase;
    if (federatedDatabaseValue != null) {
      map['federatedDatabase'] = Input.mapOptionalInputValue<
              CatalogDatabaseFederatedDatabase, Map<String, dynamic>>(
          federatedDatabaseValue, (value) => value.toMap());
    }
    final locationUriValue = locationUri;
    if (locationUriValue != null) {
      map['locationUri'] = locationUriValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parametersValue = parameters;
    if (parametersValue != null) {
      map['parameters'] = parametersValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final targetDatabaseValue = targetDatabase;
    if (targetDatabaseValue != null) {
      map['targetDatabase'] = Input.mapOptionalInputValue<
          CatalogDatabaseTargetDatabase,
          Map<String, dynamic>>(targetDatabaseValue, (value) => value.toMap());
    }
    return map;
  }

  factory CatalogDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      createTableDefaultPermissions: Input.asOptionalInput<
              List<CatalogDatabaseCreateTableDefaultPermission>>(
          map['createTableDefaultPermissions']),
      description: Input.asOptionalInput<String>(map['description']),
      federatedDatabase:
          Input.asOptionalInput<CatalogDatabaseFederatedDatabase>(
              map['federatedDatabase']),
      locationUri: Input.asOptionalInput<String>(map['locationUri']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asOptionalInput<Map<String, String>>(map['parameters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      targetDatabase: Input.asOptionalInput<CatalogDatabaseTargetDatabase>(
          map['targetDatabase']),
    );
  }
}
