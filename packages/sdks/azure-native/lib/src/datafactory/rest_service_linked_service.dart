// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Rest Service linked service.
class RestServiceLinkedService {
  /// The resource you are requesting authorization to use. Type: string (or Expression with resultType string).
  final dynamic aadResourceId;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: object (or Expression with resultType object).
  final dynamic authHeaders;
  /// Type of authentication used to connect to the REST service.
  final String authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The client ID associated with your application. Type: string (or Expression with resultType string).
  final dynamic clientId;
  /// The client secret associated with your application.
  final AzureKeyVaultSecretReference? clientSecret;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// Whether to validate server side SSL certificate when connecting to the endpoint.The default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic enableServerCertificateValidation;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The password used in Basic authentication type.
  final AzureKeyVaultSecretReference? password;
  /// The target service or resource to which the access will be requested. Type: string (or Expression with resultType string).
  final dynamic resource;
  /// The scope of the access required. It describes what kind of access will be requested. Type: string (or Expression with resultType string).
  final dynamic scope;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalCredentialType;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCertPassword;
  /// The application's client ID used in AadServicePrincipal authentication type. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The application's key used in AadServicePrincipal authentication type.
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// The tenant information (domain name or tenant ID) used in AadServicePrincipal authentication type under which your application resides. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// The token endpoint of the authorization server to acquire access token. Type: string (or Expression with resultType string).
  final dynamic tokenEndpoint;
  /// Type of linked service.
  /// Expected value is 'RestService'.
  final String type;
  /// The base URL of the REST service. Type: string (or Expression with resultType string).
  final dynamic url;
  /// The user name used in Basic authentication type. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [RestServiceLinkedService].
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
  RestServiceLinkedService({
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
      'clientSecret': ?clientSecret == null ? null : clientSecret!.toMap(),
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'enableServerCertificateValidation': ?enableServerCertificateValidation,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'resource': ?resource,
      'scope': ?scope,
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalEmbeddedCert': ?servicePrincipalEmbeddedCert == null ? null : servicePrincipalEmbeddedCert!.toMap(),
      'servicePrincipalEmbeddedCertPassword': ?servicePrincipalEmbeddedCertPassword == null ? null : servicePrincipalEmbeddedCertPassword!.toMap(),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'tokenEndpoint': ?tokenEndpoint,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory RestServiceLinkedService.fromMap(Map<String, dynamic> map) {
    return RestServiceLinkedService(
      aadResourceId: map['aadResourceId'] == null ? null : map['aadResourceId'],
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authHeaders: map['authHeaders'] == null ? null : map['authHeaders'],
      authenticationType: map['authenticationType'] as String,
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      clientId: map['clientId'] == null ? null : map['clientId'],
      clientSecret: map['clientSecret'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      enableServerCertificateValidation: map['enableServerCertificateValidation'] == null ? null : map['enableServerCertificateValidation'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      resource: map['resource'] == null ? null : map['resource'],
      scope: map['scope'] == null ? null : map['scope'],
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalEmbeddedCert: map['servicePrincipalEmbeddedCert'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCert'] as Map).cast<String, dynamic>()),
      servicePrincipalEmbeddedCertPassword: map['servicePrincipalEmbeddedCertPassword'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCertPassword'] as Map).cast<String, dynamic>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      tokenEndpoint: map['tokenEndpoint'] == null ? null : map['tokenEndpoint'],
      type: map['type'] as String,
      url: map['url'],
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

