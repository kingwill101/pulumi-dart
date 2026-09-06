// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Oracle database. This linked service has supported version property. The Version 1.0 is scheduled for deprecation while your pipeline will continue to run after EOL but without any bug fix or new features.
class OracleLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// Authentication type for connecting to the Oracle database. Only used for Version 2.0.
  final pulumi.Input<String?>? authenticationType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference. Only used for Version 1.0.
  final pulumi.Input<dynamic>? connectionString;
  /// Specifies the desired data integrity behavior when this client connects to a server. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? cryptoChecksumClient;
  /// Specifies the crypto-checksum algorithms that client can use. Supported values are SHA1, SHA256, SHA384, SHA512, default value is (SHA512). Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? cryptoChecksumTypesClient;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// Specifies whether to use bulk copy or batch insert when loading data into the database, default value is true. Type: boolean. Only used for Version 2.0.
  final pulumi.Input<dynamic>? enableBulkLoad;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Specifies the encryption client behavior. Supported values are accepted, rejected, requested or required, default value is required. Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? encryptionClient;
  /// Specifies the encryption algorithms that client can use. Supported values are AES128, AES192, AES256, 3DES112, 3DES168, default value is (AES256). Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? encryptionTypesClient;
  /// Specifies the number of bytes that the driver allocates to fetch the data in one database round-trip, default value is 10485760. Type: integer. Only used for Version 2.0.
  final pulumi.Input<dynamic>? fetchSize;
  /// Specifies whether the driver returns column value with the TIMESTAMP WITH TIME ZONE data type as DateTime or string. This setting is ignored if supportV1DataTypes is not true, default value is true. Type: boolean. Only used for Version 2.0.
  final pulumi.Input<dynamic>? fetchTswtzAsTimestamp;
  /// Specifies the amount that the source initially fetches for LOB columns, default value is 0. Type: integer. Only used for Version 2.0.
  final pulumi.Input<dynamic>? initialLobFetchSize;
  /// Specifies a command that is issued immediately after connecting to the database to manage session settings. Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? initializationString;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse?>? password;
  /// The location of Oracle database you want to connect to, the supported forms include connector descriptor, Easy Connect (Plus) Naming and Oracle Net Services Name (Only self-hosted IR). Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? server;
  /// Specifies the number of cursors or statements to be cached for each database connection, default value is 0. Type: integer. Only used for Version 2.0.
  final pulumi.Input<dynamic>? statementCacheSize;
  /// Specifies whether to use the Version 1.0 data type mappings. Do not set this to true unless you want to keep backward compatibility with Version 1.0's data type mappings, default value is false. Type: boolean. Only used for Version 2.0.
  final pulumi.Input<dynamic>? supportV1DataTypes;
  /// Type of linked service.
  /// Expected value is 'Oracle'.
  final pulumi.Input<String> type;
  /// The Oracle database username. Type: string. Only used for Version 2.0.
  final pulumi.Input<dynamic>? username;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [OracleLinkedServiceResponse].
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
  const OracleLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'server': ?server,
      'statementCacheSize': ?statementCacheSize,
      'supportV1DataTypes': ?supportV1DataTypes,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory OracleLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return OracleLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      cryptoChecksumClient: (() { final guardedValue = map['cryptoChecksumClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      cryptoChecksumTypesClient: (() { final guardedValue = map['cryptoChecksumTypesClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableBulkLoad: (() { final guardedValue = map['enableBulkLoad']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionClient: (() { final guardedValue = map['encryptionClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptionTypesClient: (() { final guardedValue = map['encryptionTypesClient']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      fetchSize: (() { final guardedValue = map['fetchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      fetchTswtzAsTimestamp: (() { final guardedValue = map['fetchTswtzAsTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      initialLobFetchSize: (() { final guardedValue = map['initialLobFetchSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      initializationString: (() { final guardedValue = map['initializationString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      server: (() { final guardedValue = map['server']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      statementCacheSize: (() { final guardedValue = map['statementCacheSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      supportV1DataTypes: (() { final guardedValue = map['supportV1DataTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
