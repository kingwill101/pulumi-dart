// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Oracle database. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class OracleLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Authentication type for connecting to the Oracle database. Only used for Version 2.0.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only used for Version 1.0.
  final dynamic connectionString;
  /// Specifies the desired data integrity behavior when this client connects to a server. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  final dynamic cryptoChecksumClient;
  /// Specifies the crypto-checksum algorithms that client can use. Supported values are SHA1, SHA256, SHA384, SHA512, default value is (SHA512). Type: string. Only used for Version 2.0.
  final dynamic cryptoChecksumTypesClient;
  /// Linked service description.
  final String? description;
  /// Specifies whether to use bulk copy or batch insert when loading data into the database, default value is true. Type: boolean. Only used for Version 2.0.
  final dynamic enableBulkLoad;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Specifies the encryption client behavior. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  final dynamic encryptionClient;
  /// Specifies the encryption algorithms that client can use. Supported values are AES128, AES192, AES256, 3DES112, 3DES168, default value is (AES256). Type: string. Only used for Version 2.0.
  final dynamic encryptionTypesClient;
  /// Specifies the number of bytes that the driver allocates to fetch the data in one database round-trip, default value is 10485760. Type: integer. Only used for Version 2.0.
  final dynamic fetchSize;
  /// Specifies whether the driver returns column value with the TIMESTAMP WITH TIME ZONE data type as DateTime or string. This setting is ignored if supportV1DataTypes is not true, default value is true. Type: boolean. Only used for Version 2.0.
  final dynamic fetchTswtzAsTimestamp;
  /// Specifies the amount that the source initially fetches for LOB columns, default value is 0. Type: integer. Only used for Version 2.0.
  final dynamic initialLobFetchSize;
  /// Specifies a command that is issued immediately after connecting to the database to manage session settings. Type: string. Only used for Version 2.0.
  final dynamic initializationString;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReference? password;
  /// The location of Oracle database you want to connect to, the supported forms include connector descriptor, Easy Connect (Plus) Naming and Oracle Net Services Name (Only self-hosted IR). Type: string. Only used for Version 2.0.
  final dynamic server;
  /// Specifies the number of cursors or statements to be cached for each database connection, default value is 0. Type: integer. Only used for Version 2.0.
  final dynamic statementCacheSize;
  /// Specifies whether to use the Version 1.0 data type mappings. Do not set this to true unless you want to keep backward compatibility with Version 1.0's data type mappings, default value is false. Type: boolean. Only used for Version 2.0.
  final dynamic supportV1DataTypes;
  /// Type of linked service.
  /// Expected value is 'Oracle'.
  final String type;
  /// The Oracle database username. Type: string. Only used for Version 2.0.
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [OracleLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] Authentication type for connecting to the Oracle database. Only used for Version 2.0.
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only used for Version 1.0.
  /// [cryptoChecksumClient] Specifies the desired data integrity behavior when this client connects to a server. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  /// [cryptoChecksumTypesClient] Specifies the crypto-checksum algorithms that client can use. Supported values are SHA1, SHA256, SHA384, SHA512, default value is (SHA512). Type: string. Only used for Version 2.0.
  /// [description] Linked service description.
  /// [enableBulkLoad] Specifies whether to use bulk copy or batch insert when loading data into the database, default value is true. Type: boolean. Only used for Version 2.0.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [encryptionClient] Specifies the encryption client behavior. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  /// [encryptionTypesClient] Specifies the encryption algorithms that client can use. Supported values are AES128, AES192, AES256, 3DES112, 3DES168, default value is (AES256). Type: string. Only used for Version 2.0.
  /// [fetchSize] Specifies the number of bytes that the driver allocates to fetch the data in one database round-trip, default value is 10485760. Type: integer. Only used for Version 2.0.
  /// [fetchTswtzAsTimestamp] Specifies whether the driver returns column value with the TIMESTAMP WITH TIME ZONE data type as DateTime or string. This setting is ignored if supportV1DataTypes is not true, default value is true. Type: boolean. Only used for Version 2.0.
  /// [initialLobFetchSize] Specifies the amount that the source initially fetches for LOB columns, default value is 0. Type: integer. Only used for Version 2.0.
  /// [initializationString] Specifies a command that is issued immediately after connecting to the database to manage session settings. Type: string. Only used for Version 2.0.
  /// [parameters] Parameters for linked service.
  /// [password] The Azure key vault secret reference of password in connection string.
  /// [server] The location of Oracle database you want to connect to, the supported forms include connector descriptor, Easy Connect (Plus) Naming and Oracle Net Services Name (Only self-hosted IR). Type: string. Only used for Version 2.0.
  /// [statementCacheSize] Specifies the number of cursors or statements to be cached for each database connection, default value is 0. Type: integer. Only used for Version 2.0.
  /// [supportV1DataTypes] Specifies whether to use the Version 1.0 data type mappings. Do not set this to true unless you want to keep backward compatibility with Version 1.0's data type mappings, default value is false. Type: boolean. Only used for Version 2.0.
  /// [type] Type of linked service.
  /// [username] The Oracle database username. Type: string. Only used for Version 2.0.
  /// [version] Version of the linked service.
  OracleLinkedService({
    this.annotations,
    this.authenticationType,
    this.connectVia,
    this.connectionString,
    this.cryptoChecksumClient,
    this.cryptoChecksumTypesClient,
    this.description,
    this.enableBulkLoad,
    this.encryptedCredential,
    this.encryptionClient,
    this.encryptionTypesClient,
    this.fetchSize,
    this.fetchTswtzAsTimestamp,
    this.initialLobFetchSize,
    this.initializationString,
    this.parameters,
    this.password,
    this.server,
    this.statementCacheSize,
    this.supportV1DataTypes,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'cryptoChecksumClient': ?cryptoChecksumClient,
      'cryptoChecksumTypesClient': ?cryptoChecksumTypesClient,
      'description': ?description,
      'enableBulkLoad': ?enableBulkLoad,
      'encryptedCredential': ?encryptedCredential,
      'encryptionClient': ?encryptionClient,
      'encryptionTypesClient': ?encryptionTypesClient,
      'fetchSize': ?fetchSize,
      'fetchTswtzAsTimestamp': ?fetchTswtzAsTimestamp,
      'initialLobFetchSize': ?initialLobFetchSize,
      'initializationString': ?initializationString,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'server': ?server,
      'statementCacheSize': ?statementCacheSize,
      'supportV1DataTypes': ?supportV1DataTypes,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory OracleLinkedService.fromMap(Map<String, dynamic> map) {
    return OracleLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      cryptoChecksumClient: map['cryptoChecksumClient'] == null ? null : map['cryptoChecksumClient'],
      cryptoChecksumTypesClient: map['cryptoChecksumTypesClient'] == null ? null : map['cryptoChecksumTypesClient'],
      description: map['description'] == null ? null : map['description'] as String,
      enableBulkLoad: map['enableBulkLoad'] == null ? null : map['enableBulkLoad'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      encryptionClient: map['encryptionClient'] == null ? null : map['encryptionClient'],
      encryptionTypesClient: map['encryptionTypesClient'] == null ? null : map['encryptionTypesClient'],
      fetchSize: map['fetchSize'] == null ? null : map['fetchSize'],
      fetchTswtzAsTimestamp: map['fetchTswtzAsTimestamp'] == null ? null : map['fetchTswtzAsTimestamp'],
      initialLobFetchSize: map['initialLobFetchSize'] == null ? null : map['initialLobFetchSize'],
      initializationString: map['initializationString'] == null ? null : map['initializationString'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      server: map['server'] == null ? null : map['server'],
      statementCacheSize: map['statementCacheSize'] == null ? null : map['statementCacheSize'],
      supportV1DataTypes: map['supportV1DataTypes'] == null ? null : map['supportV1DataTypes'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

