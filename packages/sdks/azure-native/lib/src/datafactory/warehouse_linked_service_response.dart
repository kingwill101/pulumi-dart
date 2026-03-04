// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference_response.dart';
import 'credential_reference_response.dart';
import 'integration_runtime_reference_response.dart';
import 'parameter_specification_response.dart';

/// Microsoft Fabric Warehouse linked service.
class WarehouseLinkedServiceResponse {
  /// List of tags that can be used for describing the linked service.
  final pulumi.Input<List<dynamic>>? annotations;

  /// The ID of Microsoft Fabric Warehouse artifact. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> artifactId;

  /// The authentication type to use.
  final pulumi.Input<String>? authenticationType;

  /// The integration runtime reference.
  final pulumi.Input<IntegrationRuntimeReferenceResponse>? connectVia;

  /// The credential reference containing authentication information.
  final pulumi.Input<CredentialReferenceResponse>? credential;

  /// Linked service description.
  final pulumi.Input<String>? description;

  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final pulumi.Input<String>? encryptedCredential;

  /// The endpoint of Microsoft Fabric Warehouse server. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic> endpoint;

  /// Parameters for linked service.
  final pulumi.Input<Map<String, ParameterSpecificationResponse>>? parameters;

  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>?
  servicePrincipalCredential;

  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalCredentialType;

  /// The ID of the application used to authenticate against Microsoft Fabric Warehouse. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? servicePrincipalId;

  /// The Key of the application used to authenticate against Microsoft Fabric Warehouse.
  final pulumi.Input<AzureKeyVaultSecretReferenceResponse>? servicePrincipalKey;

  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? tenant;

  /// Type of linked service.
  /// Expected value is 'Warehouse'.
  final pulumi.Input<String> type;

  /// Version of the linked service.
  final pulumi.Input<String>? version;

  /// The ID of Microsoft Fabric workspace. Type: string (or Expression with resultType string).
  final pulumi.Input<dynamic>? workspaceId;

  /// Creates a new [WarehouseLinkedServiceResponse].
  /// [annotations] List of tags that can be used for describing the linked service.
  /// [artifactId] The ID of Microsoft Fabric Warehouse artifact. Type: string (or Expression with resultType string).
  /// [authenticationType] The authentication type to use.
  /// [connectVia] The integration runtime reference.
  /// [credential] The credential reference containing authentication information.
  /// [description] Linked service description.
  /// [encryptedCredential] The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  /// [endpoint] The endpoint of Microsoft Fabric Warehouse server. Type: string (or Expression with resultType string).
  /// [parameters] Parameters for linked service.
  /// [servicePrincipalCredential] The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  /// [servicePrincipalCredentialType] The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  /// [servicePrincipalId] The ID of the application used to authenticate against Microsoft Fabric Warehouse. Type: string (or Expression with resultType string).
  /// [servicePrincipalKey] The Key of the application used to authenticate against Microsoft Fabric Warehouse.
  /// [tenant] The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  /// [type] Type of linked service.
  /// [version] Version of the linked service.
  /// [workspaceId] The ID of Microsoft Fabric workspace. Type: string (or Expression with resultType string).
  WarehouseLinkedServiceResponse({
    this.annotations,
    required this.artifactId,
    this.authenticationType,
    this.connectVia,
    this.credential,
    this.description,
    this.encryptedCredential,
    required this.endpoint,
    this.parameters,
    this.servicePrincipalCredential,
    this.servicePrincipalCredentialType,
    this.servicePrincipalId,
    this.servicePrincipalKey,
    this.tenant,
    required this.type,
    this.version,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'artifactId': artifactId,
      'authenticationType': ?authenticationType,
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
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
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
      'servicePrincipalCredential':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(servicePrincipalCredential, (value) => value.toMap()),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey':
          ?pulumi.Input.mapOptionalInputValue<
            AzureKeyVaultSecretReferenceResponse,
            Map<String, dynamic>
          >(servicePrincipalKey, (value) => value.toMap()),
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
      'workspaceId': ?workspaceId,
    };
  }

  factory WarehouseLinkedServiceResponse.fromMap(Map<String, dynamic> map) {
    return WarehouseLinkedServiceResponse(
      annotations: (() {
        final guardedValue = map['annotations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<dynamic>());
      })(),
      artifactId: pulumi.Input.fromValue(map['artifactId']),
      authenticationType: (() {
        final guardedValue = map['authenticationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      encryptedCredential: (() {
        final guardedValue = map['encryptedCredential'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoint: pulumi.Input.fromValue(map['endpoint']),
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
      servicePrincipalKey: (() {
        final guardedValue = map['servicePrincipalKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AzureKeyVaultSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tenant: (() {
        final guardedValue = map['tenant'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      workspaceId: (() {
        final guardedValue = map['workspaceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
    );
  }
}
