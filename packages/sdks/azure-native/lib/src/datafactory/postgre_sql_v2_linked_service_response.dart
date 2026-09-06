// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for PostgreSQLV2 data source.
class PostgreSqlV2LinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The authentication type to use. Type: string.
  final pulumi.Input<dynamic> authenticationType;
  /// The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  final pulumi.Input<dynamic>? commandTimeout;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  final pulumi.Input<dynamic>? connectionTimeout;
  /// Database name for connection. Type: string.
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  final pulumi.Input<dynamic>? encoding;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// When enabled, parameter values are logged when commands are executed. Type: boolean.
  final pulumi.Input<dynamic>? logParameters;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The Azure key vault secret reference of password in connection string. Type: string.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse?>? password;
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
  final pulumi.Input<String?>? version;

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
  const PostgreSqlV2LinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionTimeout': ?connectionTimeout,
      'database': database,
      'description': ?description,
      'encoding': ?encoding,
      'encryptedCredential': ?encryptedCredential,
      'logParameters': ?logParameters,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
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
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType']),
      commandTimeout: (() { final guardedValue = map['commandTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionTimeout: (() { final guardedValue = map['connectionTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      database: pulumi.Input.fromValue(map['database']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encoding: (() { final guardedValue = map['encoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      logParameters: (() { final guardedValue = map['logParameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      pooling: (() { final guardedValue = map['pooling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      readBufferSize: (() { final guardedValue = map['readBufferSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      server: pulumi.Input.fromValue(map['server']),
      sslCertificate: (() { final guardedValue = map['sslCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sslKey: (() { final guardedValue = map['sslKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      sslMode: pulumi.Input.fromValue(map['sslMode']),
      sslPassword: (() { final guardedValue = map['sslPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      timezone: (() { final guardedValue = map['timezone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      trustServerCertificate: (() { final guardedValue = map['trustServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: pulumi.Input.fromValue(map['username']),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
