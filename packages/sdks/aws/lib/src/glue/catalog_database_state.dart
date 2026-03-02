// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_create_table_default_permission.dart';
import 'catalog_database_federated_database.dart';
import 'catalog_database_target_database.dart';

/// Input properties used for looking up and filtering CatalogDatabase resources.
class CatalogDatabaseState {
  /// ARN of the Glue Catalog Database.
  final pulumi.Input<String>? arn;
  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String>? catalogId;
  /// Creates a set of default permissions on the table for principals. See `create_table_default_permission` below.
  final pulumi.Input<List<CatalogDatabaseCreateTableDefaultPermission>>? createTableDefaultPermissions;
  /// Description of the database.
  final pulumi.Input<String>? description;
  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See `federated_database` below.
  final pulumi.Input<CatalogDatabaseFederatedDatabase>? federatedDatabase;
  /// Location of the database (for example, an HDFS path).
  final pulumi.Input<String>? locationUri;
  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  final pulumi.Input<String>? name;
  /// List of key-value pairs that define parameters and properties of the database.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Configuration block for a target database for resource linking. See `target_database` below.
  final pulumi.Input<CatalogDatabaseTargetDatabase>? targetDatabase;

  /// Creates a new [CatalogDatabaseState].
  /// [arn] ARN of the Glue Catalog Database.
  /// [catalogId] ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  /// [createTableDefaultPermissions] Creates a set of default permissions on the table for principals. See `create_table_default_permission` below.
  /// [description] Description of the database.
  /// [federatedDatabase] Configuration block that references an entity outside the AWS Glue Data Catalog. See `federated_database` below.
  /// [locationUri] Location of the database (for example, an HDFS path).
  /// [name] Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  /// [parameters] List of key-value pairs that define parameters and properties of the database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [targetDatabase] Configuration block for a target database for resource linking. See `target_database` below.
  CatalogDatabaseState({
    this.arn,
    this.catalogId,
    this.createTableDefaultPermissions,
    this.description,
    this.federatedDatabase,
    this.locationUri,
    this.name,
    this.parameters,
    this.region,
    this.tags,
    this.tagsAll,
    this.targetDatabase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'catalogId': ?catalogId,
      'createTableDefaultPermissions': ?pulumi.Input.mapOptionalInputValue<List<CatalogDatabaseCreateTableDefaultPermission>, List<Map<String, dynamic>>>(createTableDefaultPermissions, (value) => pulumi.Input.encodeList<CatalogDatabaseCreateTableDefaultPermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'federatedDatabase': ?pulumi.Input.mapOptionalInputValue<CatalogDatabaseFederatedDatabase, Map<String, dynamic>>(federatedDatabase, (value) => value.toMap()),
      'locationUri': ?locationUri,
      'name': ?name,
      'parameters': ?parameters,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'targetDatabase': ?pulumi.Input.mapOptionalInputValue<CatalogDatabaseTargetDatabase, Map<String, dynamic>>(targetDatabase, (value) => value.toMap()),
    };
  }

  factory CatalogDatabaseState.fromMap(Map<String, dynamic> map) {
    return CatalogDatabaseState(
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      catalogId: map['catalogId'] == null ? null : (map['catalogId'] as String).input(),
      createTableDefaultPermissions: map['createTableDefaultPermissions'] == null ? null : (pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(map['createTableDefaultPermissions'], (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      federatedDatabase: map['federatedDatabase'] == null ? null : (CatalogDatabaseFederatedDatabase.fromMap((map['federatedDatabase'] as Map).cast<String, dynamic>())).input(),
      locationUri: map['locationUri'] == null ? null : (map['locationUri'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : ((map['parameters'] as Map).cast<String, String>()).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      targetDatabase: map['targetDatabase'] == null ? null : (CatalogDatabaseTargetDatabase.fromMap((map['targetDatabase'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

