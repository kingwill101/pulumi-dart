// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for MongoDB Atlas data source.
class MongoDbAtlasLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The MongoDB Atlas connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic> connectionString;
  /// The name of the MongoDB Atlas database that you want to access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The driver version that you want to choose. Allowed value are v1 and v2. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? driverVersion;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// Type of linked service.
  /// Expected value is 'MongoDbAtlas'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [MongoDbAtlasLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The MongoDB Atlas connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the MongoDB Atlas database that you want to access. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [driverVersion] The driver version that you want to choose. Allowed value are v1 and v2. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  MongoDbAtlasLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': connectionString,
      'database': database,
      'description': ?description,
      'driverVersion': ?driverVersion,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'version': ?version,
    };
  }

  factory MongoDbAtlasLinkedService.fromMap(Map<String, dynamic> map) {
    return MongoDbAtlasLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionString: (map['connectionString']).input(),
      database: (map['database']).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      driverVersion: map['driverVersion'] == null ? null : (map['driverVersion']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

