// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_app_cosmos_dbassociation_spring_cloud_app_cosmos_dbassociation_args_doc}
/// The set of arguments for SpringCloudAppCosmosDBAssociation.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_app_cosmos_dbassociation_spring_cloud_app_cosmos_dbassociation_args_doc}
class SpringCloudAppCosmosDBAssociationArgs {
  /// Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  final pulumi.Input<String> apiType;
  /// Specifies the CosmosDB Account access key.
  final pulumi.Input<String> cosmosdbAccessKey;
  /// Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  final pulumi.Input<String> cosmosdbAccountId;
  /// Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `api_type` is `cassandra`.
  final pulumi.Input<String>? cosmosdbCassandraKeyspaceName;
  /// Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  final pulumi.Input<String>? cosmosdbGremlinDatabaseName;
  /// Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  final pulumi.Input<String>? cosmosdbGremlinGraphName;
  /// Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `mongo`.
  final pulumi.Input<String>? cosmosdbMongoDatabaseName;
  /// Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `sql`.
  final pulumi.Input<String>? cosmosdbSqlDatabaseName;
  /// Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  final pulumi.Input<String> springCloudAppId;

  /// Creates a new [SpringCloudAppCosmosDBAssociationArgs].
  /// [apiType] Specifies the API type which should be used when connecting to the CosmosDB Account. Possible values are `cassandra`, `gremlin`, `mongo`, `sql` or `table`. Changing this forces a new resource to be created.
  /// [cosmosdbAccessKey] Specifies the CosmosDB Account access key.
  /// [cosmosdbAccountId] Specifies the ID of the CosmosDB Account. Changing this forces a new resource to be created.
  /// [cosmosdbCassandraKeyspaceName] Specifies the name of the Cassandra Keyspace which the Spring Cloud App should be associated with. Should only be set when `api_type` is `cassandra`.
  /// [cosmosdbGremlinDatabaseName] Specifies the name of the Gremlin Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  /// [cosmosdbGremlinGraphName] Specifies the name of the Gremlin Graph which the Spring Cloud App should be associated with. Should only be set when `api_type` is `gremlin`.
  /// [cosmosdbMongoDatabaseName] Specifies the name of the Mongo Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `mongo`.
  /// [cosmosdbSqlDatabaseName] Specifies the name of the SQL Database which the Spring Cloud App should be associated with. Should only be set when `api_type` is `sql`.
  /// [name] Specifies the name of the Spring Cloud Application Association. Changing this forces a new resource to be created.
  /// [springCloudAppId] Specifies the ID of the Spring Cloud Application where this Association is created. Changing this forces a new resource to be created.
  SpringCloudAppCosmosDBAssociationArgs({
    required String apiType,
    required String cosmosdbAccessKey,
    required String cosmosdbAccountId,
    String? cosmosdbCassandraKeyspaceName,
    String? cosmosdbGremlinDatabaseName,
    String? cosmosdbGremlinGraphName,
    String? cosmosdbMongoDatabaseName,
    String? cosmosdbSqlDatabaseName,
    String? name,
    required String springCloudAppId,
  }) :
      apiType = pulumi.Input.asInput<String>(apiType),
      cosmosdbAccessKey = pulumi.Input.asInput<String>(cosmosdbAccessKey),
      cosmosdbAccountId = pulumi.Input.asInput<String>(cosmosdbAccountId),
      cosmosdbCassandraKeyspaceName = pulumi.Input.asOptionalInput<String>(cosmosdbCassandraKeyspaceName),
      cosmosdbGremlinDatabaseName = pulumi.Input.asOptionalInput<String>(cosmosdbGremlinDatabaseName),
      cosmosdbGremlinGraphName = pulumi.Input.asOptionalInput<String>(cosmosdbGremlinGraphName),
      cosmosdbMongoDatabaseName = pulumi.Input.asOptionalInput<String>(cosmosdbMongoDatabaseName),
      cosmosdbSqlDatabaseName = pulumi.Input.asOptionalInput<String>(cosmosdbSqlDatabaseName),
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudAppId = pulumi.Input.asInput<String>(springCloudAppId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiType': apiType,
      'cosmosdbAccessKey': cosmosdbAccessKey,
      'cosmosdbAccountId': cosmosdbAccountId,
      'cosmosdbCassandraKeyspaceName': ?cosmosdbCassandraKeyspaceName,
      'cosmosdbGremlinDatabaseName': ?cosmosdbGremlinDatabaseName,
      'cosmosdbGremlinGraphName': ?cosmosdbGremlinGraphName,
      'cosmosdbMongoDatabaseName': ?cosmosdbMongoDatabaseName,
      'cosmosdbSqlDatabaseName': ?cosmosdbSqlDatabaseName,
      'name': ?name,
      'springCloudAppId': springCloudAppId,
    };
  }

  factory SpringCloudAppCosmosDBAssociationArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAppCosmosDBAssociationArgs(
      apiType: map['apiType'] as String,
      cosmosdbAccessKey: map['cosmosdbAccessKey'] as String,
      cosmosdbAccountId: map['cosmosdbAccountId'] as String,
      cosmosdbCassandraKeyspaceName: map['cosmosdbCassandraKeyspaceName'] == null ? null : map['cosmosdbCassandraKeyspaceName'] as String,
      cosmosdbGremlinDatabaseName: map['cosmosdbGremlinDatabaseName'] == null ? null : map['cosmosdbGremlinDatabaseName'] as String,
      cosmosdbGremlinGraphName: map['cosmosdbGremlinGraphName'] == null ? null : map['cosmosdbGremlinGraphName'] as String,
      cosmosdbMongoDatabaseName: map['cosmosdbMongoDatabaseName'] == null ? null : map['cosmosdbMongoDatabaseName'] as String,
      cosmosdbSqlDatabaseName: map['cosmosdbSqlDatabaseName'] == null ? null : map['cosmosdbSqlDatabaseName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      springCloudAppId: map['springCloudAppId'] as String,
    );
  }
}

