// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_datafactory_linked_service_mysql_linked_service_mysql_args_doc}
/// The set of arguments for LinkedServiceMysql.
/// {@endtemplate}
/// {@macro pulumi_datafactory_linked_service_mysql_linked_service_mysql_args_doc}
class LinkedServiceMysqlArgs {
  /// A map of additional properties to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>>? additionalProperties;
  /// List of tags that can be used for describing the Data Factory Linked Service MySQL.
  final pulumi.Input<List<String>>? annotations;
  /// The connection string in which to authenticate with MySQL.
  final pulumi.Input<String> connectionString;
  /// The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  final pulumi.Input<String> dataFactoryId;
  /// The description for the Data Factory Linked Service MySQL.
  final pulumi.Input<String>? description;
  /// The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<String>? integrationRuntimeName;
  /// Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  final pulumi.Input<String>? name;
  /// A map of parameters to associate with the Data Factory Linked Service MySQL.
  final pulumi.Input<Map<String, String>>? parameters;

  /// Creates a new [LinkedServiceMysqlArgs].
  /// [additionalProperties] A map of additional properties to associate with the Data Factory Linked Service MySQL.
  /// [annotations] List of tags that can be used for describing the Data Factory Linked Service MySQL.
  /// [connectionString] The connection string in which to authenticate with MySQL.
  /// [dataFactoryId] The Data Factory ID in which to associate the Linked Service with. Changing this forces a new resource.
  /// [description] The description for the Data Factory Linked Service MySQL.
  /// [integrationRuntimeName] The integration runtime reference to associate with the Data Factory Linked Service MySQL.
  /// [name] Specifies the name of the Data Factory Linked Service MySQL. Changing this forces a new resource to be created. Must be unique within a data factory. See the [Microsoft documentation](https://docs.microsoft.com/azure/data-factory/naming-rules) for all restrictions.
  /// [parameters] A map of parameters to associate with the Data Factory Linked Service MySQL.
  LinkedServiceMysqlArgs({
    Map<String, String>? additionalProperties,
    List<String>? annotations,
    required String connectionString,
    required String dataFactoryId,
    String? description,
    String? integrationRuntimeName,
    String? name,
    Map<String, String>? parameters,
  }) :
      additionalProperties = pulumi.Input.asOptionalInput<Map<String, String>>(additionalProperties),
      annotations = pulumi.Input.asOptionalInput<List<String>>(annotations),
      connectionString = pulumi.Input.asInput<String>(connectionString),
      dataFactoryId = pulumi.Input.asInput<String>(dataFactoryId),
      description = pulumi.Input.asOptionalInput<String>(description),
      integrationRuntimeName = pulumi.Input.asOptionalInput<String>(integrationRuntimeName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<Map<String, String>>(parameters);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': ?additionalProperties,
      'annotations': ?annotations,
      'connectionString': connectionString,
      'dataFactoryId': dataFactoryId,
      'description': ?description,
      'integrationRuntimeName': ?integrationRuntimeName,
      'name': ?name,
      'parameters': ?parameters,
    };
  }

  factory LinkedServiceMysqlArgs.fromMap(Map<String, dynamic> map) {
    return LinkedServiceMysqlArgs(
      additionalProperties: map['additionalProperties'] == null ? null : (map['additionalProperties'] as Map).cast<String, String>(),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<String>(),
      connectionString: map['connectionString'] as String,
      dataFactoryId: map['dataFactoryId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      integrationRuntimeName: map['integrationRuntimeName'] == null ? null : map['integrationRuntimeName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
    );
  }
}

