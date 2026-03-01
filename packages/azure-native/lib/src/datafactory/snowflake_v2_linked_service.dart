// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Snowflake linked service.
class SnowflakeV2LinkedService {
  /// The account identifier of your Snowflake account, e.g. xy12345.east-us-2.azure
  final dynamic accountIdentifier;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The type used for authentication. Type: string.
  final String? authenticationType;
  /// The client ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final dynamic clientId;
  /// The Azure key vault secret reference of client secret for AADServicePrincipal authentication.
  final AzureKeyVaultSecretReference? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The name of the Snowflake database.
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The host name of the Snowflake account. Type: string (or Expression with resultType string).
  final dynamic host;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final AzureKeyVaultSecretReference? password;
  /// The Azure key vault secret reference of privateKey for KeyPair auth.
  final AzureKeyVaultSecretReference? privateKey;
  /// The Azure key vault secret reference of private key password for KeyPair auth with encrypted private key.
  final AzureKeyVaultSecretReference? privateKeyPassphrase;
  /// The default access control role to use in the Snowflake session. Type: string (or Expression with resultType string).
  final dynamic role;
  /// Schema name for connection. Type: string (or Expression with resultType string).
  final dynamic schema;
  /// The scope of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final dynamic scope;
  /// The tenant ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final dynamic tenantId;
  /// Type of linked service.
  /// Expected value is 'SnowflakeV2'.
  final String type;
  /// Indicates whether to use UTC timezone for timestamp data types. Type: boolean.
  final dynamic useUtcTimestamps;
  /// The name of the Snowflake user.
  final dynamic user;
  /// Version of the linked service.
  final String? version;
  /// The name of the Snowflake warehouse.
  final dynamic warehouse;

  /// Creates a new [SnowflakeV2LinkedService].
  /// [accountIdentifier] The account identifier of your Snowflake account, e.g. xy12345.east-us-2.azure
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The type used for authentication. Type: string.
  /// [clientId] The client ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  /// [clientSecret] The Azure key vault secret reference of client secret for AADServicePrincipal authentication.
  /// [connectVia] The integration runtime reference.
  /// [database] The name of the Snowflake database.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [host] The host name of the Snowflake account. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] The Azure key vault secret reference of password in connection string.
  /// [privateKey] The Azure key vault secret reference of privateKey for KeyPair auth.
  /// [privateKeyPassphrase] The Azure key vault secret reference of private key password for KeyPair auth with encrypted private key.
  /// [role] The default access control role to use in the Snowflake session. Type: string (or Expression with resultType string).
  /// [schema] Schema name for connection. Type: string (or Expression with resultType string).
  /// [scope] The scope of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  /// [tenantId] The tenant ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  /// [type] Type of linked service.
  /// [useUtcTimestamps] Indicates whether to use UTC timezone for timestamp data types. Type: boolean.
  /// [user] The name of the Snowflake user.
  /// [version] Version of the linked service.
  /// [warehouse] The name of the Snowflake warehouse.
  SnowflakeV2LinkedService({
    required this.accountIdentifier,
    this.annotations,
    this.authenticationType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    required this.database,
    this.description,
    this.encryptedCredential,
    this.host,
    this.parameters,
    this.password,
    this.privateKey,
    this.privateKeyPassphrase,
    this.role,
    this.schema,
    this.scope,
    this.tenantId,
    required this.type,
    this.useUtcTimestamps,
    this.user,
    this.version,
    required this.warehouse,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIdentifier': accountIdentifier,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'database': database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': ?host,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'privateKey': ?privateKey == null ? null : privateKey!.toMap(),
      'privateKeyPassphrase': ?privateKeyPassphrase == null ? null : privateKeyPassphrase!.toMap(),
      'role': ?role,
      'schema': ?schema,
      'scope': ?scope,
      'tenantId': ?tenantId,
      'type': type,
      'useUtcTimestamps': ?useUtcTimestamps,
      'user': ?user,
      'version': ?version,
      'warehouse': warehouse,
    };
  }

  factory SnowflakeV2LinkedService.fromMap(Map<String, dynamic> map) {
    return SnowflakeV2LinkedService(
      accountIdentifier: map['accountIdentifier'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      database: map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      host: map['host'] == null ? null : map['host'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      privateKey: map['privateKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      privateKeyPassphrase: map['privateKeyPassphrase'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['privateKeyPassphrase'] as Map).cast<String, dynamic>()),
      role: map['role'] == null ? null : map['role'],
      schema: map['schema'] == null ? null : map['schema'],
      scope: map['scope'] == null ? null : map['scope'],
      tenantId: map['tenantId'] == null ? null : map['tenantId'],
      type: map['type'] as String,
      useUtcTimestamps: map['useUtcTimestamps'] == null ? null : map['useUtcTimestamps'],
      user: map['user'] == null ? null : map['user'],
      version: map['version'] == null ? null : map['version'] as String,
      warehouse: map['warehouse'],
    );
  }
}

