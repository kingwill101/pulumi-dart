// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Azure Data Lake Storage Gen2 linked service.
class AzureBlobFSLinkedServiceResponse {
  /// Account key for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  final dynamic accountKey;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final AzureKeyVaultSecretReferenceResponse? sasToken;
  /// SAS URI of the Azure Data Lake Storage Gen2 service. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic sasUri;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalCredentialType;
  /// The ID of the application used to authenticate against the Azure Data Lake Storage Gen2 account. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The Key of the application used to authenticate against the Azure Data Lake Storage Gen2 account.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'AzureBlobFS'.
  final String type;
  /// Endpoint for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  final dynamic url;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureBlobFSLinkedServiceResponse].
  /// [accountKey] Account key for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure Data Lake Storage Gen2 service. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the application used to authenticate against the Azure Data Lake Storage Gen2 account. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The Key of the application used to authenticate against the Azure Data Lake Storage Gen2 account.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [url] Endpoint for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  AzureBlobFSLinkedServiceResponse({
    this.accountKey,
    this.annotations,
    this.azureCloudType,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.sasToken,
    this.sasUri,
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.url,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey,
      'annotations': ?annotations,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'sasToken': ?sasToken == null ? null : sasToken!.toMap(),
      'sasUri': ?sasUri,
      'servicePrincipalCredential': ?servicePrincipalCredential == null ? null : servicePrincipalCredential!.toMap(),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
      'url': ?url,
      'version': ?version,
    };
  }

  factory AzureBlobFSLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSLinkedServiceResponse(
      accountKey: map['accountKey'] == null ? null : map['accountKey'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      sasToken: map['sasToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['sasToken'] as Map).cast<String, dynamic>()),
      sasUri: map['sasUri'] == null ? null : map['sasUri'],
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalCredential'] as Map).cast<String, dynamic>()),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      url: map['url'] == null ? null : map['url'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

