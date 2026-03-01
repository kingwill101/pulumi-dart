// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Dynamics CRM linked service.
class DynamicsCrmLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The authentication type to connect to Dynamics CRM server. 'Office365' for online scenario, 'Ifd' for on-premises with Ifd scenario, 'AADServicePrincipal' for Server-To-Server authentication in online scenario, 'Active Directory' for Dynamics on-premises with IFD. Type: string (or Expression with resultType string).
  final dynamic authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReferenceResponse? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReferenceResponse? credential;
  /// The deployment type of the Dynamics CRM instance. 'Online' for Dynamics CRM Online and 'OnPremisesWithIfd' for Dynamics CRM on-premises with Ifd. Type: string (or Expression with resultType string).
  final dynamic deploymentType;
  /// Linked service description.
  final String? description;
  /// The Active Directory domain that will verify user credentials. Type: string (or Expression with resultType string).
  final dynamic domain;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The host name of the on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Type: string (or Expression with resultType string).
  final dynamic hostName;
  /// The organization name of the Dynamics CRM instance. The property is required for on-prem and required for online when there are more than one Dynamics CRM instances associated with the user. Type: string (or Expression with resultType string).
  final dynamic organizationName;
  /// Parameters for linked service.
  final Map<String, ParameterSpecificationResponse>? parameters;
  /// Password to access the Dynamics CRM instance.
  final AzureKeyVaultSecretReferenceResponse? password;
  /// The port of on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Default is 443. Type: integer (or Expression with resultType integer), minimum: 0.
  final dynamic port;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReferenceResponse? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalCredentialType;
  /// The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The URL to the Microsoft Dynamics CRM server. The property is required for on-line and not allowed for on-prem. Type: string (or Expression with resultType string).
  final dynamic serviceUri;
  /// Type of linked service.
  /// Expected value is 'DynamicsCrm'.
  final String type;
  /// User name to access the Dynamics CRM instance. Type: string (or Expression with resultType string).
  final dynamic username;
  /// Version of the linked service.
  final String? version;

  /// Creates a new [DynamicsCrmLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [authenticationType] The authentication type to connect to Dynamics CRM server. 'Office365' for online scenario, 'Ifd' for on-premises with Ifd scenario, 'AADServicePrincipal' for Server-To-Server authentication in online scenario, 'Active Directory' for Dynamics on-premises with IFD. Type: string (or Expression with resultType string).
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [deploymentType] The deployment type of the Dynamics CRM instance. 'Online' for Dynamics CRM Online and 'OnPremisesWithIfd' for Dynamics CRM on-premises with Ifd. Type: string (or Expression with resultType string).
  /// [description] Linked service description.
  /// [domain] The Active Directory domain that will verify user credentials. Type: string (or Expression with resultType string).
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [hostName] The host name of the on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Type: string (or Expression with resultType string).
  /// [organizationName] The organization name of the Dynamics CRM instance. The property is required for on-prem and required for online when there are more than one Dynamics CRM instances associated with the user. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [password] Password to access the Dynamics CRM instance.
  /// [port] The port of on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Default is 443. Type: integer (or Expression with resultType integer), minimum: 0.
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  /// [serviceUri] The URL to the Microsoft Dynamics CRM server. The property is required for on-line and not allowed for on-prem. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [username] User name to access the Dynamics CRM instance. Type: string (or Expression with resultType string).
  /// [version] Version of the linked service.
  DynamicsCrmLinkedServiceResponse({
    this.annotations,
    required this.authenticationType,
    this.connectVia,
    this.credential,
    required this.deploymentType,
    this.description,
    this.domain,
    this.encryptedCredential,
    this.hostName,
    this.organizationName,
    this.parameters,
    this.password,
    this.port,
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.serviceUri,
    required this.type,
    this.username,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'authenticationType': authenticationType,
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'deploymentType': deploymentType,
      'description': ?description,
      'domain': ?domain,
      'encryptedCredential': ?encryptedCredential,
      'hostName': ?hostName,
      'organizationName': ?organizationName,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecificationResponse, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'password': ?password == null ? null : password!.toMap(),
      'port': ?port,
      'servicePrincipalCredential': ?servicePrincipalCredential == null ? null : servicePrincipalCredential!.toMap(),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'serviceUri': ?serviceUri,
      'type': type,
      'username': ?username,
      'version': ?version,
    };
  }

  factory DynamicsCrmLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return DynamicsCrmLinkedServiceResponse(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      authenticationType: map['authenticationType'],
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReferenceResponse.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      deploymentType: map['deploymentType'],
      description: map['description'] == null ? null : map['description'] as String,
      domain: map['domain'] == null ? null : map['domain'],
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      hostName: map['hostName'] == null ? null : map['hostName'],
      organizationName: map['organizationName'] == null ? null : map['organizationName'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(map['parameters'], (value) => ParameterSpecificationResponse.fromMap((value as Map).cast<String, dynamic>())),
      password: map['password'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['password'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'],
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : AzureKeyVaultSecretReferenceResponse.fromMap((map['servicePrincipalCredential'] as Map).cast<String, dynamic>()),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      serviceUri: map['serviceUri'] == null ? null : map['serviceUri'],
      type: map['type'] as String,
      username: map['username'] == null ? null : map['username'],
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

