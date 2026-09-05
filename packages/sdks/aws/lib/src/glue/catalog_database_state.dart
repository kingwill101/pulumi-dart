// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'catalog_database_create_table_default_permission.dart';
import 'catalog_database_federated_database.dart';
import 'catalog_database_target_database.dart';

/// Input properties used for looking up and filtering CatalogDatabase resources.
class CatalogDatabaseState {
  /// ARN of the Glue Catalog Database.
  final pulumi.Input<String?>? arn;
  /// ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  final pulumi.Input<String?>? catalogId;
  /// Creates a set of default permissions on the table for principals. See `createTableDefaultPermission` below.
  final pulumi.Input<List<CatalogDatabaseCreateTableDefaultPermission>?>? createTableDefaultPermissions;
  /// Description of the database.
  final pulumi.Input<String?>? description;
  /// Configuration block that references an entity outside the AWS Glue Data Catalog. See `federatedDatabase` below.
  final pulumi.Input<CatalogDatabaseFederatedDatabase?>? federatedDatabase;
  /// Location of the database (for example, an HDFS path).
  final pulumi.Input<String?>? locationUri;
  /// Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  final pulumi.Input<String?>? name;
  /// List of key-value pairs that define parameters and properties of the database.
  final pulumi.Input<Map<String, String>?>? parameters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// Configuration block for a target database for resource linking. See `targetDatabase` below.
  final pulumi.Input<CatalogDatabaseTargetDatabase?>? targetDatabase;

  /// Creates a new [CatalogDatabaseState].
  /// [arn] ARN of the Glue Catalog Database.
  /// [catalogId] ID of the Glue Catalog to create the database in. If omitted, this defaults to the AWS Account ID.
  /// [createTableDefaultPermissions] Creates a set of default permissions on the table for principals. See `createTableDefaultPermission` below.
  /// [description] Description of the database.
  /// [federatedDatabase] Configuration block that references an entity outside the AWS Glue Data Catalog. See `federatedDatabase` below.
  /// [locationUri] Location of the database (for example, an HDFS path).
  /// [name] Name of the database. The acceptable characters are lowercase letters, numbers, and the underscore character.
  /// [parameters] List of key-value pairs that define parameters and properties of the database.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [targetDatabase] Configuration block for a target database for resource linking. See `targetDatabase` below.
  const CatalogDatabaseState({
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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTableDefaultPermissions: (() { final guardedValue = map['createTableDefaultPermissions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CatalogDatabaseCreateTableDefaultPermission>(guardedValue, (value) => CatalogDatabaseCreateTableDefaultPermission.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      federatedDatabase: (() { final guardedValue = map['federatedDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogDatabaseFederatedDatabase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      locationUri: (() { final guardedValue = map['locationUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      targetDatabase: (() { final guardedValue = map['targetDatabase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CatalogDatabaseTargetDatabase.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
