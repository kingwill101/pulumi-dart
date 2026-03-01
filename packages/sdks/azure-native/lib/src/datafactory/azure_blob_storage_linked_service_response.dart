// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// The azure blob storage linked service.
class AzureBlobStorageLinkedServiceResponse {
  /// The Azure key vault secret reference of accountKey in connection string.
  final AzureKeyVaultSecretReferenceResponse? accountKey;
  /// Specify the kind of your storage account. Allowed values are: Storage (general purpose v1), StorageV2 (general purpose v2), BlobStorage, or BlockBlobStorage. Type: string (or Expression with resultType string).
  final dynamic accountKind;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The type used for authentication. Type: string.
  final String? authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The connection string. It is mutually exclusive with sasUri, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic connectionString;
  /// Container uri of the Azure Blob Storage resource only support for anonymous access. Type: string (or Expression with resultType string).
  final dynamic containerUri;
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
  /// SAS URI of the Azure Blob Storage resource. It is mutually exclusive with connectionString, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final dynamic sasUri;
  /// Blob service endpoint of the Azure Blob Storage resource. It is mutually exclusive with connectionString, sasUri property.
  final dynamic serviceEndpoint;
  /// The ID of the service principal used to authenticate against Azure SQL Data Warehouse. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The key of the service principal used to authenticate against Azure SQL Data Warehouse.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'AzureBlobStorage'.
  final String type;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [AzureBlobStorageLinkedServiceResponse].
  /// [accountKey] The Azure key vault secret reference of accountKey in connection string.
  /// [accountKind] Specify the kind of your storage account. Allowed values are: Storage (general purpose v1), StorageV2 (general purpose v2), BlobStorage, or BlockBlobStorage. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The type used for authentication. Type: string.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [connectionString] The connection string. It is mutually exclusive with sasUri, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [containerUri] Container uri of the Azure Blob Storage resource only support for anonymous access. Type: string (or Expression with resultType string).
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [sasToken] The Azure key vault secret reference of sasToken in sas uri.
  /// [sasUri] SAS URI of the Azure Blob Storage resource. It is mutually exclusive with connectionString, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  /// [serviceEndpoint] Blob service endpoint of the Azure Blob Storage resource. It is mutually exclusive with connectionString, sasUri property.
  /// [servicePrincipalId] The ID of the service principal used to authenticate against Azure SQL Data Warehouse. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The key of the service principal used to authenticate against Azure SQL Data Warehouse.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  AzureBlobStorageLinkedServiceResponse({
    this.accountKey,
    this.accountKind,
    this.annotations,
    this.authenticationType,
    this.azureCloudType,
    this.connectVia,
    this.connectionString,
    this.containerUri,
    this.credential,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.sasToken,
    this.sasUri,
    this.serviceEndpoint,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountKey': ?accountKey == null ? null : accountKey!.toMap(),
      'accountKind': ?accountKind,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'connectionString': ?connectionString,
      'containerUri': ?containerUri,
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'sasToken': ?sasToken == null ? null : sasToken!.toMap(),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureBlobStorageLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageLinkedServiceResponse(
      accountKey: map['accountKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['accountKey'] as Map).cast<String, dynamic>()),
      accountKind: map['accountKind'] == null ? null : map['accountKind'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      connectionString: map['connectionString'] == null ? null : map['connectionString'],
      containerUri: map['containerUri'] == null ? null : map['containerUri'],
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      sasToken: map['sasToken'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['sasToken'] as Map).cast<String, dynamic>()),
      sasUri: map['sasUri'] == null ? null : map['sasUri'],
      serviceEndpoint: map['serviceEndpoint'] == null ? null : map['serviceEndpoint'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

