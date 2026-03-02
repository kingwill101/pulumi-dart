// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Open Data Protocol (OData) linked service.
class ODataLinkedServiceResponse {
  /// Specify the resource you are requesting authorization to use Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? aadResourceId;
  /// Specify the credential type (key or cert) is used for service principal.
  final pulumi.Input<String>? aadServicePrincipalCredentialType;
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;
  /// The additional HTTP headers in the request to RESTful API used for authorization. Type: key value pairs (value should be string type).
  final pulumi.Input<dynamic>? authHeaders;
  /// Type of authentication used to connect to the OData service.
  final pulumi.Input<String>? authenticationType;
  /// Indicates the azure cloud type of the service principle auth. Allowed values are AzurePublic, AzureChina, AzureUsGovernment, AzureGermany. Default value is the data factory regions’ cloud type. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? azureCloudType;
  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;
  /// Linked service description.
  final pulumi.Input<String>? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;
  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;
  /// Password of the OData service.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;
  /// Specify the base64 encoded certificate of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalEmbeddedCert;
  /// Specify the password of your certificate if your certificate has a password and you are using AadServicePrincipal authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalEmbeddedCertPassword;
  /// Specify the application id of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;
  /// Specify the secret of your application registered in Azure Active Directory. Type: string (or Expression with resultType string).
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalKey;
  /// Specify the tenant information (domain name or tenant ID) under which your application resides. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;
  /// Type of linked service.
  /// Expected value is 'OData'.
  final pulumi.Input<String> type;
  /// The URL of the OData service endpoint. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> url;
  /// User name of the OData service. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? userName;
  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// Creates a new [ODataLinkedServiceResponse].
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
  ODataLinkedServiceResponse({
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
      'connectVia': ?pulumi.Input.mapOptionalInputValue<IntegrationRuntimeReferenceResponse, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'parameters': ?pulumi.Input.mapOptionalInputValue<Map<String, ParameterSpecificationResponse>, Map<String, Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'password': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(password, (value) => value.toMap()),
      'servicePrincipalEmbeddedCert': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalEmbeddedCert, (value) => value.toMap()),
      'servicePrincipalEmbeddedCertPassword': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalEmbeddedCertPassword, (value) => value.toMap()),
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?pulumi.Input.mapOptionalInputValue<AzureKeyVaultSecretReferenceResponse, Map<String, dynamic>>(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'url': url,
      'userName': ?userName,
      'version': ?version,
    };
  }

  factory ODataLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return ODataLinkedServiceResponse(
      aadResourceId: map['aadResourceId'] == null ? null : (map['aadResourceId']!).input(),
      aadServicePrincipalCredentialType: map['aadServicePrincipalCredentialType'] == null ? null : (map['aadServicePrincipalCredentialType']! as String).input(),
      annotations: map['annotations'] == null ? null : ((map['annotations']! as List).cast<dynamic>()).input(),
      authHeaders: map['authHeaders'] == null ? null : (map['authHeaders']!).input(),
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      azureCloudType: map['azureCloudType'] == null ? null : (map['azureCloudType']!).input(),
      connectVia: map['connectVia'] == null ? null : (IntegrationRuntimeReferenceResponse.fromMap((map['connectVia']! as Map).cast<String, dynamic>())).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      encryptedCredential: map['encryptedCredential'] == null ? null : (map['encryptedCredential']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters']!, (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      password: map['password'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['password']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalEmbeddedCert: map['servicePrincipalEmbeddedCert'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalEmbeddedCert']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalEmbeddedCertPassword: map['servicePrincipalEmbeddedCertPassword'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalEmbeddedCertPassword']! as Map).cast<String, dynamic>())).input(),
      servicePrincipalId: map['servicePrincipalId'] == null ? null : (map['servicePrincipalId']!).input(),
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : (AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalKey']! as Map).cast<String, dynamic>())).input(),
      tenant: map['tenant'] == null ? null : (map['tenant']!).input(),
      type: (map['type'] as String).input(),
      url: (map['url']).input(),
      userName: map['userName'] == null ? null : (map['userName']!).input(),
      version: map['version'] == null ? null : (map['version']! as String).input(),
    );
  }
}

