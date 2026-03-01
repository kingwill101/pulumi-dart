// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_mongo_database_get_mongo_database_args_doc}
/// Arguments for getMongoDatabase.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_mongo_database_get_mongo_database_args_doc}
class GetMongoDatabaseArgs {
  /// The name of the Cosmos DB Account where the Mongo Database exists.
  final pulumi.Input<String> accountName;
  /// The name of this Cosmos DB Mongo Database.
  final pulumi.Input<String> name;
  /// The name of the Resource Group where the Cosmos DB Mongo Database exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetMongoDatabaseArgs].
  /// [accountName] The name of the Cosmos DB Account where the Mongo Database exists.
  /// [name] The name of this Cosmos DB Mongo Database.
  /// [resourceGroupName] The name of the Resource Group where the Cosmos DB Mongo Database exists.
  GetMongoDatabaseArgs({
    required String accountName,
    required String name,
    required String resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetMongoDatabaseArgs.fromMap(Map<String, dynamic> map) {
    return GetMongoDatabaseArgs(
      accountName: map['accountName'] as String,
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

