// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Microsoft Azure Cosmos Database (CosmosDB) linked service.
class CosmosDbLinkedServiceResponse {
  /// The endpoint of the Azure CosmosDB account. Type: string (or Expression with resultType string)
  final dynamic accountEndpoint;
  /// The account key of the Azure CosmosDB account. Type: SecureString or AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReferenceResponse? accountKey;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The connection mode used to access CosmosDB account. Type: string.
  final String? connectionMode;
  /// The connection string. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// The name of the database. Type: string (or Expression with resultType string)
  final dynamic database;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string.
  final dynamic servicePrincipalCredentialType;
  /// The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'CosmosDb'.
  final String type;
  /// Version of the linked service.
  final String? version;

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
      'accountKey': ?accountKey == null ? null : accountKey!.toMap(),
      'annotations': ?annotations,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionMode': ?connectionMode,
      'connectionString': ?connectionString,
      'credential': ?credential == null ? null : credential!.toMap(),
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'servicePrincipalCredential': ?servicePrincipalCredential == null ? null : servicePrincipalCredential!.toMap(),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory CosmosDbLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return CosmosDbLinkedServiceResponse(
      accountEndpoint: map['accountEndpoint'] == null ? null : map['accountEndpoint'],
      accountKey: map['accountKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accountKey'] as Map).cast<String, dynamic>()),
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionMode: map['connectionMode'] == null ? null : map['connectionMode'] as String,
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      database: map['database'] == null ? null : map['database'],
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalCredential'] as Map).cast<String, dynamic>()),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

