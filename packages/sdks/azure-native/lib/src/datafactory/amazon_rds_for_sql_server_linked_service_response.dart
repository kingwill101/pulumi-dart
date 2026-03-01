// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';
import 'sql_always_encrypted_properties_response.dart';

/// Amazon RDS for SQL Server linked service.
class AmazonRdsForSqlServerLinkedServiceResponse {
  /// Sql always encrypted properties.
  final SqlAlwaysEncryptedPropertiesResponse? alwaysEncryptedSettings;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The application workload type when connecting to a server, used by recommended version. Possible values are ReadOnly and ReadWrite. Type: string (or Expression with resultType string).
  final dynamic applicationIntent;
  /// The type used for authentication. Type: string.
  final String? authenticationType;
  /// The default wait time (in seconds) before terminating the attempt to execute a command and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic commandTimeout;
  /// The number of re-connections attempted after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 0 and 255. Type: integer (or Expression with resultType integer).
  final dynamic connectRetryCount;
  /// The amount of time (in seconds) between each re-connection attempt after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 1 and 60. Type: integer (or Expression with resultType integer).
  final dynamic connectRetryInterval;
  /// The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic connectTimeout;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The name of the database, used by recommended version. Type: string (or Expression with resultType string).
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// Indicate whether TLS encryption is required for all data sent between the client and server, used by recommended version. Possible values are true/yes/mandatory, false/no/optional and strict. Type: string (or Expression with resultType string).
  final dynamic encrypt;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The name or address of the partner server to connect to if the primary server is down, used by recommended version. Type: string (or Expression with resultType string).
  final dynamic failoverPartner;
  /// The host name to use when validating the server certificate for the connection. When not specified, the server name from the Data Source is used for certificate validation, used by recommended version. Type: string (or Expression with resultType string).
  final dynamic hostNameInCertificate;
  /// Indicate whether User ID and Password are specified in the connection (when false) or whether the current Windows account credentials are used for authentication (when true), used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final dynamic integratedSecurity;
  /// The minimum time, in seconds, for the connection to live in the connection pool before being destroyed, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic loadBalanceTimeout;
  /// The maximum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic maxPoolSize;
  /// The minimum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic minPoolSize;
  /// If your application is connecting to an AlwaysOn availability group (AG) on different subnets, setting MultiSubnetFailover=true provides faster detection of and connection to the (currently) active server, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final dynamic multiSubnetFailover;
  /// When true, an application can maintain multiple active result sets (MARS). When false, an application must process or cancel all result sets from one batch before it can execute any other batch on that connection, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final dynamic multipleActiveResultSets;
  /// The size in bytes of the network packets used to communicate with an instance of server, used by recommended version. Type: integer (or Expression with resultType integer).
  final dynamic packetSize;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The on-premises Windows authentication password.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// Indicate whether the connection will be pooled or explicitly opened every time that the connection is requested, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final dynamic pooling;
  /// The name or network address of the instance of SQL Server to which to connect, used by recommended version. Type: string (or Expression with resultType string).
  final dynamic server;
  /// Indicate whether the channel will be encrypted while bypassing walking the certificate chain to validate trust, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final dynamic trustServerCertificate;
  /// Type of linked service.
  /// Expected value is 'AmazonRdsForSqlServer'.
  final String type;
  /// The on-premises Windows authentication user name. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AmazonRdsForSqlServerLinkedServiceResponse].
  /// [alwaysEncryptedSettings] Sql always encrypted properties.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [applicationIntent] The application workload type when connecting to a server, used by recommended version. Possible values are ReadOnly and ReadWrite. Type: string (or Expression with resultType string).
  /// [authenticationType] The type used for authentication. Type: string.
  /// [commandTimeout] The default wait time (in seconds) before terminating the attempt to execute a command and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [connectRetryCount] The number of re-connections attempted after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 0 and 255. Type: integer (or Expression with resultType integer).
  /// [connectRetryInterval] The amount of time (in seconds) between each re-connection attempt after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 1 and 60. Type: integer (or Expression with resultType integer).
  /// [connectTimeout] The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [database] The name of the database, used by recommended version. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [encrypt] Indicate whether TLS encryption is required for all data sent between the client and server, used by recommended version. Possible values are true/yes/mandatory, false/no/optional and strict. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [failoverPartner] The name or address of the partner server to connect to if the primary server is down, used by recommended version. Type: string (or Expression with resultType string).
  /// [hostNameInCertificate] The host name to use when validating the server certificate for the connection. When not specified, the server name from the Data Source is used for certificate validation, used by recommended version. Type: string (or Expression with resultType string).
  /// [integratedSecurity] Indicate whether User ID and Password are specified in the connection (when false) or whether the current Windows account credentials are used for authentication (when true), used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [loadBalanceTimeout] The minimum time, in seconds, for the connection to live in the connection pool before being destroyed, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [maxPoolSize] The maximum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [minPoolSize] The minimum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [multiSubnetFailover] If your application is connecting to an AlwaysOn availability group (AG) on different subnets, setting MultiSubnetFailover=true provides faster detection of and connection to the (currently) active server, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [multipleActiveResultSets] When true, an application can maintain multiple active result sets (MARS). When false, an application must process or cancel all result sets from one batch before it can execute any other batch on that connection, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [packetSize] The size in bytes of the network packets used to communicate with an instance of server, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [parameters] Parameters for linked service.
  /// [password] The on-premises Windows authentication password.
  /// [pooling] Indicate whether the connection will be pooled or explicitly opened every time that the connection is requested, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [server] The name or network address of the instance of SQL Server to which to connect, used by recommended version. Type: string (or Expression with resultType string).
  /// [trustServerCertificate] Indicate whether the channel will be encrypted while bypassing walking the certificate chain to validate trust, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [type] Type of linked service.
  /// [userName] The on-premises Windows authentication user name. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AmazonRdsForSqlServerLinkedServiceResponse({
    this.alwaysEncryptedSettings,
    this.annotations,
    this.applicationIntent,
    this.authenticationType,
    this.commandTimeout,
    this.connectRetryCount,
    this.connectRetryInterval,
    this.connectTimeout,
    this.connectVia,
    this.connectionString,
    this.database,
    this.description,
    this.encrypt,
    this.encryptedCredential,
    this.failoverPartner,
    this.hostNameInCertificate,
    this.integratedSecurity,
    this.loadBalanceTimeout,
    this.maxPoolSize,
    this.minPoolSize,
    this.multiSubnetFailover,
    this.multipleActiveResultSets,
    this.packetSize,
    this.parameters,
    this.password,
    this.pooling,
    this.server,
    this.trustServerCertificate,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysEncryptedSettings': ?alwaysEncryptedSettings == null ? null : alwaysEncryptedSettings!.toMap(),
      'annotations': ?annotations,
      'applicationIntent': ?applicationIntent,
      'authenticationType': ?authenticationType,
      'commandTimeout': ?commandTimeout,
      'connectRetryCount': ?connectRetryCount,
      'connectRetryInterval': ?connectRetryInterval,
      'connectTimeout': ?connectTimeout,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'database': ?database,
      'description': ?description,
      'encrypt': ?encrypt,
      'encryptedCredential': ?encryptedCredential,
      'failoverPartner': ?failoverPartner,
      'hostNameInCertificate': ?hostNameInCertificate,
      'integratedSecurity': ?integratedSecurity,
      'loadBalanceTimeout': ?loadBalanceTimeout,
      'maxPoolSize': ?maxPoolSize,
      'minPoolSize': ?minPoolSize,
      'multiSubnetFailover': ?multiSubnetFailover,
      'multipleActiveResultSets': ?multipleActiveResultSets,
      'packetSize': ?packetSize,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'pooling': ?pooling,
      'server': ?server,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory AmazonRdsForSqlServerLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AmazonRdsForSqlServerLinkedServiceResponse(
      alwaysEncryptedSettings: map['alwaysEncryptedSettings'] == null ? null : SqlAlwaysEncryptedPropertiesResponse.fromMap((map['alwaysEncryptedSettings'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      applicationIntent: map['applicationIntent'] == null ? null : map['applicationIntent'],
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      commandTimeout: map['commandTimeout'] == null ? null : map['commandTimeout'],
      connectRetryCount: map['connectRetryCount'] == null ? null : map['connectRetryCount'],
      connectRetryInterval: map['connectRetryInterval'] == null ? null : map['connectRetryInterval'],
      connectTimeout: map['connectTimeout'] == null ? null : map['connectTimeout'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encrypt: map['encrypt'] == null ? null : map['encrypt'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      failoverPartner: map['failoverPartner'] == null ? null : map['failoverPartner'],
      hostNameInCertificate: map['hostNameInCertificate'] == null ? null : map['hostNameInCertificate'],
      integratedSecurity: map['integratedSecurity'] == null ? null : map['integratedSecurity'],
      loadBalanceTimeout: map['loadBalanceTimeout'] == null ? null : map['loadBalanceTimeout'],
      maxPoolSize: map['maxPoolSize'] == null ? null : map['maxPoolSize'],
      minPoolSize: map['minPoolSize'] == null ? null : map['minPoolSize'],
      multiSubnetFailover: map['multiSubnetFailover'] == null ? null : map['multiSubnetFailover'],
      multipleActiveResultSets: map['multipleActiveResultSets'] == null ? null : map['multipleActiveResultSets'],
      packetSize: map['packetSize'] == null ? null : map['packetSize'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      pooling: map['pooling'] == null ? null : map['pooling'],
      server: map['server'] == null ? null : map['server'],
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'],
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

