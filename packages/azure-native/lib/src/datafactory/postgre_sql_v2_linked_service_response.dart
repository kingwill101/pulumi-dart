// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for PostgreSQLV2 data source.
class PostgreSqlV2LinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to use. Type: string.
  final dynamic authenticationType;
  /// The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  final dynamic commandTimeout;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  final dynamic connectionTimeout;
  /// Database name for connection. Type: string.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  final dynamic encoding;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// When enabled, parameter values are logged when commands are executed. Type: boolean.
  final dynamic logParameters;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The Azure key vault secret reference of password in connection string. Type: string.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// Whether connection pooling should be used. Type: boolean.
  final dynamic pooling;
  /// The port for the connection. Type: integer.
  final dynamic port;
  /// Determines the size of the internal buffer uses when reading. Increasing may improve performance if transferring large values from the database. Type: integer.
  final dynamic readBufferSize;
  /// Sets the schema search path. Type: string.
  final dynamic schema;
  /// Server name for connection. Type: string.
  final dynamic server;
  /// Location of a client certificate to be sent to the server. Type: string.
  final dynamic sslCertificate;
  /// Location of a client key for a client certificate to be sent to the server. Type: string.
  final dynamic sslKey;
  /// SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer.
  final dynamic sslMode;
  /// Password for a key for a client certificate. Type: string.
  final dynamic sslPassword;
  /// Gets or sets the session timezone. Type: string.
  final dynamic timezone;
  /// Whether to trust the server certificate without validating it. Type: boolean.
  final dynamic trustServerCertificate;
  /// Type of linked service.
  /// Expected value is 'PostgreSqlV2'.
  final String type;
  /// Username for authentication. Type: string.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [PostgreSqlV2LinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to use. Type: string.
  /// [commandTimeout] The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  /// [connectVia] The integration runtime reference.
  /// [connectionTimeout] The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  /// [database] Database name for connection. Type: string.
  /// [description] Linked service description.
  /// [encoding] Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [logParameters] When enabled, parameter values are logged when commands are executed. Type: boolean.
  /// [parameters] Parameters for linked service.
  /// [password] The Azure key vault secret reference of password in connection string. Type: string.
  /// [pooling] Whether connection pooling should be used. Type: boolean.
  /// [port] The port for the connection. Type: integer.
  /// [readBufferSize] Determines the size of the internal buffer uses when reading. Increasing may improve performance if transferring large values from the database. Type: integer.
  /// [schema] Sets the schema search path. Type: string.
  /// [server] Server name for connection. Type: string.
  /// [sslCertificate] Location of a client certificate to be sent to the server. Type: string.
  /// [sslKey] Location of a client key for a client certificate to be sent to the server. Type: string.
  /// [sslMode] SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer.
  /// [sslPassword] Password for a key for a client certificate. Type: string.
  /// [timezone] Gets or sets the session timezone. Type: string.
  /// [trustServerCertificate] Whether to trust the server certificate without validating it. Type: boolean.
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string.
  /// [version] Version of the linked service.
  PostgreSqlV2LinkedServiceResponse({
    this.annotations,
    required this.authenticationType,
    this.commandTimeout,
    this.connectVia,
    this.connectionTimeout,
    required this.database,
    this.description,
    this.encoding,
    this.encryptedCredential,
    this.logParameters,
    this.parameters,
    this.password,
    this.pooling,
    this.port,
    this.readBufferSize,
    this.schema,
    required this.server,
    this.sslCertificate,
    this.sslKey,
    required this.sslMode,
    this.sslPassword,
    this.timezone,
    this.trustServerCertificate,
    required this.type,
    required this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'commandTimeout': ?commandTimeout,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionTimeout': ?connectionTimeout,
      'database': database,
      'description': ?description,
      'encoding': ?encoding,
      'encryptedCredential': ?encryptedCredential,
      'logParameters': ?logParameters,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'pooling': ?pooling,
      'port': ?port,
      'readBufferSize': ?readBufferSize,
      'schema': ?schema,
      'server': server,
      'sslCertificate': ?sslCertificate,
      'sslKey': ?sslKey,
      'sslMode': sslMode,
      'sslPassword': ?sslPassword,
      'timezone': ?timezone,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'username': username,
      'version': ?version,
    };
  }

  factory PostgreSqlV2LinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return PostgreSqlV2LinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'],
      commandTimeout: map['commandTimeout'] == null ? null : map['commandTimeout'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionTimeout: map['connectionTimeout'] == null ? null : map['connectionTimeout'],
      database: map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      logParameters: map['logParameters'] == null ? null : map['logParameters'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pooling: map['pooling'] == null ? null : map['pooling'],
      port: map['port'] == null ? null : map['port'],
      readBufferSize: map['readBufferSize'] == null ? null : map['readBufferSize'],
      schema: map['schema'] == null ? null : map['schema'],
      server: map['server'],
      sslCertificate: map['sslCertificate'] == null ? null : map['sslCertificate'],
      sslKey: map['sslKey'] == null ? null : map['sslKey'],
      sslMode: map['sslMode'],
      sslPassword: map['sslPassword'] == null ? null : map['sslPassword'],
      timezone: map['timezone'] == null ? null : map['timezone'],
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'],
      type: map['type'] as String,
      username: map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

