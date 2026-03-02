// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for PostgreSQLV2 data source.
class PostgreSqlV2LinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The authentication type to use. Type: string.
  final pulumi.Input<dynamic> authenticationType;
  /// The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  final pulumi.Input<dynamic>? commandTimeout;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  final pulumi.Input<dynamic>? connectionTimeout;
  /// Database name for connection. Type: string.
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  final pulumi.Input<dynamic>? encoding;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// When enabled, parameter values are logged when commands are executed. Type: boolean.
  final pulumi.Input<dynamic>? logParameters;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The Azure key vault secret reference of password in connection string. Type: string.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
  /// Whether connection pooling should be used. Type: boolean.
  final pulumi.Input<dynamic>? pooling;
  /// The port for the connection. Type: integer.
  final pulumi.Input<dynamic>? port;
  /// Determines the size of the internal buffer uses when reading. Increasing may improve performance if transferring large values from the database. Type: integer.
  final pulumi.Input<dynamic>? readBufferSize;
  /// Sets the schema search path. Type: string.
  final pulumi.Input<dynamic>? schema;
  /// Server name for connection. Type: string.
  final pulumi.Input<dynamic> server;
  /// Location of a client certificate to be sent to the server. Type: string.
  final pulumi.Input<dynamic>? sslCertificate;
  /// Location of a client key for a client certificate to be sent to the server. Type: string.
  final pulumi.Input<dynamic>? sslKey;
  /// SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer.
  final pulumi.Input<dynamic> sslMode;
  /// Password for a key for a client certificate. Type: string.
  final pulumi.Input<dynamic>? sslPassword;
  /// Gets or sets the session timezone. Type: string.
  final pulumi.Input<dynamic>? timezone;
  /// Whether to trust the server certificate without validating it. Type: boolean.
  final pulumi.Input<dynamic>? trustServerCertificate;
  /// Type of linked service.
  /// Expected value is 'PostgreSqlV2'.
  final pulumi.Input<String> type;
  /// Username for authentication. Type: string.
  final pulumi.Input<dynamic> username;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [PostgreSqlV2LinkedService].
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
  PostgreSqlV2LinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionTimeout': ?connectionTimeout,
      'database': database,
      'description': ?description,
      'encoding': ?encoding,
      'encryptedCredential': ?encryptedCredential,
      'logParameters': ?logParameters,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
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

  factory PostgreSqlV2LinkedService.fromMap(Map<String, dynamic> map) {
    return PostgreSqlV2LinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authenticationType: (map['authenticationType']).input(),
      commandTimeout: map['commandTimeout'] == null ? null : (map['commandTimeout']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionTimeout: map['connectionTimeout'] == null ? null : (map['connectionTimeout']!).input(),
      database: (map['database']).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      logParameters: map['logParameters'] == null ? null : (map['logParameters']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      pooling: map['pooling'] == null ? null : (map['pooling']!).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      readBufferSize: map['readBufferSize'] == null ? null : (map['readBufferSize']!).input(),
      schema: map['schema'] == null ? null : (map['schema']!).input(),
      server: (map['server']).input(),
      sslCertificate: map['sslCertificate'] == null ? null : (map['sslCertificate']!).input(),
      sslKey: map['sslKey'] == null ? null : (map['sslKey']!).input(),
      sslMode: (map['sslMode']).input(),
      sslPassword: map['sslPassword'] == null ? null : (map['sslPassword']!).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']!).input(),
      trustServerCertificate: map['trustServerCertificate'] == null ? null : (map['trustServerCertificate']!).input(),
      type: (map['type'] as String).input(),
      username: (map['username']).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

