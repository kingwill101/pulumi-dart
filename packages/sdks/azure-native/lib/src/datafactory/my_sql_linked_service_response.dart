// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Linked service for MySQL data source.
class MySqlLinkedServiceResponse {
  /// This allows the special “zero” date value 0000-00-00 to be retrieved from the database. Type: boolean.
  final pulumi.Input<dynamic>? allowZeroDateTime;

  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;

  /// The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error. Type: integer.
  final pulumi.Input<dynamic>? connectionTimeout;

  /// True to return DateTime.MinValue for date or datetime columns that have disallowed values. Type: boolean.
  final pulumi.Input<dynamic>? convertZeroDateTime;

  /// Database name for connection. Type: string.
  final pulumi.Input<dynamic>? database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The version of the MySQL driver. Type: string. V1 or empty for legacy driver, V2 for new driver. V1 can support connection string and property bag, V2 can only support connection string.
  final pulumi.Input<dynamic>? driverVersion;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// Determines which column type (if any) should be read as a GUID. Type: string. None: No column types are automatically read as a Guid; Char36: All CHAR(36) columns are read/written as a Guid using lowercase hex with hyphens, which matches UUID.
  final pulumi.Input<dynamic>? guidFormat;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;

  /// The port for the connection. Type: integer.
  final pulumi.Input<dynamic>? port;

  /// Server name for connection. Type: string.
  final pulumi.Input<dynamic>? server;

  /// The path to the client’s SSL certificate file in PEM format. SslKey must also be specified. Type: string.
  final pulumi.Input<dynamic>? sslCert;

  /// The path to the client’s SSL private key in PEM format. SslCert must also be specified. Type: string.
  final pulumi.Input<dynamic>? sslKey;

  /// SSL mode for connection. Type: integer. 0: disable, 1: prefer, 2: require, 3: verify-ca, 4: verify-full.
  final pulumi.Input<dynamic>? sslMode;

  /// When set to true, TINYINT(1) values are returned as booleans. Type: bool.
  final pulumi.Input<dynamic>? treatTinyAsBoolean;

  /// Type of linked service.
  /// Expected value is 'MySql'.
  final pulumi.Input<String> type;

  /// Use system trust store for connection. Type: integer. 0: enable, 1: disable.
  final pulumi.Input<dynamic>? useSystemTrustStore;

  /// Username for authentication. Type: string.
  final pulumi.Input<dynamic>? username;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'connectionTimeout': ?connectionTimeout,
      'convertZeroDateTime': ?convertZeroDateTime,
      'database': ?database,
      'description': ?description,
      'driverVersion': ?driverVersion,
      'encryptedCredential': ?encryptedCredential,
      'guidFormat': ?guidFormat,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
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
      allowZeroDateTime: (() {
        final guardedValue = map['allowZeroDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      connectionTimeout: (() {
        final guardedValue = map['connectionTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      convertZeroDateTime: (() {
        final guardedValue = map['convertZeroDateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      driverVersion: (() {
        final guardedValue = map['driverVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      guidFormat: (() {
        final guardedValue = map['guidFormat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sslCert: (() {
        final guardedValue = map['sslCert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sslKey: (() {
        final guardedValue = map['sslKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      sslMode: (() {
        final guardedValue = map['sslMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      treatTinyAsBoolean: (() {
        final guardedValue = map['treatTinyAsBoolean'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useSystemTrustStore: (() {
        final guardedValue = map['useSystemTrustStore'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
