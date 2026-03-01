// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for MySQL data source.
class MySqlLinkedServiceResponse {
  /// This allows the special “zero” date value 0000-00-00 to be retrieved from the database. Type: boolean.
  final dynamic allowZeroDateTime;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error. Type: integer.
  final dynamic connectionTimeout;
  /// True to return DateTime.MinValue for date or datetime columns that have disallowed values. Type: boolean.
  final dynamic convertZeroDateTime;
  /// Database name for connection. Type: string.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The version of the MySQL driver. Type: string. V1 or empty for legacy driver, V2 for new driver. V1 can support connection string and property bag, V2 can only support connection string.
  final dynamic driverVersion;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Determines which column type (if any) should be read as a GUID. Type: string. None: No column types are automatically read as a Guid; Char36: All CHAR(36) columns are read/written as a Guid using lowercase hex with hyphens, which matches UUID.
  final dynamic guidFormat;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The port for the connection. Type: integer.
  final dynamic port;
  /// Server name for connection. Type: string.
  final dynamic server;
  /// The path to the client’s SSL certificate file in PEM format. SslKey must also be specified. Type: string.
  final dynamic sslCert;
  /// The path to the client’s SSL private key in PEM format. SslCert must also be specified. Type: string.
  final dynamic sslKey;
  /// SSL mode for connection. Type: integer. 0: disable, 1: prefer, 2: require, 3: verify-ca, 4: verify-full.
  final dynamic sslMode;
  /// When set to true, TINYINT(1) values are returned as booleans. Type: bool.
  final dynamic treatTinyAsBoolean;
  /// Type of linked service.
  /// Expected value is 'MySql'.
  final String type;
  /// Use system trust store for connection. Type: integer. 0: enable, 1: disable.
  final dynamic useSystemTrustStore;
  /// Username for authentication. Type: string.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [MySqlLinkedServiceResponse].
  /// [allowZeroDateTime] This allows the special “zero” date value 0000-00-00 to be retrieved from the database. Type: boolean.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [connectionTimeout] The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error. Type: integer.
  /// [convertZeroDateTime] True to return DateTime.MinValue for date or datetime columns that have disallowed values. Type: boolean.
  /// [database] Database name for connection. Type: string.
  /// [description] Linked service description.
  /// [driverVersion] The version of the MySQL driver. Type: string. V1 or empty for legacy driver, V2 for new driver. V1 can support connection string and property bag, V2 can only support connection string.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [guidFormat] Determines which column type (if any) should be read as a GUID. Type: string. None: No column types are automatically read as a Guid; Char36: All CHAR(36) columns are read/written as a Guid using lowercase hex with hyphens, which matches UUID.
  /// [parameters] Parameters for linked service.
  /// [password] The Azure key vault secret reference of password in connection string.
  /// [port] The port for the connection. Type: integer.
  /// [server] Server name for connection. Type: string.
  /// [sslCert] The path to the client’s SSL certificate file in PEM format. SslKey must also be specified. Type: string.
  /// [sslKey] The path to the client’s SSL private key in PEM format. SslCert must also be specified. Type: string.
  /// [sslMode] SSL mode for connection. Type: integer. 0: disable, 1: prefer, 2: require, 3: verify-ca, 4: verify-full.
  /// [treatTinyAsBoolean] When set to true, TINYINT(1) values are returned as booleans. Type: bool.
  /// [type] Type of linked service.
  /// [useSystemTrustStore] Use system trust store for connection. Type: integer. 0: enable, 1: disable.
  /// [username] Username for authentication. Type: string.
  /// [version] Version of the linked service.
  MySqlLinkedServiceResponse({
    this.allowZeroDateTime,
    this.annotations,
    this.connectVia,
    this.connectionString,
    this.connectionTimeout,
    this.convertZeroDateTime,
    this.database,
    this.description,
    this.driverVersion,
    this.encryptedCredential,
    this.guidFormat,
    this.parameters,
    this.password,
    this.port,
    this.server,
    this.sslCert,
    this.sslKey,
    this.sslMode,
    this.treatTinyAsBoolean,
    required this.type,
    this.useSystemTrustStore,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowZeroDateTime': ?allowZeroDateTime,
      'annotations': ?annotations,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'connectionTimeout': ?connectionTimeout,
      'convertZeroDateTime': ?convertZeroDateTime,
      'database': ?database,
      'description': ?description,
      'driverVersion': ?driverVersion,
      'encryptedCredential': ?encryptedCredential,
      'guidFormat': ?guidFormat,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'server': ?server,
      'sslCert': ?sslCert,
      'sslKey': ?sslKey,
      'sslMode': ?sslMode,
      'treatTinyAsBoolean': ?treatTinyAsBoolean,
      'type': type,
      'useSystemTrustStore': ?useSystemTrustStore,
      'username': ?username,
      'version': ?version,
    };
  }

  factory MySqlLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return MySqlLinkedServiceResponse(
      allowZeroDateTime: map['allowZeroDateTime'] == null ? null : map['allowZeroDateTime'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      connectionTimeout: map['connectionTimeout'] == null ? null : map['connectionTimeout'],
      convertZeroDateTime: map['convertZeroDateTime'] == null ? null : map['convertZeroDateTime'],
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      driverVersion: map['driverVersion'] == null ? null : map['driverVersion'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      guidFormat: map['guidFormat'] == null ? null : map['guidFormat'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      server: map['server'] == null ? null : map['server'],
      sslCert: map['sslCert'] == null ? null : map['sslCert'],
      sslKey: map['sslKey'] == null ? null : map['sslKey'],
      sslMode: map['sslMode'] == null ? null : map['sslMode'],
      treatTinyAsBoolean: map['treatTinyAsBoolean'] == null ? null : map['treatTinyAsBoolean'],
      type: map['type'] as String,
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : map['useSystemTrustStore'],
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

