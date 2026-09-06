// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// SharePoint Online List linked service.
class SharePointOnlineListLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalEmbeddedCertPassword;
  /// The application (client) ID of your application registered in Azure Active Directory. Make sure to grant SharePoint site permission to this application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> servicePrincipalId;
  /// The client secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalKey;
  /// The URL of the SharePoint Online site. For example, https://contoso.sharepoint.com/sites/siteName. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> siteUrl;
  /// The tenant ID under which your application resides. You can find it from Azure portal Active Directory overview page. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> tenantId;
  /// Type of linked service.
  /// Expected value is 'SharePointOnlineList'.
  final pulumi.Input<String> type;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [SharePointOnlineListLinkedServiceResponse].
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
  const SharePointOnlineListLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?servicePrincipalEmbeddedCert,
      'servicePrincipalEmbeddedCertPassword': ?servicePrincipalEmbeddedCertPassword,
      'servicePrincipalId': servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'siteUrl': siteUrl,
      'tenantId': tenantId,
      'type': type,
      'version': ?version,
    };
  }

  factory SharePointOnlineListLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return SharePointOnlineListLinkedServiceResponse(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      servicePrincipalCredentialType: (() { final guardedValue = map['servicePrincipalCredentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalEmbeddedCert: (() { final guardedValue = map['servicePrincipalEmbeddedCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalEmbeddedCertPassword: (() { final guardedValue = map['servicePrincipalEmbeddedCertPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalId: pulumi.Input.fromValue(map['servicePrincipalId']),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      siteUrl: pulumi.Input.fromValue(map['siteUrl']),
      tenantId: pulumi.Input.fromValue(map['tenantId']),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
