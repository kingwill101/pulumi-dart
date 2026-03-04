// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Dynamics CRM linked service.
class DynamicsCrmLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The authentication type to connect to Dynamics CRM server. 'Office365' for online scenario, 'Ifd' for on-premises with Ifd scenario, 'AADServicePrincipal' for Server-To-Server authentication in online scenario, 'Active Directory' for Dynamics on-premises with IFD. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> authenticationType;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;

  /// The deployment type of the Dynamics CRM instance. 'Online' for Dynamics CRM Online and 'OnPremisesWithIfd' for Dynamics CRM on-premises with Ifd. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> deploymentType;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The Active Directory domain that will verify user credentials. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? domain;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// The host name of the on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? hostName;

  /// The organization name of the Dynamics CRM instance. The property is required for on-prem and required for online when there are more than one Dynamics CRM instances associated with the user. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? organizationName;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// Password to access the Dynamics CRM instance.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? password;

  /// The port of on-premises Dynamics CRM server. The property is required for on-prem and not allowed for online. Default is 443. Type: integer (or Expression with resultType integer), minimum: 0.
  final pulumi.Input<dynamic>? port;

  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>?
  servicePrincipalCredential;

  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;

  /// The client ID of the application in Azure Active Directory used for Server-To-Server authentication. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The URL to the Microsoft Dynamics CRM server. The property is required for on-line and not allowed for on-prem. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? serviceUri;

  /// Type of linked service.
  /// Expected value is 'DynamicsCrm'.
  final pulumi.Input<String> type;

  /// User name to access the Dynamics CRM instance. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? username;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

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
      'connectVia':
          ?pulumi.Input.mapOptionalInputValue<
            IntegrationRuntimeReferenceResponse,
            Map<String, dynamic>
          >(connectVia, (value) => value.toMap()),
      'credential':
          ?pulumi.Input.mapOptionalInputValue<
            CredentialReferenceResponse,
            Map<String, dynamic>
          >(credential, (value) => value.toMap()),
      'deploymentType': deploymentType,
      'description': ?description,
      'domain': ?domain,
      'encryptedCredential': ?encryptedCredential,
      'hostName': ?hostName,
      'organizationName': ?organizationName,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ParameterSpecificationResponse>,
            Map<String, Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ParameterSpecificationResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'password':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(password, (value) => value.toMap()),
      'port': ?port,
      'servicePrincipalCredential':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(servicePrincipalCredential, (value) => value.toMap()),
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
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      authenticationType: pulumi.Input.fromValue(map['authenticationType']),
      connectVia: (() {
        final guardedValue = map['connectVia'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          IntegrationRuntimeReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      credential: (() {
        final guardedValue = map['credential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CredentialReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      deploymentType: pulumi.Input.fromValue(map['deploymentType']),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hostName: (() {
        final guardedValue = map['hostName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      organizationName: (() {
        final guardedValue = map['organizationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ParameterSpecificationResponse>(
            guardedValue,
            (value) => ParameterSpecificationResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalCredential: (() {
        final guardedValue = map['servicePrincipalCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      servicePrincipalCredentialType: (() {
        final guardedValue = map['servicePrincipalCredentialType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      servicePrincipalId: (() {
        final guardedValue = map['servicePrincipalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      serviceUri: (() {
        final guardedValue = map['serviceUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
