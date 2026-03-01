// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_key_vault_secret_reference.dart';
import 'credential_reference.dart';
import 'integration_runtime_reference.dart';
import 'parameter_specification.dart';

/// Microsoft Fabric Warehouse linked service.
class WarehouseLinkedService {
  /// List of tags that can be used for describing the linked service.
  final List<dynamic>? annotations;
  /// The ID of Microsoft Fabric Warehouse artifact. Type: string (or Expression with resultType string).
  final dynamic artifactId;
  /// The authentication type to use.
  final String? authenticationType;
  /// The integration runtime reference.
  final IntegrationRuntimeReference? connectVia;
  /// The credential reference containing authentication information.
  final CredentialReference? credential;
  /// Linked service description.
  final String? description;
  /// The encrypted credential used for authentication. Credentials are encrypted using the integration runtime credential manager. Type: string.
  final String? encryptedCredential;
  /// The endpoint of Microsoft Fabric Warehouse server. Type: string (or Expression with resultType string).
  final dynamic endpoint;
  /// Parameters for linked service.
  final Map<String, ParameterSpecification>? parameters;
  /// The credential of the service principal object in Azure Active Directory. If servicePrincipalCredentialType is 'ServicePrincipalKey', servicePrincipalCredential can be SecureString or AzureKeyVaultSecretReference. If servicePrincipalCredentialType is 'ServicePrincipalCert', servicePrincipalCredential can only be AzureKeyVaultSecretReference.
  final AzureKeyVaultSecretReference? servicePrincipalCredential;
  /// The service principal credential type to use in Server-To-Server authentication. 'ServicePrincipalKey' for key/secret, 'ServicePrincipalCert' for certificate. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalCredentialType;
  /// The ID of the application used to authenticate against Microsoft Fabric Warehouse. Type: string (or Expression with resultType string).
  final dynamic servicePrincipalId;
  /// The Key of the application used to authenticate against Microsoft Fabric Warehouse.
  final AzureKeyVaultSecretReference? servicePrincipalKey;
  /// The name or ID of the tenant to which the service principal belongs. Type: string (or Expression with resultType string).
  final dynamic tenant;
  /// Type of linked service.
  /// Expected value is 'Warehouse'.
  final String type;
  /// Version of the linked service.
  final String? version;
  /// The ID of Microsoft Fabric workspace. Type: string (or Expression with resultType string).
  final dynamic workspaceId;

  /// Creates a new [WarehouseLinkedService].
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
  WarehouseLinkedService({
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
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'credential': ?credential == null ? null : credential!.toMap(),
      'description': ?description,
      'encryptedCredential': ?encryptedCredential,
      'endpoint': endpoint,
      'parameters': ?parameters == null ? null : pulumi.Input.encodeMapValues<ParameterSpecification, Map<String, dynamic>>(parameters!, (value) => value.toMap()),
      'servicePrincipalCredential': ?servicePrincipalCredential == null ? null : servicePrincipalCredential!.toMap(),
      'servicePrincipalCredentialType': ?servicePrincipalCredentialType,
      'servicePrincipalId': ?servicePrincipalId,
      'servicePrincipalKey': ?servicePrincipalKey == null ? null : servicePrincipalKey!.toMap(),
      'tenant': ?tenant,
      'type': type,
      'version': ?version,
      'workspaceId': ?workspaceId,
    };
  }

  factory WarehouseLinkedService.fromMap(Map<String, dynamic> map) {
    return WarehouseLinkedService(
      annotations: map['annotations'] == null ? null : (map['annotations'] as List).cast<dynamic>(),
      artifactId: map['artifactId'],
      authenticationType: map['authenticationType'] == null ? null : map['authenticationType'] as String,
      connectVia: map['connectVia'] == null ? null : IntegrationRuntimeReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      credential: map['credential'] == null ? null : CredentialReference.fromMap((map['credential'] as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description'] as String,
      encryptedCredential: map['encryptedCredential'] == null ? null : map['encryptedCredential'] as String,
      endpoint: map['endpoint'],
      parameters: map['parameters'] == null ? null : pulumi.Input.decodeMapValues<ParameterSpecification>(map['parameters'], (value) => ParameterSpecification.fromMap((value as Map).cast<String, dynamic>())),
      servicePrincipalCredential: map['servicePrincipalCredential'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalCredential'] as Map).cast<String, dynamic>()),
      servicePrincipalCredentialType: map['servicePrincipalCredentialType'] == null ? null : map['servicePrincipalCredentialType'],
      servicePrincipalId: map['servicePrincipalId'] == null ? null : map['servicePrincipalId'],
      servicePrincipalKey: map['servicePrincipalKey'] == null ? null : AzureKeyVaultSecretReference.fromMap((map['servicePrincipalKey'] as Map).cast<String, dynamic>()),
      tenant: map['tenant'] == null ? null : map['tenant'],
      type: map['type'] as String,
      version: map['version'] == null ? null : map['version'] as String,
      workspaceId: map['workspaceId'] == null ? null : map['workspaceId'],
    );
  }
}

