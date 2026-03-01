// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_cosmos_db_mongo_api_linked_service_cosmos_db_mongo_api_args_doc}
/// The set of arguments for LinkedServiceCosmosDbMongoApi.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_cosmos_db_mongo_api_linked_service_cosmos_db_mongo_api_args_doc}
class LinkedServiceCosmosDbMongoApiArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service.
  ///
  /// The following supported arguments are specific to CosmosDB Linked Service:
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string.
  final pulumi.Input<String>? connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The name of the database.
  final pulumi.Input<String>? database;
  /// The description for the Data Factory Linked Service.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service.
  final pulumi.Input<Map<String, String>>? parameters;
  /// Whether API server version is 3.2 or higher. Defaults to `false`.
  final pulumi.Input<bool>? serverVersionIs32OrHigher;

  /// Creates a new [LinkedServiceCosmosDbMongoApiArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service.
  /// [connectionString] The connection string.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [database] The name of the database.
  /// [description] The description for the Data Factory Linked Service.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service.
  /// [name] Specifies the name of the Data Factory Linked Service. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service.
  /// [serverVersionIs32OrHigher] Whether API server version is 3.2 or higher. Defaults to `false`.
  LinkedServiceCosmosDbMongoApiArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    String? connectionString,
    required String dataFactoryId,
    String? database,
    String? description,
    String? integrationRuntimeName,
    String? name,
    Map<String, String>? parameters,
    bool? serverVersionIs32OrHigher,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asOptionalInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      database = pulumi.Input.asOptionalInput<String>(database),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters),
      serverVersionIs32OrHigher = pulumi.Input.asOptionalInput<bool>(serverVersionIs32OrHigher);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': ?connectionString,
      'dataFactoryId': dataFactoryId,
      'database': ?database,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
      'serverVersionIs32OrHigher': ?serverVersionIs32OrHigher,
    };
  }

  factory LinkedServiceCosmosDbMongoApiArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceCosmosDbMongoApiArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      connectionString: map['connectionString'] == null ? null : map['connectionString'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      database: map['database'] == null ? null : map['database'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      serverVersionIs32OrHigher: map['serverVersionIs32OrHigher'] == null ? null : map['serverVersionIs32OrHigher'] as bool,
    );
  }
}

