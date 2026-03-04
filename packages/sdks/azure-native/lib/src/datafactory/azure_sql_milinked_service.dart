// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';
import 'sql_always_encrypted_properties.dart';

/// Azure SQL Managed Instance linked service.
class AzureSqlMILinkedService {
  /// Sql always encrypted properties.
  final pulumi.Input<SqlAlwaysEncryptedProperties>? alwaysEncryptedSettings;

  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The application workload type when connecting to a server, used by recommended version. Possible values are ReadOnly and ReadWrite. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? applicationIntent;

  /// The type used for authentication. Type: string.
  final pulumi.Input<String>? authenticationType;

  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;

  /// The default wait time (in seconds) before terminating the attempt to execute a command and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? commandTimeout;

  /// The number of re-connections attempted after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 0 and 255. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? connectRetryCount;

  /// The amount of time (in seconds) between each re-connection attempt after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 1 and 60. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? connectRetryInterval;

  /// The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? connectTimeout;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;

  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;

  /// The name of the database, used by recommended version. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// Indicate whether TLS encryption is required for all data sent between the client and server, used by recommended version. Possible values are true/yes/mandatory, false/no/optional and strict. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? encrypt;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// The name or address of the partner server to connect to if the primary server is down, used by recommended version. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? failoverPartner;

  /// The host name to use when validating the server certificate for the connection. When not specified, the server name from the Data Source is used for certificate validation, used by recommended version. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? hostNameInCertificate;

  /// Indicate whether User ID and Password are specified in the connection (when false) or whether the current Windows account credentials are used for authentication (when true), used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? integratedSecurity;

  /// The minimum time, in seconds, for the connection to live in the connection pool before being destroyed, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? loadBalanceTimeout;

  /// The maximum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? maxPoolSize;

  /// The minimum number of connections allowed in the connection pool for this specific connection string, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? minPoolSize;

  /// If your application is connecting to an AlwaysOn availability group (AG) on different subnets, setting MultiSubnetFailover=true provides faster detection of and connection to the (currently) active server, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? multiSubnetFailover;

  /// When true, an application can maintain multiple active result sets (MARS). When false, an application must process or cancel all result sets from one batch before it can execute any other batch on that connection, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? multipleActiveResultSets;

  /// The size in bytes of the network packets used to communicate with an instance of server, used by recommended version. Type: integer (or Expression with resultType integer).
  final pulumi.Input<dynamic>? packetSize;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;

  /// The Azure key vault secret reference of password in connection string.
  final pulumi.Input<AzureKeyVaultSecretReference>? password;

  /// Indicate whether the connection will be pooled or explicitly opened every time that the connection is requested, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? pooling;

  /// The name or network address of the instance of SQL Server to which to connect, used by recommended version. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? server;

  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalCredential;

  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;

  /// The ID of the service principal used to authenticate against Azure SQL Managed Instance. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The key of the service principal used to authenticate against Azure SQL Managed Instance.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;

  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;

  /// Indicate whether the channel will be encrypted while bypassing walking the certificate chain to validate trust, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? trustServerCertificate;

  /// Type of linked service.
  /// Expected value is 'AzureSqlMI'.
  final pulumi.Input<String> type;

  /// The user name to be used when connecting to server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureSqlMILinkedService].
  /// [alwaysEncryptedSettings] Sql always encrypted properties.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [applicationIntent] The application workload type when connecting to a server, used by recommended version. Possible values are ReadOnly and ReadWrite. Type: string (or Expression with resultType string).
  /// [authenticationType] The type used for authentication. Type: string.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [commandTimeout] The default wait time (in seconds) before terminating the attempt to execute a command and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [connectRetryCount] The number of re-connections attempted after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 0 and 255. Type: integer (or Expression with resultType integer).
  /// [connectRetryInterval] The amount of time (in seconds) between each re-connection attempt after identifying that there was an idle connection failure, used by recommended version. This must be an integer between 1 and 60. Type: integer (or Expression with resultType integer).
  /// [connectTimeout] The length of time (in seconds) to wait for a connection to the server before terminating the attempt and generating an error, used by recommended version. Type: integer (or Expression with resultType integer).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [credential] The credential reference containing authentication information.
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
  /// [password] The Azure key vault secret reference of password in connection string.
  /// [pooling] Indicate whether the connection will be pooled or explicitly opened every time that the connection is requested, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [server] The name or network address of the instance of SQL Server to which to connect, used by recommended version. Type: string (or Expression with resultType string).
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the service principal used to authenticate against Azure SQL Managed Instance. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Azure SQL Managed Instance.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [trustServerCertificate] Indicate whether the channel will be encrypted while bypassing walking the certificate chain to validate trust, used by recommended version. Type: Boolean (or Expression with resultType boolean).
  /// [type] Type of linked service.
  /// [userName] The user name to be used when connecting to server. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AzureSqlMILinkedService({
    this.alwaysEncryptedSettings,
    this.annotations,
    this.applicationIntent,
    this.authenticationType,
    this.azureCloudType,
    this.commandTimeout,
    this.connectRetryCount,
    this.connectRetryInterval,
    this.connectTimeout,
    this.connectVia,
    this.connectionString,
    this.credential,
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
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    this.trustServerCertificate,
    required this.type,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alwaysEncryptedSettings':
          ?pulumi.Input.mapOptionalInputValue<
            SqlAlwaysEncryptedProperties,
            Map<String, dynamic>
          >(alwaysEncryptedSettings, (value) => value.toMap()),
      'annotations': ?annotations,
      'applicationIntent': ?applicationIntent,
      'authenticationType': ?authenticationType,
      'azureCloudType': ?azureCloudType,
      'commandTimeout': ?commandTimeout,
      'connectRetryCount': ?connectRetryCount,
      'connectRetryInterval': ?connectRetryInterval,
      'connectTimeout': ?connectTimeout,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReference,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReference,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
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
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecification>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecification,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'pooling': ?pooling,
      'server': ?server,
      'servicePrincipalCredential':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReference,
            Map<String, dynamic>
          >(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory AzureSqlMILinkedService.fromMap(Map<String, dynamic> map) {
    return AzureSqlMILinkedService(
      alwaysEncryptedSettings: (() {
        final guardedValue = map['alwaysEncryptedSettings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SqlAlwaysEncryptedProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      applicationIntent: (() {
        final guardedValue = map['applicationIntent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      azureCloudType: (() {
        final guardedValue = map['azureCloudType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      commandTimeout: (() {
        final guardedValue = map['commandTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      connectRetryCount: (() {
        final guardedValue = map['connectRetryCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      connectRetryInterval: (() {
        final guardedValue = map['connectRetryInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      connectTimeout: (() {
        final guardedValue = map['connectTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      connectionString: (() {
        final guardedValue = map['connectionString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
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
      encrypt: (() {
        final guardedValue = map['encrypt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      failoverPartner: (() {
        final guardedValue = map['failoverPartner'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      hostNameInCertificate: (() {
        final guardedValue = map['hostNameInCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      integratedSecurity: (() {
        final guardedValue = map['integratedSecurity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      loadBalanceTimeout: (() {
        final guardedValue = map['loadBalanceTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      maxPoolSize: (() {
        final guardedValue = map['maxPoolSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      minPoolSize: (() {
        final guardedValue = map['minPoolSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      multiSubnetFailover: (() {
        final guardedValue = map['multiSubnetFailover'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      multipleActiveResultSets: (() {
        final guardedValue = map['multipleActiveResultSets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      packetSize: (() {
        final guardedValue = map['packetSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecification>(
            guardedValue,
            (value) => ParameterSpecification.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      pooling: (() {
        final guardedValue = map['pooling'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      server: (() {
        final guardedValue = map['server'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalCredential: (() {
        final guardedValue = map['servicePrincipalCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicePrincipalCredentialType: (() {
        final guardedValue = map['servicePrincipalCredentialType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalId: (() {
        final guardedValue = map['servicePrincipalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalKey: (() {
        final guardedValue = map['servicePrincipalKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReference.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      trustServerCertificate: (() {
        final guardedValue = map['trustServerCertificate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userName: (() {
        final guardedValue = map['userName'];
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
