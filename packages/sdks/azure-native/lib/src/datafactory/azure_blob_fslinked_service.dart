// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Azure Data Lake Storage Gen2 linked service.
class AzureBlobFSLinkedService {
  /// Account key for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? accountKey;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReference>? credential;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The Azure key vault secret reference of sasToken in sas uri.
  final pulumi.Input<AzureKeyVaultSecretReference>? sasToken;
  /// SAS URI of the Azure Data Lake Storage Gen2 service. Type: string, SecureString or AzureKeyVaultSecretReference.
  final pulumi.Input<dynamic>? sasUri;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// The ID of the application used to authenticate against the Azure Data Lake Storage Gen2 account. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The Key of the application used to authenticate against the Azure Data Lake Storage Gen2 account.
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'AzureBlobFS'.
  final pulumi.Input<String> type;
  /// Endpoint for the Azure Data Lake Storage Gen2 service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? url;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [AzureBlobFSLinkedService].
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
  const AzureBlobFSLinkedService({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReference, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sasToken': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(sasToken, (value) => value.toMap()),
      'sasUri': ?sasUri,
      'servicePrincipalCredential': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'url': ?url,
      'version': ?version,
    };
  }

  factory AzureBlobFSLinkedService.fromMap(Map<String, dynamic> map) {
    return AzureBlobFSLinkedService(
      accountKey: (() { final guardedValue = map['accountKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      azureCloudType: (() { final guardedValue = map['azureCloudType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecification>(guardedValue, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))); })(),
      sasToken: (() { final guardedValue = map['sasToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sasUri: (() { final guardedValue = map['sasUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalCredential: (() { final guardedValue = map['servicePrincipalCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipalCredentialType: (() { final guardedValue = map['servicePrincipalCredentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
