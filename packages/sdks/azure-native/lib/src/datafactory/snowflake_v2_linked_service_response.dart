// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Snowflake linked service.
class SnowflakeV2LinkedServiceResponse {
  /// The account identifier of your Snowflake account, e.g. xy12345.east-us-2.azure
  final pulumi.Input<dynamic> accountIdentifier;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The type used for authentication. Type: string.
  final pulumi.Input<String?>? authenticationType;
  /// The client ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final pulumi.Input<dynamic>? clientId;
  /// The Azure key vault secret reference of client secret for AADServicePrincipal authentication.
  final pulumi.Input<dynamic>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// The name of the Snowflake database.
  final pulumi.Input<dynamic> database;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// The host name of the Snowflake account. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? host;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<dynamic>? password;
  /// The Azure key vault secret reference of privateKey for KeyPair auth.
  final pulumi.Input<dynamic>? privateKey;
  /// The Azure key vault secret reference of private key password for KeyPair auth with encrypted private key.
  final pulumi.Input<dynamic>? privateKeyPassphrase;
  /// The default access control role to use in the Snowflake session. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? role;
  /// Schema name for connection. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? schema;
  /// The scope of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final pulumi.Input<dynamic>? scope;
  /// The tenant ID of the application registered in Azure Active Directory for AADServicePrincipal authentication.
  final pulumi.Input<dynamic>? tenantId;
  /// Type of linked service.
  /// Expected value is 'SnowflakeV2'.
  final pulumi.Input<String> type;
  /// Indicates whether to use UTC timezone for timestamp data types. Type: boolean.
  final pulumi.Input<dynamic>? useUtcTimestamps;
  /// The name of the Snowflake user.
  final pulumi.Input<dynamic>? user;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;
  /// The name of the Snowflake warehouse.
  final pulumi.Input<dynamic> warehouse;

  /// Creates a new [SnowflakeV2LinkedServiceResponse].
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
  SnowflakeV2LinkedServiceResponse({
    required this.accountIdentifier,
    this.annotations,
    pulumi.Input<String?>? authenticationType,
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
  }) : authenticationType = authenticationType ?? pulumi.Input.fromValue('Basic');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountIdentifier': accountIdentifier,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'database': database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'host': ?host,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'privateKey': ?privateKey,
      'privateKeyPassphrase': ?privateKeyPassphrase,
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

  factory SnowflakeV2LinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SnowflakeV2LinkedServiceResponse(
      accountIdentifier: pulumi.Input.fromValue(map['accountIdentifier']),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      database: pulumi.Input.fromValue(map['database']),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      privateKeyPassphrase: (() { final guardedValue = map['privateKeyPassphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenantId: (() { final guardedValue = map['tenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useUtcTimestamps: (() { final guardedValue = map['useUtcTimestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      user: (() { final guardedValue = map['user']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      warehouse: pulumi.Input.fromValue(map['warehouse']),
    );
  }
}
