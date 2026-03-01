// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for MongoDB data source.
class MongoDbV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The MongoDB connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Type of linked service.
  /// Expected value is 'MongoDbV2'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [MongoDbV2LinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The MongoDB connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  MongoDbV2LinkedService({
    this.annotations,
    this.connectVia,
    required this.connectionString,
    required this.database,
    this.description,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': connectionString,
      'database': database,
      'description': ?description,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'type': type,
      'version': ?version,
    };
  }

  factory MongoDbV2LinkedService.fromMap(Map<String, dynamic> map) {
    return MongoDbV2LinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'],
      database: map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

