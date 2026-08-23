// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Office365 linked service.
class Office365LinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Azure tenant ID to which the Office 365 account belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> office365TenantId;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// The service principal credential type for authentication.'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. If not specified, 'ServicePrincipalKey' is in use. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalEmbeddedCertPassword;
  /// Specify the application's client ID. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> servicePrincipalId;
  /// Specify the application's key.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse> servicePrincipalKey;
  /// Specify the tenant information under which your Azure AD web application resides. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> servicePrincipalTenantId;
  /// Type of linked service.
  /// Expected value is 'Office365'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [Office365LinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [office365TenantId] Azure tenant ID to which the Office 365 account belongs. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalCredentialType] The service principal credential type for authentication.'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. If not specified, 'ServicePrincipalKey' is in use. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCert] Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCertPassword] Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] Specify the application's client ID. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] Specify the application's key.
  /// [servicePrincipalTenantId] Specify the tenant information under which your Azure AD web application resides. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  const Office365LinkedServiceResponse({
    this.annotations,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    required this.office365TenantId,
    this.parameters,
    this.servicePrincipalCredentialType,
    this.servicePrincipalEmbeddedCert,
    this.servicePrincipalEmbeddedCertPassword,
    required this.servicePrincipalId,
    required this.servicePrincipalKey,
    required this.servicePrincipalTenantId,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'office365TenantId': office365TenantId,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalEmbeddedCert, (value) => value.toMap()),
      'servicePrincipalEmbeddedCertPassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalEmbeddedCertPassword, (value) => value.toMap()),
      'servicePrincipalId': servicePrincipalId,
      'servicePrincipalKey': pulumi.Input.mapInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'servicePrincipalTenantId': servicePrincipalTenantId,
      'type': type,
      'version': ?version,
    };
  }

  factory Office365LinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return Office365LinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      office365TenantId: pulumi.Input.fromValue(map['office365TenantId']),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      servicePrincipalCredentialType: (() { final guardedValue = map['servicePrincipalCredentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalEmbeddedCert: (() { final guardedValue = map['servicePrincipalEmbeddedCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipalEmbeddedCertPassword: (() { final guardedValue = map['servicePrincipalEmbeddedCertPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      servicePrincipalId: pulumi.Input.fromValue(map['servicePrincipalId']),
      servicePrincipalKey: pulumi.Input.fromValue(AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey']! as Map).cast<String, dynamic>())),
      servicePrincipalTenantId: pulumi.Input.fromValue(map['servicePrincipalTenantId']),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
