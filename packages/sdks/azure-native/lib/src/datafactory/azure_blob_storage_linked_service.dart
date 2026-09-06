// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// The azure blob storage linked service.
class AzureBlobStorageLinkedService {
  /// The Azure key vault secret reference of accountKey in connection string.
  final pulumi.Input<AzureKeyVaultSecretReference?>? accountKey;
  /// Specify the kind of your storage account. Allowed values are: Storage (general purpose v1), StorageV2 (general purpose v2), BlobStorage, or BlockBlobStorage. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? accountKind;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The type used for authentication. Type: string.
  final pulumi.Input<dynamic>? authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference?>? connectVia;
  /// The connection string. It is mutually exclusive with sasUri, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? connectionString;
  /// Container uri of the Azure Blob Storage resource only support for anonymous access. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? containerUri;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference?>? credential;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>?>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final pulumi.Input<AzureKeyVaultSecretReference?>? sasToken;
  /// SAS URI of the Azure Blob Storage resource. It is mutually exclusive with connectionString, serviceEndpoint property. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? sasUri;
  /// Blob service endpoint of the Azure Blob Storage resource. It is mutually exclusive with connectionString, sasUri property.
  final pulumi.Input<dynamic>? serviceEndpoint;
  /// The ID of the service principal used to authenticate against Azure SQL Data Warehouse. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The key of the service principal used to authenticate against Azure SQL Data Warehouse.
  final pulumi.Input<dynamic>? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'AzureBlobStorage'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [AzureBlobStorageLinkedService].
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
  const AzureBlobStorageLinkedService({
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
      'accountKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(accountKey, (value) => value.toMap()),
      'accountKind': ?accountKind,
      'annotations': ?annotations,
      'authenticationType': ?authenticationType,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'connectionString': ?connectionString,
      'containerUri': ?containerUri,
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sasToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'serviceEndpoint': ?serviceEndpoint,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
    };
  }

  factory AzureBlobStorageLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureBlobStorageLinkedService(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      accountKind: (() { final guardedValue = map['accountKind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authenticationType: (() { final guardedValue = map['authenticationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      azureCloudType: (() { final guardedValue = map['azureCloudType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionString: (() { final guardedValue = map['connectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      containerUri: (() { final guardedValue = map['containerUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasUri: (() { final guardedValue = map['sasUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      serviceEndpoint: (() { final guardedValue = map['serviceEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
