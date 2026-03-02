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
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalCredential;
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
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'annotations': ?annotations,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionMode': ?connectionMode,
      'connectionString': ?connectionString,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'database': ?database,
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalCredential': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory CosmosDbLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return CosmosDbLinkedServiceResponse(
      accountEndpoint: map['accountEndpoint'] == null ? null : (map['accountEndpoint']!).input(),
      accountKey: map['accountKey'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['accountKey']! as Map).cast<String, dynamic>())).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      azureCloudType: map['azureCloudType'] == null ? null : (map['azureCloudType']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      connectionMode: map['connectionMode'] == null ? null : (map['connectionMode']! as String).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']!).input(),
      credential: map['credential'] == null ? null : (CredentialReferenceResponse.fromMap((map['credential']! as Map).cast<String, dynamic>())).input(),
      database: map['database'] == null ? null : (map['database']!).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalCredential']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : (map['servicePrincipalCredentialType']!).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']!).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']!).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

