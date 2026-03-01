// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Amazon Redshift.
class AmazonRedshiftLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The database name of the Amazon Redshift source. Type: string (or Expression with resultType string).
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The password of the Amazon Redshift source.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The TCP port number that the Amazon Redshift server uses to listen for client connections. The default value is 5439. Type: integer (or Expression with resultType integer).
  final dynamic port;
  /// The name of the Amazon Redshift server. Type: string (or Expression with resultType string).
  final dynamic server;
  /// Type of linked service.
  /// Expected value is 'AmazonRedshift'.
  final String type;
  /// The username of the Amazon Redshift source. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AmazonRedshiftLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [database] The database name of the Amazon Redshift source. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password of the Amazon Redshift source.
  /// [port] The TCP port number that the Amazon Redshift server uses to listen for client connections. The default value is 5439. Type: integer (or Expression with resultType integer).
  /// [server] The name of the Amazon Redshift server. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [username] The username of the Amazon Redshift source. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AmazonRedshiftLinkedServiceResponse({
    this.annotations,
    this.connectVia,
    required this.database,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.port,
    required this.server,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'database': database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'server': server,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory AmazonRedshiftLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AmazonRedshiftLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      database: map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      server: map['server'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

