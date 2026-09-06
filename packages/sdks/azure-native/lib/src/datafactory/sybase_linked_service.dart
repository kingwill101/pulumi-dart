// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Sybase data source.
class SybaseLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// AuthenticationType to be used for connection.
  final pulumi.Input<dynamic>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// Database name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// Password for authentication.
  final pulumi.Input<dynamic>? password;
  /// Schema name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? schema;
  /// Server name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> server;
  /// Type of linked service.
  /// Expected value is 'Sybase'.
  final pulumi.Input<String> type;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SybaseLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] AuthenticationType to be used for connection.
  /// [connectVia] The integration runtime reference.
  /// [database] Database name for connection. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [schema] Schema name for connection. Type: string (or Expression with resultType string).
  /// [server] Server name for connection. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const SybaseLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    required this.database,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.schema,
    required this.server,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'database': database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'schema': ?schema,
      'server': server,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory SybaseLinkedService.fromMap(Map<String, dynamic> map) {
    return SybaseLinkedService(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      database: pulumi.Input.fromValue(map['database']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      server: pulumi.Input.fromValue(map['server']),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
