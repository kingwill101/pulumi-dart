// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Open Data Protocol (OData) linked service.
class ODataLinkedService {
  /// Specify the resource you are requesting authorization to use Directory. Type: string (or Expression with resultType string).
  final dynamic aadResourceId;
  /// Specify the credential type (key or cert) is used for service principal.
  final String? aadServicePrincipalCredentialType;
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  final dynamic authHeaders;
  /// Type of authentication used to connect to the OData service.
  final String? authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final dynamic azureCloudType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// Password of the OData service.
  final AzureKeyVaultSecretReference? password;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalEmbeddedCertPassword;
  /// Specify the application id of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// Specify the secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// Specify the tenant information (domain name or tenant ID) under which your application resides. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'OData'.
  final String type;
  /// The URL of the OData service endpoint. Type: string (or Expression with resultType string).
  final dynamic url;
  /// User name of the OData service. Type: string (or Expression with resultType string).
  final dynamic userName;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [ODataLinkedService].
  /// [aadResourceId] Specify the resource you are requesting authorization to use Directory. Type: string (or Expression with resultType string).
  /// [aadServicePrincipalCredentialType] Specify the credential type (key or cert) is used for service principal.
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authHeaders] The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  /// [authenticationType] Type of authentication used to connect to the OData service.
  /// [azureCloudType] Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [parameters] Parameters for linked service.
  /// [password] Password of the OData service.
  /// [servicePrincipalEmbeddedCert] Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalEmbeddedCertPassword] Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] Specify the application id of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] Specify the secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  /// [tenant] Specify the tenant information (domain name or tenant ID) under which your application resides. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [url] The URL of the OData service endpoint. Type: string (or Expression with resultType string).
  /// [userName] User name of the OData service. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  ODataLinkedService({
    this.aadResourceId,
    this.aadServicePrincipalCredentialType,
    this.annotations,
    this.authHeaders,
    this.authenticationType,
    this.azureCloudType,
    this.connectVia,
    this.description,
    this.encryptedCredential,
    this.parameters,
    this.password,
    this.servicePrincipalEmbeddedCert,
    this.servicePrincipalEmbeddedCertPassword,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    required this.url,
    this.userName,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadResourceId': ?aadResourceId,
      'aadServicePrincipalCredentialType': ?aadServicePrincipalCredentialType,
      'annotations': ?annotations,
      'authHeaders': ?authHeaders,
      'authenticationType': ?authenticationType,
      'azureCloudType': ?azureCloudType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'servicePrincipalEmbeddedCert': ?servicePrincipalEmbeddedCert == null ? null : servicePrincipalEmbeddedCert!.toMap(),
      'servicePrincipalEmbeddedCertPassword': ?servicePrincipalEmbeddedCertPassword == null ? null : servicePrincipalEmbeddedCertPassword!.toMap(),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory ODataLinkedService.fromMap(Map<String, dynamic> map) {
    return ODataLinkedService(
      aadResourceId: map['aadResourceId'] == null ? null : map['aadResourceId'],
      aadServicePrincipalCredentialType: map['aadServicePrincipalCredentialType'] == null ? null : map['aadServicePrincipalCredentialType'] as String,
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authHeaders: map['authHeaders'] == null ? null : map['authHeaders'],
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      azureCloudType: map['azureCloudType'] == null ? null : map['azureCloudType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['password'] as Map).cast<String, dynamic>()),
      servicePrincipalEmbeddedCert: map['servicePrincipalEmbeddedCert'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCert'] as Map).cast<String, dynamic>()),
      servicePrincipalEmbeddedCertPassword: map['servicePrincipalEmbeddedCertPassword'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalEmbeddedCertPassword'] as Map).cast<String, dynamic>()),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      url: map['url'],
      userName: map['userName'] == null ? null : map['userName'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

