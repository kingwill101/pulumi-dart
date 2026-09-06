// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Rest Service linked service.
class RestServiceLinkedServiceResponse {
  /// The resource you are requesting authorization to use. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? aadResourceId;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>?>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: object (or Expression with resultType object).
  final pulumi.Input<dynamic>? authHeaders;
  /// Type of authentication used to connect to the REST service.
  final pulumi.Input<String> authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;
  /// The client ID associated with your application. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? clientId;
  /// The client secret associated with your application.
  final pulumi.Input<dynamic>? clientSecret;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse?>? connectVia;
  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse?>? credential;
  /// Linked service description.
  final pulumi.Input<String?>? description;
  /// Whether to validate server side SSL certificate when connecting to the endpoint.The default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? enableServerCertificateValidation;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String?>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>?>? parameters;
  /// The password used in Basic authentication type.
  final pulumi.Input<dynamic>? password;
  /// The target service or resource to which the access will be requested. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? resource;
  /// The scope of the access required. It describes what kind of access will be requested. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? scope;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalEmbeddedCertPassword;
  /// The application's client ID used in AadServicePrincipal authentication type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// The application's key used in AadServicePrincipal authentication type.
  final pulumi.Input<dynamic>? servicePrincipalKey;
  /// The tenant information (domain name or tenant ID) used in AadServicePrincipal authentication type under which your application resides. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// The token endpoint of the authorization server to acquire access token. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tokenEndpoint;
  /// Type of linked service.
  /// Expected value is 'RestService'.
  final pulumi.Input<String> type;
  /// The base URL of the REST service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// The user name used in Basic authentication type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String?>? version;

  /// Creates a new [RestServiceLinkedServiceResponse].
  /// [aadResourceId] The resource you are requesting authorization to use. Type: string (or Expression with resultType string).
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authHeaders] The additional HTTP headers in the request to RESTful API used for authorization. Type: object (or Expression with resultType object).
  /// [authenticationType] Type of authentication used to connect to the REST service.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [clientId] The client ID associated with your application. Type: string (or Expression with resultType string).
  /// [clientSecret] The client secret associated with your application.
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [enableServerCertificateValidation] Whether to validate server side SSL certificate when connecting to the endpoint.The default value is true. Type: boolean (or Expression with resultType boolean).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] The password used in Basic authentication type.
  /// [resource] The target service or resource to which the access will be requested. Type: string (or Expression with resultType string).
  /// [scope] The scope of the access required. It describes what kind of access will be requested. Type: string (or Expression with resultType string).
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCert] Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCertPassword] Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The application's client ID used in AadServicePrincipal authentication type. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The application's key used in AadServicePrincipal authentication type.
  /// [tenant] The tenant information (domain name or tenant ID) used in AadServicePrincipal authentication type under which your application resides. Type: string (or Expression with resultType string).
  /// [tokenEndpoint] The token endpoint of the authorization server to acquire access token. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [url] The base URL of the REST service. Type: string (or Expression with resultType string).
  /// [userName] The user name used in Basic authentication type. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  const RestServiceLinkedServiceResponse({
    this.aadResourceId,
    this.annotations,
    this.authHeaders,
    required this.authenticationType,
    this.azureCloudType,
    this.clientId,
    this.clientSecret,
    this.connectVia,
    this.credential,
    this.description,
    this.enableServerCertificateValidation,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.resource,
    this.scope,
    this.servicePrincipalCredentialType,
    this.servicePrincipalEmbeddedCert,
    this.servicePrincipalEmbeddedCertPassword,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    this.tokenEndpoint,
    required this.type,
    required this.url,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadResourceId': ?aadResourceId,
      'annotations': ?annotations,
      'authHeaders': ?authHeaders,
      'authenticationType': authenticationType,
      'azureCloudType': ?azureCloudType,
      'clientId': ?clientId,
      'clientSecret': ?clientSecret,
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'credential': ?pulumi.Input.mapOptionalInputValue<CredentialReferenceResponse, Map<String, dynamic>>(credential, (value) => value.toMap()),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?password,
      'resource': ?resource,
      'scope': ?scope,
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?servicePrincipalEmbeddedCert,
      'servicePrincipalEmbeddedCertPassword': ?servicePrincipalEmbeddedCertPassword,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey,
      'tenant': ?tenant,
      'tokenEndpoint': ?tokenEndpoint,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory RestServiceLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return RestServiceLinkedServiceResponse(
      aadResourceId: (() { final guardedValue = map['aadResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>()); })(),
      authHeaders: (() { final guardedValue = map['authHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType'] as String),
      azureCloudType: (() { final guardedValue = map['azureCloudType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      clientSecret: (() { final guardedValue = map['clientSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IntegrationRuntimeReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      credential: (() { final guardedValue = map['credential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CredentialReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableServerCertificateValidation: (() { final guardedValue = map['enableServerCertificateValidation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      encryptedCredential: (() { final guardedValue = map['encryptedCredential']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(guardedValue, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalCredentialType: (() { final guardedValue = map['servicePrincipalCredentialType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalEmbeddedCert: (() { final guardedValue = map['servicePrincipalEmbeddedCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalEmbeddedCertPassword: (() { final guardedValue = map['servicePrincipalEmbeddedCertPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalId: (() { final guardedValue = map['servicePrincipalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      servicePrincipalKey: (() { final guardedValue = map['servicePrincipalKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tenant: (() { final guardedValue = map['tenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      tokenEndpoint: (() { final guardedValue = map['tokenEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      url: pulumi.Input.fromValue(map['url']),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
