// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for CosmosDB (MongoDB API) data source.
class CosmosDbMongoDbApiLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;

  /// The CosmosDB (MongoDB API) connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic> connectionString;

  /// The name of the CosmosDB (MongoDB API) database that you want to access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// Whether the CosmosDB (MongoDB API) server version is higher than 3.2. The default value is false. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? isServerVersionAbove32;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// Type of linked service.
  /// Expected value is 'CosmosDbMongoDbApi'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [CosmosDbMongoDbApiLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The CosmosDB (MongoDB API) connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the CosmosDB (MongoDB API) database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [isServerVersionAbove32] Whether the CosmosDB (MongoDB API) server version is higher than 3.2. The default value is false. Type: boolean (or Expression with resultType boolean).
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  CosmosDbMongoDbApiLinkedService({
    this.annotations,
    this.connectVia,
    required this.connectionString,
    required this.database,
    this.description,
    this.isServerVersionAbove32,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReference,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionString': connectionString,
      'database': database,
      'description': ?description,
      'isServerVersionAbove32': ?isServerVersionAbove32,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'type': type,
      'version': ?version,
    };
  }

  factory CosmosDbMongoDbApiLinkedService.fromMap(Map<String, dynamic> map) {
    return CosmosDbMongoDbApiLinkedService(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionString: pulumi.Input.fromValue(map['connectionString']),
      database: pulumi.Input.fromValue(map['database']),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isServerVersionAbove32: (() {
        final guardedValue = map['isServerVersionAbove32'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
