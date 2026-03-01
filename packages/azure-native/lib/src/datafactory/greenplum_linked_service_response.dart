// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Greenplum Database linked service.
class GreenplumLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to use. Type: string. Only used for V2.
  final String? authenticationType;
  /// The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer. Only used for V2.
  final dynamic commandTimeout;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer. Only used for V2.
  final dynamic connectionTimeout;
  /// Database name for connection. Type: string. Only used for V2.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Host name for connection. Type: string. Only used for V2.
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The port for the connection. Type: integer. Only used for V2.
  final dynamic port;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReferenceResponse? pwd;
  /// SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer. Only used for V2.
  final dynamic sslMode;
  /// Type of linked service.
  /// Expected value is 'Greenplum'.
  final String type;
  /// Username for authentication. Type: string. Only used for V2.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [GreenplumLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to use. Type: string. Only used for V2.
  /// [commandTimeout] The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer. Only used for V2.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [connectionTimeout] The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer. Only used for V2.
  /// [database] Database name for connection. Type: string. Only used for V2.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] Host name for connection. Type: string. Only used for V2.
  /// [parameters] Parameters for linked service.
  /// [port] The port for the connection. Type: integer. Only used for V2.
  /// [pwd] The Azure key vault secret reference of password in connection string.
  /// [sslMode] SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer. Only used for V2.
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string. Only used for V2.
  /// [version] Version of the linked service.
  GreenplumLinkedServiceResponse({
    this.annotations,
    this.authenticationType,
    this.commandTimeout,
    this.connectVia,
    this.connectionString,
    this.connectionTimeout,
    this.database,
    this.description,
    this.encryptedCredential,
    this.host,
    this.parameters,
    this.port,
    this.pwd,
    this.sslMode,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'commandTimeout': ?commandTimeout,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'connectionTimeout': ?connectionTimeout,
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': ?host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'port': ?port,
      'pwd': ?pwd == null ? null : pwd!.toMap(),
      'sslMode': ?sslMode,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory GreenplumLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return GreenplumLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      commandTimeout: map['commandTimeout'] == null ? null : map['commandTimeout'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      connectionTimeout: map['connectionTimeout'] == null ? null : map['connectionTimeout'],
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'] == null ? null : map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      port: map['port'] == null ? null : map['port'],
      pwd: map['pwd'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['pwd'] as Map).cast<String, dynamic>()),
      sslMode: map['sslMode'] == null ? null : map['sslMode'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

