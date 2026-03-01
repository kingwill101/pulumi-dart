// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure PostgreSQL linked service.
class AzurePostgreSqlLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  final dynamic commandTimeout;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Database name for connection. Type: string.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  final dynamic encoding;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReference? password;
  /// The port for the connection. Type: integer.
  final dynamic port;
  /// Determines the size of the internal buffer uses when reading. Increasing may improve performance if transferring large values from the database. Type: integer.
  final dynamic readBufferSize;
  /// Server name for connection. Type: string.
  final dynamic server;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCertPassword;
  /// The ID of the service principal used to authenticate against Azure Database for PostgreSQL Flexible server. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate against Azure Database for PostgreSQL Flexible server.
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer.
  final dynamic sslMode;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  final dynamic timeout;
  /// Gets or sets the session timezone. Type: string.
  final dynamic timezone;
  /// Whether to trust the server certificate without validating it. Type: boolean.
  final dynamic trustServerCertificate;
  /// Type of linked service.
  /// Expected value is 'AzurePostgreSql'.
  final String type;
  /// Username for authentication. Type: string.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzurePostgreSqlLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [commandTimeout] The time to wait (in seconds) while trying to execute a command before terminating the attempt and generating an error. Set to zero for infinity. Type: integer.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] An ODBC connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [credential] The credential reference containing authentication information.
  /// [database] Database name for connection. Type: string.
  /// [description] Linked service description.
  /// [encoding] Gets or sets the .NET encoding that will be used to encode/decode PostgreSQL string data. Type: string
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The Azure key vault secret reference of password in connection string.
  /// [port] The port for the connection. Type: integer.
  /// [readBufferSize] Determines the size of the internal buffer uses when reading. Increasing may improve performance if transferring large values from the database. Type: integer.
  /// [server] Server name for connection. Type: string.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCert] Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCertPassword] Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the service principal used to authenticate against Azure Database for PostgreSQL Flexible server. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Azure Database for PostgreSQL Flexible server.
  /// [sslMode] SSL mode for connection. Type: integer. 0: disable, 1:allow, 2: prefer, 3: require, 4: verify-ca, 5: verify-full. Type: integer.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [timeout] The time to wait (in seconds) while trying to establish a connection before terminating the attempt and generating an error. Type: integer.
  /// [timezone] Gets or sets the session timezone. Type: string.
  /// [trustServerCertificate] Whether to trust the server certificate without validating it. Type: boolean.
  /// [type] Type of linked service.
  /// [username] Username for authentication. Type: string.
  /// [version] Version of the linked service.
  AzurePostgreSqlLinkedService({
    this.annotations,
    this.azureCloudType,
    this.commandTimeout,
    this.connectVia,
    this.connectionString,
    this.credential,
    this.database,
    this.description,
    this.encoding,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.port,
    this.readBufferSize,
    this.server,
    this.servicePrincipalCredentialType,
    this.servicePrincipalEmbeddedCert,
    this.servicePrincipalEmbeddedCertPassword,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.sslMode,
    this.tenant,
    this.timeout,
    this.timezone,
    this.trustServerCertificate,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'azureCloudType': ?azureCloudType,
      'commandTimeout': ?commandTimeout,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'credential': ?credential == null ? null : credential!.toMap(),
      'database': ?database,
      'description': ?description,
      'encoding': ?encoding,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'readBufferSize': ?readBufferSize,
      'server': ?server,
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?servicePrincipalEmbeddedCert == null ? null : servicePrincipalEmbeddedCert!.toMap(),
      'servicePrincipalEmbeddedCertPassword': ?servicePrincipalEmbeddedCertPassword == null ? null : servicePrincipalEmbeddedCertPassword!.toMap(),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'sslMode': ?sslMode,
      'tenant': ?tenant,
      'timeout': ?timeout,
      'timezone': ?timezone,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory AzurePostgreSqlLinkedService.fromMap(Map<String, dynamic> map) {
    return AzurePostgreSqlLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      commandTimeout: map['commandTimeout'] == null ? null : map['commandTimeout'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encoding: map['encoding'] == null ? null : map['encoding'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      readBufferSize: map['readBufferSize'] == null ? null : map['readBufferSize'],
      server: map['server'] == null ? null : map['server'],
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalEmbeddedCert: map['servicePrincipalEmbeddedCert'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCert'] as Map).cast<String, dynamic>()),
      servicePrincipalEmbeddedCertPassword: map['servicePrincipalEmbeddedCertPassword'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCertPassword'] as Map).cast<String, dynamic>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      sslMode: map['sslMode'] == null ? null : map['sslMode'],
      tenant: map['tenant'] == null ? null : map['tenant'],
      timeout: map['timeout'] == null ? null : map['timeout'],
      timezone: map['timezone'] == null ? null : map['timezone'],
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

