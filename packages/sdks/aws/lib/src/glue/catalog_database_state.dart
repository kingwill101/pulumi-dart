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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? catalogId,
    pulumi.Output<List<CatalogDatabaseCreateTableDefaultPermission>>? createTableDefaultPermissions,
    pulumi.Output<String>? description,
    pulumi.Output<CatalogDatabaseFederatedDatabase>? federatedDatabase,
    pulumi.Output<String>? locationUri,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? parameters,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CatalogDatabaseTargetDatabase>? targetDatabase,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      catalogId = pulumi.Input.asOptionalInput<String>(catalogId),
      createTableDefaultPermissions = pulumi.Input.asOptionalInput<List<CatalogDatabaseCreateTableDefaultPermission>>(createTableDefaultPermissions),
      description = pulumi.Input.asOptionalInput<String>(description),
      federatedDatabase = pulumi.Input.asOptionalInput<CatalogDatabaseFederatedDatabase>(federatedDatabase),
      locationUri = pulumi.Input.asOptionalInput<String>(locationUri),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      targetDatabase = pulumi.Input.asOptionalInput<CatalogDatabaseTargetDatabase>(targetDatabase);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      catalogId: map['catalogId'] == null ? null : pulumi.Output.create<String>(map['catalogId'] as String),
      createTableDefaultPermissions: map['createTableDefaultPermissions'] == null ? null : pulumi.Output.create<List<CatalogDatabaseCreateTableDefaultPermission>>(pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(map['createTableDefaultPermissions'], (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      federatedDatabase: map['federatedDatabase'] == null ? null : pulumi.Output.create<CatalogDatabaseFederatedDatabase>(CatalogDatabaseFederatedDatabase.fromMap((map['federatedDatabase'] as Map).cast<String, dynamic>())),
      locationUri: map['locationUri'] == null ? null : pulumi.Output.create<String>(map['locationUri'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<Map<String, String>>((map['parameters'] as Map).cast<String, String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      targetDatabase: map['targetDatabase'] == null ? null : pulumi.Output.create<CatalogDatabaseTargetDatabase>(CatalogDatabaseTargetDatabase.fromMap((map['targetDatabase'] as Map).cast<String, dynamic>())),
    );
  }
}

