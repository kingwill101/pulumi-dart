// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Microsoft Azure Cosmos Database (CosmosDB) linked service.
class CosmosDbLinkedServiceResponse {
  /// The endpoint of the Azure CosmosDB account. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? accountEndpoint;

  /// The account key of the Azure CosmosDB account. Type: SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? accountKey;

  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// The connection mode used to access CosmosDB account. Type: string.
  final pulumi.Input<String>? connectionMode;

  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;

  /// The name of the database. Type: string (or Expression with resultType string)
  final pulumi.Input<dynamic>? database;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>?
  servicePrincipalCredential;

  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string.
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;

  /// The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;

  /// Type of linked service.
  /// Expected value is 'CosmosDb'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [CosmosDbLinkedServiceResponse].
  /// [accountEndpoint] The endpoint of the Azure CosmosDB account. Type: string (or Expression with resultType string)
  /// [accountKey] The account key of the Azure CosmosDB account. Type: SecureString or AzureKeyVaultSecretReference.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionMode] The connection mode used to access CosmosDB account. Type: string.
  /// [connectionString] The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [credential] The credential reference containing authentication information.
  /// [database] The name of the database. Type: string (or Expression with resultType string)
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string.
  /// [servicePrincipalId] The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  CosmosDbLinkedServiceResponse({
    this.accountEndpoint,
    this.accountKey,
    this.annotations,
    this.azureCloudType,
    this.connectVia,
    this.connectionMode,
    this.connectionString,
    this.credential,
    this.database,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountEndpoint': ?accountEndpoint,
      'accountKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(accountKey, (value) => value.toMap()),
      'annotations': ?annotations,
      'azureCloudType': ?azureCloudType,
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'connectionMode': ?connectionMode,
      'connectionString': ?connectionString,
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReferenceResponse,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
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
      'servicePrincipalCredential':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory CosmosDbLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return CosmosDbLinkedServiceResponse(
      accountEndpoint: (() {
        final guardedValue = map['accountEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      accountKey: (() {
        final guardedValue = map['accountKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      azureCloudType: (() {
        final guardedValue = map['azureCloudType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
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
      connectionMode: (() {
        final guardedValue = map['connectionMode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
          CredentialReferenceResponse.fromMap(
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
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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
      servicePrincipalCredential: (() {
        final guardedValue = map['servicePrincipalCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
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
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
