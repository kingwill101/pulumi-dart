// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// SharePoint Online List linked service.
class SharePointOnlineListLinkedService {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReference>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecification>>? parameters;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalEmbeddedCertPassword;
  /// The application (client) ID of your application registered in Azure Active Directory. Make sure to grant SharePoint site permission to this application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> servicePrincipalId;
  /// The client secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReference>? servicePrincipalKey;
  /// The URL of the SharePoint Online site. For example, https://contoso.sharepoint.com/sites/siteName. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> siteUrl;
  /// The tenant ID under which your application resides. You can find it from Azure portal Active Directory overview page. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> tenantId;
  /// Type of linked service.
  /// Expected value is 'SharePointOnlineList'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [SharePointOnlineListLinkedService].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCert] Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCertPassword] Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The application (client) ID of your application registered in Azure Active Directory. Make sure to grant SharePoint site permission to this application. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The client secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [siteUrl] The URL of the SharePoint Online site. For example, https://contoso.sharepoint.com/sites/siteName. Type: string (or Expression with resultType string).
  /// [tenantId] The tenant ID under which your application resides. You can find it from Azure portal Active Directory overview page. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  SharePointOnlineListLinkedService({
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.servicePrincipalCredentialType,
    this.servicePrincipalEmbeddedCert,
    this.servicePrincipalEmbeddedCertPassword,
    required this.servicePrincipalId,
    this.servicePrincipalKey,
    required this.siteUrl,
    required this.tenantId,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecification>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalEmbeddedCert, (value) => value.toMap()),
      'servicePrincipalEmbeddedCertPassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalEmbeddedCertPassword, (value) => value.toMap()),
      'servicePrincipalId': servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReference, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'siteUrl': siteUrl,
      'tenantId': tenantId,
      'type': type,
      'version': ?version,
    };
  }

  factory SharePointOnlineListLinkedService.fromMap(Map<String, dynamic> map) {
    return SharePointOnlineListLinkedService(
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReference.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters']!, (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>()))).input(),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : (map['servicePrincipalCredentialType']!).input(),
      servicePrincipalEmbeddedCert: map['servicePrincipalEmbeddedCert'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCert']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalEmbeddedCertPassword: map['servicePrincipalEmbeddedCertPassword'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCertPassword']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalId: (map['servicePrincipalId']).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey']! as Map).cast<String, dynamic>())).input(),
      siteUrl: (map['siteUrl']).input(),
      tenantId: (map['tenantId']).input(),
      type: (map['type'] as String).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

