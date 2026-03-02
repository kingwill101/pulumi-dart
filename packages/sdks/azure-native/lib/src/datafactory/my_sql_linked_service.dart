// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Linked service for MySQL data source.
class MySqlLinkedService {
  /// This allows the special “zero” date value 0000-00-00 to be retrieved from the database. Type: boolean.
  final pulumi.Input<dynamic>? allowZeroDateTime;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
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
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;
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

  /// Creates a new [MySqlLinkedService].
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
  MySqlLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'connectionTimeout': ?connectionTimeout,
      'convertZeroDateTime': ?convertZeroDateTime,
      'database': ?database,
      'description': ?description,
      'driverVersion': ?driverVersion,
      'encryptedCredential': ?encryptedCredential,
      'guidFormat': ?guidFormat,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(password, (value) => value.toMap()),
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

  factory MySqlLinkedService.fromMap(Map<String, dynamic> map) {
    return MySqlLinkedService(
      allowZeroDateTime: map['allowZeroDateTime'] == null ? null : (map['allowZeroDateTime']!).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']!).input(),
      connectionTimeout: map['connectionTimeout'] == null ? null : (map['connectionTimeout']!).input(),
      convertZeroDateTime: map['convertZeroDateTime'] == null ? null : (map['convertZeroDateTime']!).input(),
      database: map['database'] == null ? null : (map['database']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      driverVersion: map['driverVersion'] == null ? null : (map['driverVersion']!).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      guidFormat: map['guidFormat'] == null ? null : (map['guidFormat']!).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      port: map['port'] == null ? null : (map['port']!).input(),
      server: map['server'] == null ? null : (map['server']!).input(),
      sslCert: map['sslCert'] == null ? null : (map['sslCert']!).input(),
      sslKey: map['sslKey'] == null ? null : (map['sslKey']!).input(),
      sslMode: map['sslMode'] == null ? null : (map['sslMode']!).input(),
      treatTinyAsBoolean: map['treatTinyAsBoolean'] == null ? null : (map['treatTinyAsBoolean']!).input(),
      type: (map['type'] as String).input(),
      useSystemTrustStore: map['useSystemTrustStore'] == null ? null : (map['useSystemTrustStore']!).input(),
      username: map['username'] == null ? null : (map['username']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

