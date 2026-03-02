// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for Teradata data source.
class TeradataLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// AuthenticationType to be used for connection.
  final pulumi.Input<String>? authenticationType;
  /// The character set to use for the connection. Type: string (or Expression with resultType string). Only applied for version 2.0.
  final pulumi.Input<dynamic>? characterSet;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Teradata ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only applied for version 1.0.
  final pulumi.Input<dynamic>? connectionString;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// The port numbers when connecting to server through HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  final pulumi.Input<dynamic>? httpsPortNumber;
  /// The maximum size of the response buffer for SQL requests, in bytes. Type: integer. Only applied for version 2.0.
  final pulumi.Input<dynamic>? maxRespSize;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Password for authentication.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// The port numbers when connecting to server through non HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only used for V2. Only applied for version 2.0.
  final pulumi.Input<dynamic>? portNumber;
  /// Server name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;
  /// SSL mode for connection. Valid values including: “Disable”, “Allow”, “Prefer”, “Require”, “Verify-CA”, “Verify-Full”. Default value is “Verify-Full”. Type: string (or Expression with resultType string). Only applied for version 2.0.
  final pulumi.Input<dynamic>? sslMode;
  /// Type of linked service.
  /// Expected value is 'Teradata'.
  final pulumi.Input<String> type;
  /// Specifies whether to encrypt all communication with the Teradata database. Allowed values are 0 or 1. This setting will be ignored for HTTPS/TLS connections. Type: integer (or Expression with resultType integer). Only applied for version 2.0.
  final pulumi.Input<dynamic>? useDataEncryption;
  /// Username for authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'httpsPortNumber': ?httpsPortNumber,
      'maxRespSize': ?maxRespSize,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
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
      annotations: map['annotations'] == null ? null : ((map['annotations'] as List).cast<dynamic>()).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType'] as String).input(),
      characterSet: map['characterSet'] == null ? null : (map['characterSet']).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential'] as String).input(),
      httpsPortNumber: map['httpsPortNumber'] == null ? null : (map['httpsPortNumber']).input(),
      maxRespSize: map['maxRespSize'] == null ? null : (map['maxRespSize']).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>())).input(),
      portNumber: map['portNumber'] == null ? null : (map['portNumber']).input(),
      server: map['server'] == null ? null : (map['server']).input(),
      sslMode: map['sslMode'] == null ? null : (map['sslMode']).input(),
      type: (map['type'] as String).input(),
      useDataEncryption: map['useDataEncryption'] == null ? null : (map['useDataEncryption']).input(),
      username: map['username'] == null ? null : (map['username']).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
    );
  }
}

