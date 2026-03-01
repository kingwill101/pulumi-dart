// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for Cassandra data source.
class CassandraLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// AuthenticationType to be used for connection. Type: string (or Expression with resultType string).
  final dynamic authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Host name for connection. Type: string (or Expression with resultType string).
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Password for authentication.
  final AzureKeyVaultSecretReference? password;
  /// The port for the connection. Type: integer (or Expression with resultType integer).
  final dynamic port;
  /// Type of linked service.
  /// Expected value is 'Cassandra'.
  final String type;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [CassandraLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] AuthenticationType to be used for connection. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] Host name for connection. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [port] The port for the connection. Type: integer (or Expression with resultType integer).
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  CassandraLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.host,
    this.parameters,
    this.password,
    this.port,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory CassandraLinkedService.fromMap(Map<String, dynamic> map) {
    return CassandraLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

