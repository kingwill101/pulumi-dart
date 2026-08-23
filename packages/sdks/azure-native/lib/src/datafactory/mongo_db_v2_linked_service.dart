// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for MongoDB data source.
class MongoDbV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The MongoDB connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic> connectionString;
  /// The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Type of linked service.
  /// Expected value is 'MongoDbV2'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [MongoDbV2LinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The MongoDB connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the MongoDB database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const MongoDbV2LinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': connectionString,
      'database': database,
      'description': ?description,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
    };
  }

  factory MongoDbV2LinkedService.fromMap(Map<String, dynamic> map) {
    return MongoDbV2LinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString']),
      database: pulumi.Input.fromValue(map['database']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
