// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for MongoDB Atlas data source.
class MongoDbAtlasLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// The MongoDB Atlas connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic> connectionString;
  /// The name of the MongoDB Atlas database that you want to access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The driver version that you want to choose. Allowed value are v1 and v2. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? driverVersion;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Type of linked service.
  /// Expected value is 'MongoDbAtlas'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [MongoDbAtlasLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The MongoDB Atlas connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the MongoDB Atlas database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [driverVersion] The driver version that you want to choose. Allowed value are v1 and v2. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const MongoDbAtlasLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    required this.connectionString,
    required this.database,
    this.description,
    this.driverVersion,
    this.parameters,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': connectionString,
      'database': database,
      'description': ?description,
      'driverVersion': ?driverVersion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
    };
  }

  factory MongoDbAtlasLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return MongoDbAtlasLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: pulumi.Input.fromValue(map['connectionString']),
      database: pulumi.Input.fromValue(map['database']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      driverVersion: (() { final guardedValue = map['driverVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
