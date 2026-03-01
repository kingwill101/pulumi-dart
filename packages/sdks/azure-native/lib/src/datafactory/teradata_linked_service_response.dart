// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Teradata data source.
class TeradataLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// AuthenticationType to be used for connection.
  final String? authenticationType;
  /// The character set to use for the connection. Type: string (or Expression with resultType string). Only applied for version 2.0.
  final dynamic characterSet;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// Teradata ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only applied for version 1.0.
  final dynamic connectionString;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The port numbers when connecting to server through HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  final dynamic httpsPortNumber;
  /// The maximum size of the response buffer for SQL requests, in bytes. Type: integer. Only applied for version 2.0.
  final dynamic maxRespSize;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Password for authentication.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The port numbers when connecting to server through non HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only used for V2. Only applied for version 2.0.
  final dynamic portNumber;
  /// Server name for connection. Type: string (or Expression with resultType string).
  final dynamic server;
  /// SSL mode for connection. Valid values including: “Disable”, “Allow”, “Prefer”, “Require”, “Verify-CA”, “Verify-Full”. Default value is “Verify-Full”. Type: string (or Expression with resultType string). Only applied for version 2.0.
  final dynamic sslMode;
  /// Type of linked service.
  /// Expected value is 'Teradata'.
  final String type;
  /// Specifies whether to encrypt all communication with the Teradata database. Allowed values are 0 or 1. This setting will be ignored for HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  final dynamic useDataEncryption;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [TeradataLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] AuthenticationType to be used for connection.
  /// [characterSet] The character set to use for the connection. Type: string (or Expression with resultType string). Only applied for version 2.0.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] Teradata ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only applied for version 1.0.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [httpsPortNumber] The port numbers when connecting to server through HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  /// [maxRespSize] The maximum size of the response buffer for SQL requests, in bytes. Type: integer. Only applied for version 2.0.
  /// [parameters] Parameters for linked service.
  /// [password] Password for authentication.
  /// [portNumber] The port numbers when connecting to server through non HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only used for V2. Only applied for version 2.0.
  /// [server] Server name for connection. Type: string (or Expression with resultType string).
  /// [sslMode] SSL mode for connection. Valid values including: “Disable”, “Allow”, “Prefer”, “Require”, “Verify-CA”, “Verify-Full”. Default value is “Verify-Full”. Type: string (or Expression with resultType string). Only applied for version 2.0.
  /// [type] Type of linked service.
  /// [useDataEncryption] Specifies whether to encrypt all communication with the Teradata database. Allowed values are 0 or 1. This setting will be ignored for HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  /// [username] Username for authentication. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  TeradataLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.characterSet,
    this.connectVia,
    this.connectionString,
    this.description,
    this.encryptedCredential,
    this.httpsPortNumber,
    this.maxRespSize,
    this.parameters,
    this.password,
    this.portNumber,
    this.server,
    this.sslMode,
    required this.type,
    this.useDataEncryption,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'characterSet': ?characterSet,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'httpsPortNumber': ?httpsPortNumber,
      'maxRespSize': ?maxRespSize,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'portNumber': ?portNumber,
      'server': ?server,
      'sslMode': ?sslMode,
      'type': type,
      'useDataEncryption': ?useDataEncryption,
      'username': ?username,
      'version': ?version,
    };
  }

  factory TeradataLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return TeradataLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      characterSet: map['characterSet'] == null ? null : map['characterSet'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      httpsPortNumber: map['httpsPortNumber'] == null ? null : map['httpsPortNumber'],
      maxRespSize: map['maxRespSize'] == null ? null : map['maxRespSize'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      portNumber: map['portNumber'] == null ? null : map['portNumber'],
      server: map['server'] == null ? null : map['server'],
      sslMode: map['sslMode'] == null ? null : map['sslMode'],
      type: map['type'] as String,
      useDataEncryption: map['useDataEncryption'] == null ? null : map['useDataEncryption'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

